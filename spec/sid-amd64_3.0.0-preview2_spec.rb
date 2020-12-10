set :docker_image, "minimum2scp/ruby-binary:test_sid-amd64_3.0.0-preview2"

describe "platform=sid-amd64 version=3.0.0-preview2" do
  include_context 'openssl 1.1.1'
  it_behaves_like 'debian sid'
  it_behaves_like 'ruby 3.0.0-preview2'
end

