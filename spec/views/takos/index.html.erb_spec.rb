require 'rails_helper'

RSpec.describe "takos/index", :type => :view do
  before(:each) do
    assign(:takos, [
      Tako.create!(
        :name => "Name",
        :msg => "Msg"
      ),
      Tako.create!(
        :name => "Name",
        :msg => "Msg"
      )
    ])
  end

  it "renders a list of takos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Msg".to_s, :count => 2
  end
end
