require 'spec_helper'

describe "days/new" do
  before(:each) do
    assign(:day, stub_model(Day,
      :weekday => "MyString",
      :details => "MyText"
    ).as_new_record)
  end

  it "renders new day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", days_path, "post" do
      assert_select "input#day_weekday[name=?]", "day[weekday]"
      assert_select "textarea#day_details[name=?]", "day[details]"
    end
  end
end
