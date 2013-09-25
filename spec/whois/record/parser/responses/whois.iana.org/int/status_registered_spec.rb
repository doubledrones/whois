# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.iana.org/int/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.iana.org.rb'

describe Whois::Record::Parser::WhoisIanaOrg, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.iana.org/int/status_registered.txt")
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
      subject.created_on.should == Time.parse("1997-08-26")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2012-08-07")
    end
  end
  describe "#expires_on" do
    it do
      lambda { subject.expires_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == nil
      subject.registrant_contacts[0].name.should          == nil
      subject.registrant_contacts[0].organization.should  == "North Atlantic Treaty Organization"
      subject.registrant_contacts[0].address.should       == "Blvd Leopold III"
      subject.registrant_contacts[0].city.should          == "1110 Brussels"
      subject.registrant_contacts[0].zip.should           == "Brussels"
      subject.registrant_contacts[0].country.should       == "Belgium"
      subject.registrant_contacts[0].country_code.should  == nil
      subject.registrant_contacts[0].phone.should         == nil
      subject.registrant_contacts[0].fax.should           == nil
      subject.registrant_contacts[0].email.should         == nil
      subject.registrant_contacts[0].created_on.should    == nil
      subject.registrant_contacts[0].updated_on.should    == nil
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == nil
      subject.admin_contacts[0].name.should          == "Aidan Murdock"
      subject.admin_contacts[0].organization.should  == nil
      subject.admin_contacts[0].address.should       == "SHAPE"
      subject.admin_contacts[0].city.should          == "NCIA SP SDD SAS NAR"
      subject.admin_contacts[0].zip.should           == "Mons Hainaut 7010"
      subject.admin_contacts[0].country.should       == "Belgium"
      subject.admin_contacts[0].country_code.should  == nil
      subject.admin_contacts[0].phone.should         == "+32 65 44 9168"
      subject.admin_contacts[0].fax.should           == "+32 65 44 9480"
      subject.admin_contacts[0].email.should         == "aidan.murdock@ncia.nato.int"
      subject.admin_contacts[0].created_on.should    == nil
      subject.admin_contacts[0].updated_on.should    == nil
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == nil
      subject.technical_contacts[0].name.should          == "Francesco Conserva"
      subject.technical_contacts[0].organization.should  == nil
      subject.technical_contacts[0].address.should       == "SHAPE"
      subject.technical_contacts[0].city.should          == "NCIA SP SMD ENT EMA"
      subject.technical_contacts[0].zip.should           == "Mons Hainaut 7010"
      subject.technical_contacts[0].country.should       == "Belgium"
      subject.technical_contacts[0].country_code.should  == nil
      subject.technical_contacts[0].phone.should         == "+32 65 44 7534"
      subject.technical_contacts[0].fax.should           == "+32 65 44 7556"
      subject.technical_contacts[0].email.should         == "francesco.conserva@ncia.nato.int"
      subject.technical_contacts[0].created_on.should    == nil
      subject.technical_contacts[0].updated_on.should    == nil
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(7).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "globe.nc3a.nato.int"
      subject.nameservers[0].ipv4.should == "192.41.140.178"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "max.nra.nato.int"
      subject.nameservers[1].ipv4.should == "192.101.252.69"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "maxima.nra.nato.int"
      subject.nameservers[2].ipv4.should == "193.110.130.68"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns.namsa.nato.int"
      subject.nameservers[3].ipv4.should == "193.168.11.15"
      subject.nameservers[4].should be_a(Whois::Record::Nameserver)
      subject.nameservers[4].name.should == "ns.saclantc.nato.int"
      subject.nameservers[4].ipv4.should == "192.106.197.1"
      subject.nameservers[5].should be_a(Whois::Record::Nameserver)
      subject.nameservers[5].name.should == "ns1.cs.ucl.ac.uk"
      subject.nameservers[5].ipv4.should == "128.16.5.32"
      subject.nameservers[6].should be_a(Whois::Record::Nameserver)
      subject.nameservers[6].name.should == "ns1.drenet.dnd.ca"
      subject.nameservers[6].ipv4.should == "131.136.242.3"
    end
  end
end