require 'rails_helper'

RSpec.describe "ikas/new", :type => :view do
  before(:each) do
    assign(:ika, Ika.new(
      :title => "MyString",
      :description => "MyString",
      :background => ""
    ))
  end

  it "renders new ika form" do
    render

    assert_select "form[action=?][method=?]", ikas_path, "post" do

      assert_select "input#ika_title[name=?]", "ika[title]"

      assert_select "input#ika_description[name=?]", "ika[description]"

      assert_select "input#ika_background[name=?]", "ika[background]"
    end
  end
end
