require './app.rb'
require 'spec_helper'

feature 'Can enter diary entries' do
  scenario 'has a field for entries' do
    visit('/')
    expect(page).to have_field('new_entry')
  end
end

feature 'the saved entries are returned' do
  scenario 'returns entries' do
    visit('/')
    fill_in 'new_entry', with: "Hi, diary how are you?"
    click_button 'release your secret'
    expect(page).to have_content("Hi, diary how are you?")
  end
end
