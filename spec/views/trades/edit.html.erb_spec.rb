require 'spec_helper'

describe "trades/edit" do
  before(:each) do
    @trade = assign(:trade, stub_model(Trade,
      :trade => "MyString",
      :mosid => 1
    ))
  end

  it "renders the edit trade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trade_path(@trade), "post" do
      assert_select "input#trade_trade[name=?]", "trade[trade]"
      assert_select "input#trade_mosid[name=?]", "trade[mosid]"
    end
  end
end
