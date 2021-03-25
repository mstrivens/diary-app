def fill_entry_submit
  visit('/')
  fill_in 'new_entry', with: "Hi, diary how are you?"
  fill_in 'title', with: "First entry"
  click_button 'release your secret'
end
