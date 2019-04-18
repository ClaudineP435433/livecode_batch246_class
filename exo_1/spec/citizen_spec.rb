require_relative "../citizen"

describe Citizen do
  it 'should have a name' do
    charly = Citizen.new('charly', 'Doe', 26)
    expect(charly.first_name).to eq('charly')
  end

  it 'should have a full_name' do
    charly = Citizen.new('charly', 'Doe', 26)
    expect(charly.full_name).to eq('charly Doe')
  end

  it 'should vote if he have more than 18 years old' do
    charly = Citizen.new('charly', 'Doe', 26)
    expect(charly.can_vote?).to eq(true)
  end
  it 'should vote if he have less than 18 years old' do
    charly = Citizen.new('charly', 'Doe', 16)
    expect(charly.can_vote?).to eq(false)
  end
end
