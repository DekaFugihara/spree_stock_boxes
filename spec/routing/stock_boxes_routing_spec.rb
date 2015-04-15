require "spec_helper"

describe StockBoxesController do
  describe "routing" do

    it "routes to #index" do
      get("/stock_boxes").should route_to("stock_boxes#index")
    end

    it "routes to #new" do
      get("/stock_boxes/new").should route_to("stock_boxes#new")
    end

    it "routes to #show" do
      get("/stock_boxes/1").should route_to("stock_boxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stock_boxes/1/edit").should route_to("stock_boxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stock_boxes").should route_to("stock_boxes#create")
    end

    it "routes to #update" do
      put("/stock_boxes/1").should route_to("stock_boxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stock_boxes/1").should route_to("stock_boxes#destroy", :id => "1")
    end

  end
end
