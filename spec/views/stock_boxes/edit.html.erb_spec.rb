require 'spec_helper'

describe "stock_boxes/edit" do
  before(:each) do
    @stock_box = assign(:stock_box, stub_model(StockBox,
      :number => "MyString",
      :positionX => 1.5,
      :positionY => 1.5,
      :positionZ => 1.5,
      :quantity => 1
    ))
  end

  it "renders the edit stock_box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stock_box_path(@stock_box), "post" do
      assert_select "input#stock_box_number[name=?]", "stock_box[number]"
      assert_select "input#stock_box_positionX[name=?]", "stock_box[positionX]"
      assert_select "input#stock_box_positionY[name=?]", "stock_box[positionY]"
      assert_select "input#stock_box_positionZ[name=?]", "stock_box[positionZ]"
      assert_select "input#stock_box_quantity[name=?]", "stock_box[quantity]"
    end
  end
end
