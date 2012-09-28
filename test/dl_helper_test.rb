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
  end

end