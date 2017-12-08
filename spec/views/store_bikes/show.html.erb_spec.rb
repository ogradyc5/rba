require 'rails_helper'

RSpec.describe "store_bikes/show", type: :view do
  before(:each) do
    @store_bike = assign(:store_bike, StoreBike.create!(
      :store => nil,
      :bike => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
