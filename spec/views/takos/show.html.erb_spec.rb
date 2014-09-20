require 'rails_helper'

RSpec.describe "takos/show", :type => :view do
  before(:each) do
    @tako = assign(:tako, Tako.create!(
      :name => "Name",
      :msg => "Msg"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Msg/)
  end
end
