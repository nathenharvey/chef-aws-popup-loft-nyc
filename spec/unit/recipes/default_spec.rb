#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on an ubuntu platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(:platform => 'ubuntu', :version => '14.04')
      runner.converge(described_recipe)
    end

    it 'installs apache' do
      expect(chef_run).to install_package 'apache2'
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  context 'When all attributes are default, on an centos platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(:platform => 'centos', :version => '6.4')
      runner.converge(described_recipe)
    end

    it 'installs apache' do
      expect(chef_run).to install_package 'httpd'
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
