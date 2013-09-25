# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dot.cf/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.dot.cf.rb'

describe Whois::Record::Parser::WhoisDotCf, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.dot.cf/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2013-03-28 00:00:00")
    end
  end
  describe "#updated_on" do
    it do
      lambda { subject.updated_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should == nil
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(5).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "dns5.nettica.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "dns1.nettica.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "dns2.nettica.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "dns3.nettica.com"
      subject.nameservers[4].should be_a(Whois::Record::Nameserver)
      subject.nameservers[4].name.should == "dns4.nettica.com"
    end
  end
end
