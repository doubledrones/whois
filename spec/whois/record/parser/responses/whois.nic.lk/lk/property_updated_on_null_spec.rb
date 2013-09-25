# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.lk/lk/property_updated_on_null.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.lk.rb'

describe Whois::Record::Parser::WhoisNicLk, "property_updated_on_null.expected" do

  subject do
    file = fixture("responses", "whois.nic.lk/lk/property_updated_on_null.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#updated_on" do
    it do
      subject.updated_on.should == nil
    end
  end
end
