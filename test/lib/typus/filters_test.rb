require "test_helper"

class FiltersTest < ActiveSupport::TestCase

  include Typus::Filters

  context "add_predefined_filter" do

    should "work without args" do
      add_predefined_filter()
      assert_equal [], @predefined_filters
    end

    should "work with args" do
      add_predefined_filter("something")
      assert_equal [["something"]], @predefined_filters
    end

  end

end
