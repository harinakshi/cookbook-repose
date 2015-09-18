require 'minitest/spec'

describe_recipe 'repose::filter-ip-identity' do
  it 'sets up ip-identity.cfg.xml' do
    file('/etc/repose/ip-identity.cfg.xml').must_exist.with(
      :owner, node['repose']['owner']).and(
        :group, node['repose']['group']).and(
          :mode, '0644')
  end
end
