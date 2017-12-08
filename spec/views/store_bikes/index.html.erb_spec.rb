require 'rails_helper'

RSpec.describe "store_bikes/index", type: :view do
  before(:each) do
    assign(:store_bikes, [
      StoreBike.create!(
        :store => nil,
        :bike => nil
      ),
      StoreBike.create!(
        :store => nil,
        :bike => nil
      )
    ])
  end

  it "renders a list of store_bikes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
