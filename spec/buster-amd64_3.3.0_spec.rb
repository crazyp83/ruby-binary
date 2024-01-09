set :docker_image, "minimum2scp/ruby-binary:test_buster-amd64_3.3.0"

describe "platform=buster-amd64 version=3.3.0" do
  include_context 'openssl 1.1.1'
  it_behaves_like 'debian buster'
  it_behaves_like 'ruby 3.3.0'
end

