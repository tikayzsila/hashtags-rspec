require 'hashtag'
require 'rspec'
describe 'hashtags' do
  #Захватывается 1 хэштег
  it 'returns single hastag' do
    expect(hashtags('words with #tags')).to eq %w(#tags)
  end
  #Захватывается несколько хэштегов
  it 'returns multiple hastags' do
    expect(hashtags('#words with #tags')).to eq %w(#words #tags)
  end
  #Захватывается хэштег на русском
  it 'returns hastags with russian' do
    expect(hashtags('слова с #тегами')).to eq %w(#тегами)
  end
  #Захватывается хэштег с подчеркиваниями
  it 'returns hastags with underscores' do
    expect(hashtags('words #with_tags')).to eq %w(#with_tags)
  end
  #Захватывается хэштег с минусами
  it 'returns hastags with minuses' do
    expect(hashtags('words #with-tags')).to eq %w(#with-tags)
  end
  #Не захватывается знак вопроса
  it 'does not return question mark' do
    expect(hashtags('words #with? tags')).to eq %w(#with)
  end
  #Не захватывается восклицательный знак
  it 'does not return exclamation mark' do
    expect(hashtags('words #with! tags')).to eq %w(#with)
  end
end