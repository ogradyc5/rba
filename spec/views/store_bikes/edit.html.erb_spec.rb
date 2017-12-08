require 'rails_helper'

RSpec.describe "store_bikes/edit", type: :view do
  before(:each) do
    @store_bike = assign(:store_bike, StoreBike.create!(
      :store => nil,
      :bike => nil
    ))
  end

  it "renders the edit store_bike form" do
    render

    assert_select "form[action=?][method=?]", store_bike_path(@store_bike), "post" do

      assert_select "input#store_bike_store_id[name=?]", "store_bike[store_id]"

      assert_select "input#store_bike_bike_id[name=?]", "store_bike[bike_id]"
    end
  end
end
