require 'rails_helper'

RSpec.describe "store_bicycles/new", type: :view do
  before(:each) do
    assign(:store_bicycle, StoreBicycle.new(
      :store => nil,
      :bike => nil
    ))
  end

  it "renders new store_bicycle form" do
    render

    assert_select "form[action=?][method=?]", store_bicycles_path, "post" do

      assert_select "input#store_bicycle_store_id[name=?]", "store_bicycle[store_id]"

      assert_select "input#store_bicycle_bike_id[name=?]", "store_bicycle[bike_id]"
    end
  end
end
