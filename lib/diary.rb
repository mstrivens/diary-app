require 'pg'

class Diary

  def self.all
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'diary_test' )
    else
      connection = PG.connect(dbname: 'diary')
    end

    result = connection.exec("SELECT * FROM diary")
    result.map {|diary| "#{diary['entry']}"}
  end

  def self.add(title, entry)
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'diary_test' )
    else
      connection = PG.connect(dbname: 'diary')
    end

    connection.exec("INSERT INTO diary (title, entry) VALUES('#{title}', '#{entry}');")

  end

  def self.title
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'diary_test')
    else
      connection = PG.connect(dbname: 'diary')
    end

    result = connection.exec("SELECT * FROM diary")
    result.map {|diary| "#{diary['title']}"}
  end

end
