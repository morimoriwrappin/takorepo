require 'rails_helper'

RSpec.describe "ikas/index", :type => :view do
  before(:each) do
    assign(:ikas, [
      Ika.create!(
        :title => "Title",
        :description => "Description",
        :background => ""
      ),
      Ika.create!(
        :title => "Title",
        :description => "Description",
        :background => ""
      )
    ])
  end

  it "renders a list of ikas" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
