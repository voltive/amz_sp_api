=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'

describe AmzSpApi::CatalogItemsV0::Configuration do
  let(:config) { AmzSpApi::CatalogItemsV0::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://sellingpartnerapi-na.amazon.com/")
    # AmzSpApi::CatalogItemsV0.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://sellingpartnerapi-na.amazon.com/")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://sellingpartnerapi-na.amazon.com/")
      end
    end
  end
end
