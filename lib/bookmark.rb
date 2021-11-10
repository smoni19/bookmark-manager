require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url:)
    begin
      connection = PG.connect :dbname => "bookmark_manager"
      connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    rescue PG::Error => e
      puts e.message
    ensure
      connection.close if connection
    end
  end
end