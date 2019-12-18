require "spec_helper"

set :docker_image, "minimum2scp/ruby-binary:test_sid-amd64_2.7.0-preview3"

describe "platform=sid-amd64 version=2.7.0-preview3" do
  describe file('/etc/debian_version') do
    its(:content){ should eq "bullseye/sid\n" }
  end

  describe command("RBENV_VERSION=2.7.0-preview3 ruby -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.7.0preview3 (2019-11-23 master b563439274) [x86_64-linux]\n" }
  end

  describe command("RBENV_VERSION=2.7.0-preview3 gem -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "3.1.1\n" }
  end

  describe command("RBENV_VERSION=2.7.0-preview3 bundle -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "Bundler version 2.1.1\n" }
  end

  describe command("RBENV_VERSION=2.7.0-preview3 gem list") do
    let(:login_shell){ true }
    its(:stdout){ should match /^pry \(/ }
  end

  describe command("RBENV_VERSION=2.7.0-preview3 ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should match /^OpenSSL 1\.1\.1/ }
  end

  describe command("RBENV_VERSION=2.7.0-preview3 ruby -rrbconfig -e 'puts RbConfig::CONFIG[\"LIBRUBY_RELATIVE\"]'") do
    let(:login_shell){ true }
    its(:stdout){ should eq "yes\n" }
  end
end

