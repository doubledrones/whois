# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.enom.com/property_contacts_almost_empty.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.enom.com.rb'

describe Whois::Record::Parser::WhoisEnomCom, "property_contacts_almost_empty.expected" do

  subject do
    file = fixture("responses", "whois.enom.com/property_contacts_almost_empty.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].name.should         == "Tony Kerr"
      subject.registrant_contacts[0].organization.should == ""
      subject.registrant_contacts[0].address.should      == ""
      subject.registrant_contacts[0].city.should         == ""
      subject.registrant_contacts[0].zip.should          == ""
      subject.registrant_contacts[0].state.should        == ""
      subject.registrant_contacts[0].country_code.should == "US"
      subject.registrant_contacts[0].phone.should        == ""
      subject.registrant_contacts[0].fax.should          == ""
      subject.registrant_contacts[0].email.should        == ""
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].name.should         == "Tony Kerr"
      subject.technical_contacts[0].organization.should == ""
      subject.technical_contacts[0].address.should      == ""
      subject.technical_contacts[0].city.should         == ""
      subject.technical_contacts[0].zip.should          == ""
      subject.technical_contacts[0].state.should        == ""
      subject.technical_contacts[0].country_code.should == "US"
      subject.technical_contacts[0].phone.should        == "+1."
      subject.technical_contacts[0].fax.should          == ""
      subject.technical_contacts[0].email.should        == "tkerr@sportimeny.com"
    end
  end
end