require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :period => "Period",
      :trade => "Trade",
      :instructor => "Instructor",
      :activity => "MyText",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Period/)
    rendered.should match(/Trade/)
    rendered.should match(/Instructor/)
    rendered.should match(/MyText/)
    rendered.should match(/Location/)
  end
end
