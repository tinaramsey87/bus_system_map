require 'rails_helper'

describe "the add new line process" do
  it "adds a new bus line" do
    visit lines_path
    click_on 'Add a new line'
    fill_in 'Name', :with => "Main Hwy"
    fill_in 'Number', :with => 1
    click_on 'Create Line'
    expect(page).to have_content 'successfully'
  end

end
