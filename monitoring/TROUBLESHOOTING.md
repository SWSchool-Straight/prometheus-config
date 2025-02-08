# 모니터링 알림 설정 및 문제 해결 가이드

## 목차
- [알림 설정 방법](#알림-설정-방법)
- [알림 테스트 방법](#알림-테스트-방법)
- [자주 발생하는 문제와 해결 방법](#자주-발생하는-문제와-해결-방법)

## 알림 설정 방법

### 1. Prometheus 알림 규칙 설정
```yaml
# kube-prometheus-stack/values.yaml의 additionalPrometheusRulesMap 섹션에 규칙 추가
additionalPrometheusRulesMap:
  service-rules:
    groups:
      - name: service.rules
        rules:
          - alert: ServiceAlert
            expr: <PromQL 표현식>
            for: <지속시간>
            labels:
              severity: <critical|warning>  # critical은 긴급 알림으로 처리
              class: <서비스명>            # argocd, auth, chatbot 등
            annotations:
              summary: "알림 요약"
              description: "상세 설명"
              action_guide: |
                조치 가이드 작성
                1. 첫 번째 조치
                2. 두 번째 조치
```

### 2. Slack 알림 설정
1. Slack 웹훅 URL 설정
```yaml
config:
  global:
    resolve_timeout: 5m
    slack_api_url: 'https://hooks.slack.com/services/YOUR/SLACK/WEBHOOK'
```

2. 알림 라우팅 설정
```yaml
route:
  group_by: ['alertname', 'namespace', 'severity']
  group_wait: 45s
  group_interval: 10m
  repeat_interval: 8h
  receiver: 'default-slack-alert'
  routes:
  - receiver: 'critical-slack-alert'
    matchers:
    - severity = "critical"
    group_wait: 30s
    repeat_interval: 4h
  - receiver: 'argocd-slack-alert'
    matchers:
    - class = "argocd"
  - receiver: 'chatbot-slack-alert'
    matchers:
    - class = "chatbot"
  - receiver: 'auth-slack-alert'
    matchers:
    - class = "auth"
```

### 3. 알림 메시지 형식
1. 긴급(Critical) 알림
```
🚨 [긴급] {알림명}
심각도: 🔴 긴급
문제 발생: {네임스페이스}/{파드명}
알림 내용: {summary}

상세 설명:
{description}

조치 가이드:
{action_guide}

발생 시간: {시작시간}
```

2. 일반 알림
```
[상태] 심각도 - {알림명}
심각도: 🟡 경고 / 🔴 심각 / ℹ️ 정보
문제 발생: {네임스페이스}/{파드명}
알림 내용: {summary}

상세 설명:
{description}

조치 가이드:
{action_guide}

발생 시간: {시작시간}
```

## 알림 테스트 방법

### 1. ArgoCD 알림 테스트
```bash
# 애플리케이션 Health 상태 테스트 (critical 알림 발생)
kubectl patch application <app-name> -n argocd --type merge -p '{"status":{"health":{"status":"Degraded"}}}'
```

### 2. Auth 서비스 알림 테스트
```bash
# 파드 다운 테스트 (critical 알림 발생)
kubectl delete pod -n str-dev | grep auth-be

# 메모리 사용량 테스트 (warning 알림 발생)
kubectl exec -it <auth-pod> -n str-dev -- stress-ng --vm 1 --vm-bytes 80%
```

### 3. Chatbot 서비스 알림 테스트
```bash
# 파드 다운 테스트 (critical 알림 발생)
kubectl delete pod -n str-dev | grep chatbot-be

# CPU 부하 테스트 (warning 알림 발생)
kubectl exec -it <chatbot-pod> -n str-dev -- stress-ng --cpu 4 --timeout 300s
```

## 자주 발생하는 문제와 해결 방법

### 1. 알림이 전송되지 않는 경우
- Alertmanager 설정 확인
```bash
# Alertmanager 파드 상태 확인
kubectl get pods -n str-monitoring | grep alertmanager

# 설정 확인
kubectl get secret alertmanager-prometheus-kube-prometheus-alertmanager -n str-monitoring -o yaml

# 로그 확인
kubectl logs alertmanager-prometheus-kube-prometheus-alertmanager-0 -n str-monitoring
```

### 2. 특정 서비스 알림만 안 오는 경우
- 라우팅 규칙 확인
  - severity와 class 라벨이 올바르게 설정되었는지 확인
  - 해당 서비스의 receiver가 올바르게 구성되었는지 확인

### 3. 알림 메시지 형식이 깨지는 경우
- 템플릿 문법 확인
- 특수문자 이스케이프 처리 확인
- action_guide 들여쓰기 확인

## 참고 사항

- 모든 critical 알림은 30초 내에 발송됩니다.
- warning 알림은 45초 동안 그룹화되어 발송됩니다.
- 해결된 문제는 녹색으로 표시되어 알림이 발송됩니다.
- action_guide는 가능한 한 구체적인 명령어와 절차를 포함하도록 작성합니다.
