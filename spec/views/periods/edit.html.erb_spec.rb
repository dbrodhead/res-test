require 'spec_helper'

describe "periods/edit" do
  before(:each) do
    @period = assign(:period, stub_model(Period,
      :number => 1,
      :weekday => "MyString"
    ))
  end

  it "renders the edit period form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", period_path(@period), "post" do
      assert_select "input#period_number[name=?]", "period[number]"
      assert_select "input#period_weekday[name=?]", "period[weekday]"
    end
  end
end
