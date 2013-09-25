# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tcinet.ru/su/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tcinet.ru.rb'

describe Whois::Record::Parser::WhoisTcinetRu, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.tcinet.ru/su/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "google.su"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == ["REGISTERED", "DELEGATED", "UNVERIFIED"]
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
      subject.created_on.should == Time.parse("2005-10-16")
    end
  end
  describe "#updated_on" do
    it do
      lambda { subject.updated_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should ==Time.parse("2010-10-16")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "RUCENTER-REG-FID"
      subject.registrar.name.should         == nil
      subject.registrar.organization.should == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      lambda { subject.registrant_contacts }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should           == nil
      subject.admin_contacts[0].name.should         == "Private Person"
      subject.admin_contacts[0].phone.should        == "+7 495 9681807"
      subject.admin_contacts[0].fax.should          == "+7 495 9681807"
      subject.admin_contacts[0].email.should        == "cis@cis.su"
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
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1073.hostgator.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns1074.hostgator.com"
    end
  end
end
