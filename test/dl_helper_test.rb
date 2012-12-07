require File.expand_path("../test_helper", __FILE__)

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

  context 'malicious definition list' do
    setup do
      @person = OpenStruct.new(name: '<script>alert("John")</alert>', surname: '<script>alert("Doe")</alert>')
      concat(definition_list_for(@person, class: 'easy2') do |d|
        d.item :name
        d.item :surname
      end)
    end

    should 'escape html tags' do
      assert_select '.easy2 dd', "&lt;script&gt;alert(&quot;John&quot;)&lt;/alert&gt;"
    end
  end

end