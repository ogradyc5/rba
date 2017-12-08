require 'rails_helper'

RSpec.describe "bikes/edit", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit bike form" do
    render

    assert_select "form[action=?][method=?]", bike_path(@bike), "post" do

      assert_select "input#bike_name[name=?]", "bike[name]"
    end
  end
end
