require 'rails_helper'

RSpec.describe "bikes/new", type: :view do
  before(:each) do
    assign(:bike, Bike.new(
      :name => "MyString"
    ))
  end

  it "renders new bike form" do
    render

    assert_select "form[action=?][method=?]", bikes_path, "post" do

      assert_select "input#bike_name[name=?]", "bike[name]"
    end
  end
end
