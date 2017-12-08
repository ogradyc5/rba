require 'rails_helper'

RSpec.describe "store_bicycles/edit", type: :view do
  before(:each) do
    @store_bicycle = assign(:store_bicycle, StoreBicycle.create!(
      :store => nil,
      :bike => nil
    ))
  end

  it "renders the edit store_bicycle form" do
    render

    assert_select "form[action=?][method=?]", store_bicycle_path(@store_bicycle), "post" do

      assert_select "input#store_bicycle_store_id[name=?]", "store_bicycle[store_id]"

      assert_select "input#store_bicycle_bike_id[name=?]", "store_bicycle[bike_id]"
    end
  end
end
