require 'rails_helper'

RSpec.describe "ikas/edit", :type => :view do
  before(:each) do
    @ika = assign(:ika, Ika.create!(
      :title => "MyString",
      :description => "MyString",
      :background => ""
    ))
  end

  it "renders the edit ika form" do
    render

    assert_select "form[action=?][method=?]", ika_path(@ika), "post" do

      assert_select "input#ika_title[name=?]", "ika[title]"

      assert_select "input#ika_description[name=?]", "ika[description]"

      assert_select "input#ika_background[name=?]", "ika[background]"
    end
  end
end
