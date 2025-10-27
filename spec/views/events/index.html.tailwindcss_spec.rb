require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        title: "Title",
        description: "Description",
        holder: "Holder",
        relevant: "Relevant",
        team: "Team"
      ),
      Event.create!(
        title: "Title",
        description: "Description",
        holder: "Holder",
        relevant: "Relevant",
        team: "Team"
      )
    ])
  end

  it "renders a list of events" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Holder".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Relevant".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Team".to_s), count: 2
  end
end
