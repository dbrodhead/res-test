require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :period => "MyString",
      :trade => "MyString",
      :instructor => "MyString",
      :activity => "MyText",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_period[name=?]", "event[period]"
      assert_select "input#event_trade[name=?]", "event[trade]"
      assert_select "input#event_instructor[name=?]", "event[instructor]"
      assert_select "textarea#event_activity[name=?]", "event[activity]"
      assert_select "input#event_location[name=?]", "event[location]"
    end
  end
end
