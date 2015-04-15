require 'spec_helper'

describe "stock_boxes/index" do
  before(:each) do
    assign(:stock_boxes, [
      stub_model(StockBox,
        :number => "Number",
        :positionX => 1.5,
        :positionY => 1.5,
        :positionZ => 1.5,
        :quantity => 1
      ),
      stub_model(StockBox,
        :number => "Number",
        :positionX => 1.5,
        :positionY => 1.5,
        :positionZ => 1.5,
        :quantity => 1
      )
    ])
  end

  it "renders a list of stock_boxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
