require 'spec_helper'

describe "trades/new" do
  before(:each) do
    assign(:trade, stub_model(Trade,
      :trade => "MyString",
      :mosid => 1
    ).as_new_record)
  end

  it "renders new trade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trades_path, "post" do
      assert_select "input#trade_trade[name=?]", "trade[trade]"
      assert_select "input#trade_mosid[name=?]", "trade[mosid]"
    end
  end
end
