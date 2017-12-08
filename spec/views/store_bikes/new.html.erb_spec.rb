require 'rails_helper'

RSpec.describe "store_bikes/new", type: :view do
  before(:each) do
    assign(:store_bike, StoreBike.new(
      :store => nil,
      :bike => nil
    ))
  end

  it "renders new store_bike form" do
    render

    assert_select "form[action=?][method=?]", store_bikes_path, "post" do

      assert_select "input#store_bike_store_id[name=?]", "store_bike[store_id]"

      assert_select "input#store_bike_bike_id[name=?]", "store_bike[bike_id]"
    end
  end
end
