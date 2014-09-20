require 'rails_helper'

RSpec.describe "takos/edit", :type => :view do
  before(:each) do
    @tako = assign(:tako, Tako.create!(
      :name => "MyString",
      :msg => "MyString"
    ))
  end

  it "renders the edit tako form" do
    render

    assert_select "form[action=?][method=?]", tako_path(@tako), "post" do

      assert_select "input#tako_name[name=?]", "tako[name]"

      assert_select "input#tako_msg[name=?]", "tako[msg]"
    end
  end
end
