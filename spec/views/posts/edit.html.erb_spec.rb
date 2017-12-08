require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :text => "MyString",
      :member => nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_text[name=?]", "post[text]"

      assert_select "input#post_member_id[name=?]", "post[member_id]"
    end
  end
end
