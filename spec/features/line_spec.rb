require 'rails_helper'

describe "the add new line process" do
  it "adds a new bus line" do
    Admin.create({ username: "Frank", password: "cupoftea" })
    visit log_in_path
    fill_in 'Username', :with => "Frank"
    fill_in 'Password', :with => "cupoftea"
    click_on 'Log in'
    visit lines_path
    click_on 'Add a new line'
    fill_in 'Name', :with => "Main Hwy"
    fill_in 'Number', :with => 1
    click_on 'Create Line'
    expect(page).to have_content 'successfully'
  end

  it "gives an error when a field is not filled in" do
    visit new_line_path
    click_on 'Create Line'
    expect(page).to have_content 'errors'
  end
end

describe "the edit line process" do
  it "edits a current bus line" do
    line = Line.create({ name: "Main Hwy", number: 1 })
    visit edit_line_path(line) #this doesn't test the link for a logged-in admin; just that the path to edit is working.
    click_on 'Update Line'
    expect(page).to have_content 'successfully'
  end
end
