require 'rails_helper'

RSpec.describe "store_bicycles/index", type: :view do
  before(:each) do
    assign(:store_bicycles, [
      StoreBicycle.create!(
        :store => nil,
        :bike => nil
      ),
      StoreBicycle.create!(
        :store => nil,
        :bike => nil
      )
    ])
  end

  it "renders a list of store_bicycles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
