require 'spec_helper'

describe "stock_boxes/show" do
  before(:each) do
    @stock_box = assign(:stock_box, stub_model(StockBox,
      :number => "Number",
      :positionX => 1.5,
      :positionY => 1.5,
      :positionZ => 1.5,
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
