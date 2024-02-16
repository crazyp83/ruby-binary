set :docker_image, "minimum2scp/ruby-binary:test_sid-amd64_3.2.3"

describe "platform=sid-amd64 version=3.2.3" do
  include_context 'openssl 3.1.5'
  it_behaves_like 'debian sid'
  it_behaves_like 'ruby 3.2.3'
end

