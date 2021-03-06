require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :period => "Period",
        :trade => "Trade",
        :instructor => "Instructor",
        :activity => "MyText",
        :location => "Location"
      ),
      stub_model(Event,
        :period => "Period",
        :trade => "Trade",
        :instructor => "Instructor",
        :activity => "MyText",
        :location => "Location"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Period".to_s, :count => 2
    assert_select "tr>td", :text => "Trade".to_s, :count => 2
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
