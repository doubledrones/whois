# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.afilias-grs.info/vc/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.afilias-grs.info.rb'

describe Whois::Record::Parser::WhoisAfiliasGrsInfo, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.afilias-grs.info/vc/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "Access to CCTLD WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the Afilias registry database. The data in this record is provided by Afilias Limited for informational purposes only, and Afilias does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Afilias reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "google.vc"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "D133753-LRCC"
    end
  end
  describe "#status" do
    it do
      subject.status.should == ["CLIENT DELETE PROHIBITED", "CLIENT TRANSFER PROHIBITED", "CLIENT UPDATE PROHIBITED"]
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
      subject.created_on.should == Time.parse("2005-06-29 00:58:18 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2009-02-17 17:43:40 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2011-06-29 00:58:18 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "R22-LRCC"
      subject.registrar.name.should         == "MarkMonitor, Inc."
      subject.registrar.organization.should == nil
      subject.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should           == "mmr-2383"
      subject.registrant_contacts[0].name.should         == "DNS Admin"
      subject.registrant_contacts[0].organization.should == "Google Inc."
      subject.registrant_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      subject.registrant_contacts[0].city.should         == "Mountain View"
      subject.registrant_contacts[0].zip.should          == "94043"
      subject.registrant_contacts[0].state.should        == "CA"
      subject.registrant_contacts[0].country_code.should == "US"
      subject.registrant_contacts[0].phone.should        == "+1.6502530000"
      subject.registrant_contacts[0].fax.should          == "+1.6506188571"
      subject.registrant_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should           == "mmr-2383"
      subject.admin_contacts[0].name.should         == "DNS Admin"
      subject.admin_contacts[0].organization.should == "Google Inc."
      subject.admin_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      subject.admin_contacts[0].city.should         == "Mountain View"
      subject.admin_contacts[0].zip.should          == "94043"
      subject.admin_contacts[0].state.should        == "CA"
      subject.admin_contacts[0].country_code.should == "US"
      subject.admin_contacts[0].phone.should        == "+1.6502530000"
      subject.admin_contacts[0].fax.should          == "+1.6506188571"
      subject.admin_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should           == "mmr-2383"
      subject.technical_contacts[0].name.should         == "DNS Admin"
      subject.technical_contacts[0].organization.should == "Google Inc."
      subject.technical_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      subject.technical_contacts[0].city.should         == "Mountain View"
      subject.technical_contacts[0].zip.should          == "94043"
      subject.technical_contacts[0].state.should        == "CA"
      subject.technical_contacts[0].country_code.should == "US"
      subject.technical_contacts[0].phone.should        == "+1.6502530000"
      subject.technical_contacts[0].fax.should          == "+1.6506188571"
      subject.technical_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
