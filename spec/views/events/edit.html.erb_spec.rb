require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :period => "MyString",
      :trade => "MyString",
      :instructor => "MyString",
      :activity => "MyText",
      :location => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_period[name=?]", "event[period]"
      assert_select "input#event_trade[name=?]", "event[trade]"
      assert_select "input#event_instructor[name=?]", "event[instructor]"
      assert_select "textarea#event_activity[name=?]", "event[activity]"
      assert_select "input#event_location[name=?]", "event[location]"
    end
  end
end
