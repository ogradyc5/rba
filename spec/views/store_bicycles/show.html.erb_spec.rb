require 'rails_helper'

RSpec.describe "store_bicycles/show", type: :view do
  before(:each) do
    @store_bicycle = assign(:store_bicycle, StoreBicycle.create!(
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
