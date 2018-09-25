require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :title => "MyString",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(@skill), "post" do

      assert_select "input[name=?]", "skill[title]"

      assert_select "textarea[name=?]", "skill[body]"

      assert_select "input[name=?]", "skill[user_id]"
    end
  end
end
