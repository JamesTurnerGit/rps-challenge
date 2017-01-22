feature "computer player has a go!" do
  scenario "player_1 has made his choice" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    log_in_and_choose
    expect(page).to have_content "Billy has emerged victorious against Cpu"
    expect(page).to have_content "Billy picked scissors Cpu picked paper"
  end
end
