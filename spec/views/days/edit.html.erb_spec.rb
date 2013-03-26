require 'spec_helper'

describe "days/edit" do
  before(:each) do
    @day = assign(:day, stub_model(Day,
      :weekday => "MyString",
      :details => "MyText"
    ))
  end

  it "renders the edit day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", day_path(@day), "post" do
      assert_select "input#day_weekday[name=?]", "day[weekday]"
      assert_select "textarea#day_details[name=?]", "day[details]"
    end
  end
end
