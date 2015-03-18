require 'rails_helper'

describe "the add a station process" do
  it "adds a new bus station" do
    Admin.create({ username: "Frank", password: "cupoftea" })
    visit log_in_path
    fill_in 'Username', :with => "Frank"
    fill_in 'Password', :with => "cupoftea"
    click_on 'Log in'
    line = Line.create({ name: "Main Hwy", number: 1 })
    visit line_stations_path(line)
    click_on 'Add a new station'
    fill_in 'Name', :with => "Portland Central"
    click_on 'Create Station'
    expect(page).to have_content 'successfully'
  end

  it "gives an error when a field is not filled in" do
    line = Line.create({ name: "Main Hwy", number: 1 })
    visit new_line_stations_path(line)
    click_on 'Create Station'
    expect(page).to have_content 'errors'
  end
end
