require 'rails_helper'

RSpec.describe "bikes/show", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
