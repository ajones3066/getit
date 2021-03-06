# encoding: UTF-8
require 'test_helper'
class Sfx4SolrSearchNsTest < ActiveSupport::TestCase
  include SearchMethods::Sfx4Solr::Ns
  test "Sfx4 Base NS" do
    if Sfx4::Ns::Base.connection_configured?
      assert_equal Sfx4::Ns::Base, SearchMethods::Sfx4Solr::Ns.sfx4_base
    end
  end

  test "fetch urls? NS" do
    if Sfx4::Ns::Base.connection_configured?
      assert SearchMethods::Sfx4Solr::Ns.fetch_urls?
    end
  end

  test "sfx4solr title contains search NS" do
    VCR.use_cassette('sfx4solr title contains search NS') do
      query = "economist"
      search_type = "contains"
      first_result = "De Economist"
      assert_equal first_result, _search_by_title(query, search_type).hits.first.stored(:title_display)
    end
  end

  test "sfx4solr title starts with search NS" do
    VCR.use_cassette('sfx4solr title starts with search NS') do
      query = "Journal of"
      search_type = "begins"
      first_result = "Journal of Anthropology"
      assert_equal first_result, _search_by_title(query, search_type).hits.first.stored(:title_display)
    end
  end

  test "sfx4solr title exact search NS" do
    VCR.use_cassette('sfx4solr title exact search NS') do
      query = 'The New Yorker'
      search_type = 'exact'
      first_result = 'The New - Yorker (1836-1841)‎'
      assert_equal first_result, _search_by_title(query, search_type).hits.first.stored(:title_display)
    end
  end
end
