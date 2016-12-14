require './parse_template'

describe 'parse_template' do
  it 'be kind of hash' do
    result = parse_template('Hello %%first_name%text%%.  Welcome to %%place%text%%.  See you on %%start%date%%!')
    expect(result).to be_a(Hash)
  end

  it 'returns vars & types' do
    result = parse_template('Hello %%first_name%text%%.  Welcome to %%place%text%%.  See you on %%start%date%%!')
    expect(result).to eql({'first_name' => 'text', 'place' => 'text', 'start' => 'date'})
  end

  it 'returns empty hash' do
    [nil, '', 'Just string'].each do |source|
      result = parse_template(source)

      expect(result).to be_a(Hash)
      expect(result).to be_empty
    end
  end
end
