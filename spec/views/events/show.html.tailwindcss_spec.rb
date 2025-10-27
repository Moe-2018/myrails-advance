require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    assign(:event, Event.create!(
      title: "Title",
      description: "Description",
      holder: "Holder",
      relevant: "Relevant",
      team: "Team"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Holder/)
    expect(rendered).to match(/Relevant/)
    expect(rendered).to match(/Team/)
  end
end
