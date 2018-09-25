require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      :title => "MyString",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "input[name=?]", "skill[title]"

      assert_select "textarea[name=?]", "skill[body]"

      assert_select "input[name=?]", "skill[user_id]"
    end
  end
end
