# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe users.where { username = 'root' } do
    it { should exist }
  end
end

describe port('0.0.0.0', 80) do
  it { should be_listening }
end

describe directory('/var/www/html') do
  it { should be_directory }
end

describe command('curl localhost') do
  its('stdout') { should eq  "Hello World !!"}
end
