require 'spec_helper'

describe "trades/index" do
  before(:each) do
    assign(:trades, [
      stub_model(Trade,
        :trade => "Trade",
        :mosid => 1
      ),
      stub_model(Trade,
        :trade => "Trade",
        :mosid => 1
      )
    ])
  end

  it "renders a list of trades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trade".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
