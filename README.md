# 프로메테우스 모니터링 시스템

프로메테우스를 이용하여 메트릭 수집 및 시각화를 하는 모니터링 시스템입니다.

## 설치 전 준비사항

- 프로메테우스 설치 네임스페이스: str-monitoring
- exporter, servicemonitor 설치 네임스페이스: str-monitoring


### 메트릭 수집 대상 서비스

| 서비스 | 메트릭 수집 대상 |
|--------|------------------|
| 데이터베이스 | postgresql, redis |
| gitops | argocd |
| 백엔드 서비스 | chatbot-be, auth-be |
| 검색 엔진 | elasticsearch |
| 로그 시각화 | kibana |


## 폴더 구조

```bash
.
├── install                 // 설치 스크립트
├── kube-prometheus-stack   // 프로메테우스 헬름 차트
├── exporter                // 익스포터 파일
├── servicemonitor          // 서비스 모니터링 파일
├── grafana-dashboards      // 그라파나 대시보드 파일
├── documents               // 설치 가이드
└── README.md
``` 

## 설치 방법

documents/INSTALL_GUIDE.md 파일을 참고하여 설치합니다.

## 설치 확인

```bash
kubectl get all -n str-monitoring
```

## Grafana 대시보드 설치 및 확인

grafana에 접속하여 grafana-dashboards 폴더 내의 대시보드 파일을 import하여 설치합니다.


