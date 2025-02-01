## 프로메테우스 헬름차트
kube-prometheus-stack

### 수정 후 테스트

- 문법 테스트

```bash
helm lint ./kube-prometheus-stack
```

- 템플릿 테스트

```bash
helm template prometheus ./kube-prometheus-stack -n str-monitoring
```

- 특정 파일만 테스트: `--show-only` 옵션 사용

```bash
helm template prometheus ./kube-prometheus-stack --show-only templates/prometheus/additionalPrometheusRules.yaml
```

### 설치

```bash
helm install prometheus ./kube-prometheus-stack -n str-monitoring
```

### 업그레이드

```bash
helm upgrade --install prometheus ./kube-prometheus-stack -n str-monitoring
```

### 삭제

```bash
helm uninstall prometheus -n str-monitoring
```
