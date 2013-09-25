# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tr/property_registrant_contact_outside_citynextline.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.tr.rb'

describe Whois::Record::Parser::WhoisNicTr, "property_registrant_contact_outside_citynextline.expected" do

  subject do
    file = fixture("responses", "whois.nic.tr/property_registrant_contact_outside_citynextline.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == nil
      subject.registrant_contacts[0].name.should          == "Google Inc."
      subject.registrant_contacts[0].organization.should  == nil
      subject.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway\nMountain View CA"
      subject.registrant_contacts[0].city.should          == nil
      subject.registrant_contacts[0].zip.should           == nil
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country.should       == "United States of America"
      subject.registrant_contacts[0].country_code.should  == nil
      subject.registrant_contacts[0].phone.should         == "+ 1-650-2530000-"
      subject.registrant_contacts[0].fax.should           == "+ 1-650-2530001-"
      subject.registrant_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
end
