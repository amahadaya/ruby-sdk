=begin
#FreeClimb API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Freeclimb::ConferenceParticipantList
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConferenceParticipantList' do
  before do
    # run before each test
    @instance = Freeclimb::ConferenceParticipantList.new
  end

  after do
    # run after each test
  end

  it 'should create an instance of ConferenceParticipantList' do
    expect(@instance).to be_instance_of(Freeclimb::ConferenceParticipantList)
  end
end
