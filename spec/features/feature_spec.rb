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
    fill_entry_submit
    expect(page).to have_content("Hi, diary how are you?")
  end
end

feature 'each entry has a title' do
  scenario 'return title' do
    fill_entry_submit
    expect(page).to have_content("First entry")
  end
end
