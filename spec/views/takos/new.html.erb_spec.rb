require 'rails_helper'

RSpec.describe "takos/new", :type => :view do
  before(:each) do
    assign(:tako, Tako.new(
      :name => "MyString",
      :msg => "MyString"
    ))
  end

  it "renders new tako form" do
    render

    assert_select "form[action=?][method=?]", takos_path, "post" do

      assert_select "input#tako_name[name=?]", "tako[name]"

      assert_select "input#tako_msg[name=?]", "tako[msg]"
    end
  end
end
