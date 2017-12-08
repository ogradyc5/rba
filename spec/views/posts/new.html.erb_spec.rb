require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :text => "MyString",
      :member => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_text[name=?]", "post[text]"

      assert_select "input#post_member_id[name=?]", "post[member_id]"
    end
  end
end
