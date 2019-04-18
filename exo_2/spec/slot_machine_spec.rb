# slot_machine = SlotMachine.new
# slot_machine.score(["joker", "star", "joker"])
# => 25

require_relative '../slot_machine.rb'

def test_scenario(reels, expected_score)
  it "returns #{expected_score} for #{reels[0]}/#{reels[1]}/#{reels[2]}" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(reels)
    expect(score).to eq(expected_score)
  end
end

describe SlotMachine do
it 'should give the right score 2 jokers' do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["joker", "star", "joker"])
    expect(score).to eq(25)
  end

  it 'should give the right score 3 jokers' do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["joker", "joker", "joker"])
    expect(score).to eq(50)
  end

  it "should return 0 if 3 different items" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["star", "joker", "bell"])
    expect(score).to eq(0)
  end

  it "should return 25 if 2 jokers and smthg else" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["joker", "joker", "bell"])
    expect(score).to eq(25)
  end

  test_scenario(%w[joker joker joker], 50)
  test_scenario(%w[seven seven seven], 20)
  test_scenario(%w[cherry cherry cherry], 10)

  test_scenario(%w[joker joker star], 25)
  test_scenario(%w[joker joker bell], 25)
  test_scenario(%w[joker joker seven], 25)
  test_scenario(%w[joker joker cherry], 25)

  test_scenario(%w[star star joker], 20)
  test_scenario(%w[bell bell joker], 15)
  test_scenario(%w[seven seven joker], 10)
  test_scenario(%w[cherry cherry joker], 5)
end
