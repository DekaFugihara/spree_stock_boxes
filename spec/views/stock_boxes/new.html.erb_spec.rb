require 'spec_helper'

describe "stock_boxes/new" do
  before(:each) do
    assign(:stock_box, stub_model(StockBox,
      :number => "MyString",
      :positionX => 1.5,
      :positionY => 1.5,
      :positionZ => 1.5,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new stock_box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stock_boxes_path, "post" do
      assert_select "input#stock_box_number[name=?]", "stock_box[number]"
      assert_select "input#stock_box_positionX[name=?]", "stock_box[positionX]"
      assert_select "input#stock_box_positionY[name=?]", "stock_box[positionY]"
      assert_select "input#stock_box_positionZ[name=?]", "stock_box[positionZ]"
      assert_select "input#stock_box_quantity[name=?]", "stock_box[quantity]"
    end
  end
end
