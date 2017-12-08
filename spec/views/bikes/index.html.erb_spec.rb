require 'rails_helper'

RSpec.describe "bikes/index", type: :view do
  before(:each) do
    assign(:bikes, [
      Bike.create!(
        :name => "Name"
      ),
      Bike.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of bikes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
