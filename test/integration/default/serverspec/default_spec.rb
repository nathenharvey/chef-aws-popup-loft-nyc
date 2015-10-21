require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'is awesome' do
    expect(true).to be true
  end

  # it 'is running' do
  #   expect(service 'apache2').to be_running
  # end

  # it 'is installed' do
  #   expect(package 'apache2').to be_installed
  # end

  it 'is listening on the desired port' do
    expect(port 80).to be_listening
  end

  it 'responds to an http request' do
    expect(Net::HTTP.get_response(URI('http://localhost')).code).to eq '200'
  end
end
