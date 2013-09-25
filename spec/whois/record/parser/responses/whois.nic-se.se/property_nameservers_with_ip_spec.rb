# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic-se.se/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic-se.se.rb'

describe Whois::Record::Parser::WhoisNicSeSe, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.nic-se.se/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns2.loopia.se"
      subject.nameservers[0].ipv4.should == "93.188.0.21"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns4.loopia.se"
      subject.nameservers[1].ipv4.should == "93.188.0.20"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.loopia.se"
      subject.nameservers[2].ipv4.should == "93.188.0.21"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns1.loopia.se"
      subject.nameservers[3].ipv4.should == "93.188.0.20"
    end
  end
end
