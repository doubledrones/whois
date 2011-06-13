#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2011 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base'
require 'whois/record/parser/scanners/verisign'


module Whois
  class Record
    class Parser

      #
      # = whois.crsnic.net parser
      #
      # Parser for the whois.crsnic.net server.
      #
      class WhoisCrsnicNet < Base
        include Features::Ast

        property_supported :disclaimer do
          node("Disclaimer")
        end


        property_supported :domain do
          node("Domain Name") { |raw| raw.downcase }
        end

        property_not_supported :domain_id



        property_supported :referral_whois do
          node("Whois Server")
        end

        property_supported :referral_url do
          node("Referral URL") do |raw|
            last_useful_item(raw)
          end
        end


        property_supported :status do
          node("Status")
        end

        property_supported :available? do
          node("Registrar").nil?
        end

        property_supported :registered? do
          !available?
        end


        property_supported :created_on do
          node("Creation Date") { |raw| Time.parse(raw) }
        end

        property_supported :updated_on do
          node("Updated Date") { |raw| Time.parse(raw) }
        end

        property_supported :expires_on do
          node("Expiration Date") { |raw| Time.parse(raw) }
        end


        property_supported :registrar do
          node("Registrar") do |raw|
            Whois::Record::Registrar.new(:name => last_useful_item(raw), :organization => last_useful_item(raw), :url => referral_url)
          end
        end


        property_supported :nameservers do
          Array.wrap(node("Name Server")).reject { |value| value =~ / / }.map do |name|
            Record::Nameserver.new(name.downcase)
          end
        end

        property_supported :registration_service_provider do
          if content_for_scanner =~ /Registration Service Provider:\s+(.*)\n/
            $1
          end
        end

        # Initializes a new {Scanners::Verisign} instance
        # passing the {Whois::Record::Parser::Base#content_for_scanner}
        # and calls +parse+ on it.
        #
        # @return [Hash]
        def parse
          Scanners::Verisign.new(content_for_scanner).parse
        end


        protected

          # In case of "SPAM Response", the response contains more than one item
          # for the same value and the value becomes an Array.
          def last_useful_item(values)
            values.is_a?(Array) ? values.last : values
          end

      end

    end
  end
end
