require 'spec_helper'
require 'whois/record/contact'


describe Whois::Record::Contact do

  it "inherits from SuperStruct" do
    described_class.ancestors.should include(SuperStruct)
  end


  describe "#initialize" do
    it "accepts an empty value" do
      lambda do
        i = described_class.new
        i.id.should be_nil
      end.should_not raise_error
    end

    it "accepts an empty hash" do
      lambda do
        i = described_class.new({})
        i.id.should be_nil
      end.should_not raise_error
    end

    # it "initializes a new instance from given params" do
    #   i = described_class.new(10, described_class::TYPE_REGISTRANT, "John Doe", nil)

    #   i.id.should == 10
    #   i.type.should == described_class::TYPE_REGISTRANT
    #   i.name.should == "John Doe"
    #   i.organization.should be_nil
    # end

    it "initializes a new instance from given hash" do
      i = described_class.new(:id => 10, :name => "John Doe", :type => described_class::TYPE_REGISTRANT)

      i.id.should == 10
      i.type.should == described_class::TYPE_REGISTRANT
      i.name.should == "John Doe"
      i.organization.should be_nil
    end

    it "initializes a new instance from given block" do
      i = described_class.new do |c|
        c.id    = 10
        c.type  = described_class::TYPE_REGISTRANT
        c.name  = "John Doe"
      end

      i.id.should == 10
      i.type.should == described_class::TYPE_REGISTRANT
      i.name.should == "John Doe"
      i.organization.should be_nil
    end
  end

end
