# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.io/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.io.rb'

describe Whois::Record::Parser::WhoisNicIo, "status_available.expected" do

  subject do
    file = fixture("responses", "whois.nic.io/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      lambda { subject.disclaimer }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "u34jedzcq.io"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :available
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == true
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == false
    end
  end
  describe "#created_on" do
    it do
      lambda { subject.created_on }.should raise_error(Whois::AttributeNotSupported)
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
  describe "#registrar" do
    it do
      lambda { subject.registrar }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should == []
    end
  end
  describe "#admin_contacts" do
    it do
      lambda { subject.admin_contacts }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#technical_contacts" do
    it do
      lambda { subject.technical_contacts }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should == []
    end
  end
end
