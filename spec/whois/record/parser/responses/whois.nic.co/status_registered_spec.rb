# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.co/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.co.rb'

describe Whois::Record::Parser::WhoisNicCo, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.co/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "t.co"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "D740225-CO"
    end
  end
  describe "#status" do
    it do
      subject.status.should == ["serverDeleteProhibited", "serverTransferProhibited"]
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
      subject.created_on.should == Time.parse("2010-04-26 07:50:40 GMT")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2013-04-16 13:53:26 GMT")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2015-04-25 23:59:59 GMT")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "13"
      subject.registrar.name.should         == "MELBOURNE IT LTD"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "TWITTERREG2012"
      subject.registrant_contacts[0].name.should          == "Twitter, Inc."
      subject.registrant_contacts[0].organization.should  == "Twitter, Inc."
      subject.registrant_contacts[0].address.should       == "1355 Market Street\nSuite 900"
      subject.registrant_contacts[0].city.should          == "San Francisco"
      subject.registrant_contacts[0].zip.should           == "94103"
      subject.registrant_contacts[0].state.should         == "CA"
      subject.registrant_contacts[0].country.should       == "United States"
      subject.registrant_contacts[0].country_code.should  == "US"
      subject.registrant_contacts[0].phone.should         == "+1.4152229670"
      subject.registrant_contacts[0].fax.should           == "+1.4152220922"
      subject.registrant_contacts[0].email.should         == "domains@twitter.com"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "TWITTERADMIN2012"
      subject.admin_contacts[0].name.should          == "Domain Admin"
      subject.admin_contacts[0].organization.should  == "Twitter, Inc."
      subject.admin_contacts[0].address.should       == "1355 Market Street\nSuite 900"
      subject.admin_contacts[0].city.should          == "San Francisco"
      subject.admin_contacts[0].zip.should           == "94103"
      subject.admin_contacts[0].state.should         == "CA"
      subject.admin_contacts[0].country.should       == "United States"
      subject.admin_contacts[0].country_code.should  == "US"
      subject.admin_contacts[0].phone.should         == "+1.4152229670"
      subject.admin_contacts[0].fax.should           == "+1.4152220922"
      subject.admin_contacts[0].email.should         == "domains@twitter.com"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "TWITTERTECH2012"
      subject.technical_contacts[0].name.should          == "Tech Admin"
      subject.technical_contacts[0].organization.should  == "Twitter, Inc."
      subject.technical_contacts[0].address.should       == "1355 Market Street\nSuite 900"
      subject.technical_contacts[0].city.should          == "San Francisco"
      subject.technical_contacts[0].zip.should           == "94103"
      subject.technical_contacts[0].state.should         == "CA"
      subject.technical_contacts[0].country.should       == "United States"
      subject.technical_contacts[0].country_code.should  == "US"
      subject.technical_contacts[0].phone.should         == "+1.4152229670"
      subject.technical_contacts[0].fax.should           == "+1.4152220922"
      subject.technical_contacts[0].email.should         == "domains-tech@twitter.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.p34.dynect.net"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.p34.dynect.net"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.p34.dynect.net"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.p34.dynect.net"
    end
  end
end
