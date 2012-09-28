require 'test_helper'

class DlHelperTest < ActionView::TestCase

  context '' do
    setup do
      @person = OpenStruct.new(name: 'John', surname: 'Doe')
      concat(definition_list_for(@person, class: 'easy') do |d|
        d.item :name
        d.item :surname
      end)
    end

    should "have 'easy' class" do
      assert_select 'dl.easy'
    end

    should "have 2 <dt> tags" do
      assert_select 'dl dt', 2
    end

    should "have 2 <dd> tags" do
      assert_select 'dl dd', 2
    end
  end

end