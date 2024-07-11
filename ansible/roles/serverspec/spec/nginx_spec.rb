require 'serverspec'
require 'coderay'
require 'rspec/core'

# 서버와 연결 설정
set :backend, :exec

# 테스트 시작
describe "Nginx configuration" do
  # Nginx 서비스가 실행 중인지 확인
  describe service('nginx') do
    it { should be_enabled }
    it { should be_running }
  end

  # 기본 포트 80에서 Nginx가 요청을 받을 수 있는지 확인
  describe port(80) do
    it { should be_listening }
  end

  # /usr/test 경로가 제대로 설정되었는지 확인
  describe file('/usr/test') do
    it { should exist }
    it { should be_directory }
  end
end

# HTML 보고서 생성 설정
RSpec.configure do |c|
  c.add_formatter 'Rspec::Core::Formatters::HtmlFormatter', '/root/serverspec_report.html'
end
