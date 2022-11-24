set :docker_image, "minimum2scp/ruby-binary:test_sid-amd64_3.0.5"

describe "platform=sid-amd64 version=3.0.5" do
  include_context 'openssl 1.1.1'
  it_behaves_like 'debian sid'
  it_behaves_like 'ruby 3.0.5'
end

