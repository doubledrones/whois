# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.registro.br/status_available_limited_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.registro.br'

describe Whois::Answer::Parser::WhoisRegistroBr, "status_available_limited.expected" do

  before(:each) do
    file = fixture("responses", "whois.registro.br/status_available_limited.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
end
