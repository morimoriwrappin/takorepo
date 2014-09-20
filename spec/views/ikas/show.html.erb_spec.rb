require 'rails_helper'

RSpec.describe "ikas/show", :type => :view do
  before(:each) do
    @ika = assign(:ika, Ika.create!(
      :title => "Title",
      :description => "Description",
      :background => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
