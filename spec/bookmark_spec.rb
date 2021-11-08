require 'bookmark'

describe Bookmark do
  
  it 'initializes with a name and url' do
    bookmark = Bookmark.new('BBC', 'https://bbc.co.uk/')
    expect(bookmark.name).to eq('BBC')
    expect(bookmark.url).to eq('https://bbc.co.uk/')
  end

  describe '.all' do 
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

end