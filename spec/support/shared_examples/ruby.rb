RSpec.shared_examples 'ruby 3.1.0' do
  describe command("RBENV_VERSION=3.1.0 ruby -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [x86_64-linux]\n" }
  end

  describe command("RBENV_VERSION=3.1.0 gem -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "3.3.6\n" }
  end

  describe command("RBENV_VERSION=3.1.0 gem list --exact bundler") do
    let(:login_shell){ true }
    its(:stdout){ should eq "bundler (default: 2.3.6, 1.17.3)\n" }
  end

  describe command("RBENV_VERSION=3.1.0 gem list") do
    let(:login_shell){ true }
    its(:stdout){ should match /^pry \(/ }
  end

  describe command("RBENV_VERSION=3.1.0 ruby -rrbconfig -e 'puts RbConfig::CONFIG[\"LIBRUBY_RELATIVE\"]'") do
    let(:login_shell){ true }
    its(:stdout){ should eq "yes\n" }
  end

  describe command("RBENV_VERSION=3.1.0 ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should start_with("OpenSSL #{openssl_version}") }
  end
end

RSpec.shared_examples 'ruby 3.0.3' do
  describe command("RBENV_VERSION=3.0.3 ruby -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 3.0.3p157 (2021-11-24 revision 3fb7d2cadc) [x86_64-linux]\n" }
  end

  describe command("RBENV_VERSION=3.0.3 gem -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "3.3.6\n" }
  end

  describe command("RBENV_VERSION=3.0.3 gem list --exact bundler") do
    let(:login_shell){ true }
    its(:stdout){ should eq "bundler (default: 2.3.6, 1.17.3)\n" }
  end

  describe command("RBENV_VERSION=3.0.3 gem list") do
    let(:login_shell){ true }
    its(:stdout){ should match /^pry \(/ }
  end

  describe command("RBENV_VERSION=3.0.3 ruby -rrbconfig -e 'puts RbConfig::CONFIG[\"LIBRUBY_RELATIVE\"]'") do
    let(:login_shell){ true }
    its(:stdout){ should eq "yes\n" }
  end

  describe command("RBENV_VERSION=3.0.3 ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should start_with("OpenSSL #{openssl_version}") }
  end
end

RSpec.shared_examples 'ruby 2.7.5' do
  describe command("RBENV_VERSION=2.7.5 ruby -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.7.5p203 (2021-11-24 revision f69aeb8314) [x86_64-linux]\n" }
  end

  describe command("RBENV_VERSION=2.7.5 gem -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "3.3.6\n" }
  end

  describe command("RBENV_VERSION=2.7.5 gem list --exact bundler") do
    let(:login_shell){ true }
    its(:stdout){ should eq "bundler (default: 2.3.6, 1.17.3)\n" }
  end

  describe command("RBENV_VERSION=2.7.5 gem list") do
    let(:login_shell){ true }
    its(:stdout){ should match /^pry \(/ }
  end

  describe command("RBENV_VERSION=2.7.5 ruby -rrbconfig -e 'puts RbConfig::CONFIG[\"LIBRUBY_RELATIVE\"]'") do
    let(:login_shell){ true }
    its(:stdout){ should eq "yes\n" }
  end

  describe command("RBENV_VERSION=2.7.5 ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should start_with("OpenSSL #{openssl_version}") }
  end
end

RSpec.shared_examples 'ruby 2.6.9' do
  describe command("RBENV_VERSION=2.6.9 ruby -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "ruby 2.6.9p207 (2021-11-24 revision 67954) [x86_64-linux]\n" }
  end

  describe command("RBENV_VERSION=2.6.9 gem -v") do
    let(:login_shell){ true }
    its(:stdout){ should eq "3.3.6\n" }
  end

  describe command("RBENV_VERSION=2.6.9 gem list --exact bundler") do
    let(:login_shell){ true }
    its(:stdout){ should eq "bundler (default: 2.3.6, 1.17.3)\n" }
  end

  describe command("RBENV_VERSION=2.6.9 gem list") do
    let(:login_shell){ true }
    its(:stdout){ should match /^pry \(/ }
  end

  describe command("RBENV_VERSION=2.6.9 ruby -rrbconfig -e 'puts RbConfig::CONFIG[\"LIBRUBY_RELATIVE\"]'") do
    let(:login_shell){ true }
    its(:stdout){ should eq "yes\n" }
  end

  describe command("RBENV_VERSION=2.6.9 ruby -ropenssl -e 'puts OpenSSL::OPENSSL_VERSION'") do
    let(:login_shell){ true }
    its(:stdout){ should start_with("OpenSSL #{openssl_version}") }
  end
end

