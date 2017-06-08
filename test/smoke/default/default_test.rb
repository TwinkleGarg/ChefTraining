# # encoding: utf-8

# Inspec test for recipe task6::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

# This Tests if the user is present or not.
describe user('User1') do
	it { should exist }
end
  
  
describe package('clamav') do
	it { should be_installed }
end


describe file('C:\cheftask\task6\testDirectory') do
	it { should be_directory }
	it { should be_owned_by 'User1' }
end