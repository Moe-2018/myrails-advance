require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  let(:event) {
    Event.create!(
      title: "MyString",
      description: "MyString",
      holder: "MyString",
      relevant: "MyString",
      team: "MyString"
    )
  }

  before(:each) do
    assign(:event, event)
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(event), "post" do

      assert_select "input[name=?]", "event[title]"

      assert_select "input[name=?]", "event[description]"

      assert_select "input[name=?]", "event[holder]"

      assert_select "input[name=?]", "event[relevant]"

      assert_select "input[name=?]", "event[team]"
    end
  end
end
