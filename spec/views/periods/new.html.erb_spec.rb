require 'spec_helper'

describe "periods/new" do
  before(:each) do
    assign(:period, stub_model(Period,
      :number => 1,
      :weekday => "MyString"
    ).as_new_record)
  end

  it "renders new period form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", periods_path, "post" do
      assert_select "input#period_number[name=?]", "period[number]"
      assert_select "input#period_weekday[name=?]", "period[weekday]"
    end
  end
end
