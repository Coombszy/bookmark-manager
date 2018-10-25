require 'pg'
class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bm_database')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
  def self.create(url:)
    connection = PG.connect(dbname: 'bm_database')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end