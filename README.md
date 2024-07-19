# DevOps

IaC를 통한 Virtual Infrastructure 구성

- 가상 환경 도구 : UTM (Mac m1 virtual box 호환 문제)
- 운영 체제 : CentOS 종료로 인한 **Rocky Linux** 사용해보기

## Local 개발 환경 구축

- 24.07.04
  UTM을 통한 Rocky Linux 9.4 aarch64 installation(m1 silicon)

## Ansible을 이용해 IaC(Infrastructure as Code) 구축

- 24.07.05
  WebServer provisioning, index page

- 24.07.11
  Todo : Serverspec을 통해 인프라 구성 도구인 Ansible test 진행
  Completed : Serverspec을 통한 VM 상의 Nginx test 완료
  Issue : rspec 인식이 안됨, nginx_spec.rb의 경로 문제인지 체크할 것, serverspec/tasks/main.yml 파일도 체크 필수!

- 24.07.12
  Todo : coderay를 통해 test 결과를 나타내는 page를 생성하고, nginx를 통해 /test로 접속 시 보여주도록 프록시 설정

- 24.07.19
  Todo : Docker Container 환경 구성, Jenkins를 활용해 CI/CD 파이프라인 구성
