require 'diary'

describe Diary do

  describe '#all' do
    it 'it adds a diary entry to the database' do
      connection = PG.connect(dbname: 'diary_test')
      Diary.add("First entry", 'Hi my diary, let me tell you something')
      diary = Diary.all
      expect(diary).to include("Hi my diary, let me tell you something")
    end
  end


  describe '#all' do
    it 'it adds a diary entry to the database' do
      connection = PG.connect(dbname: 'diary_test')
      Diary.add("First entry", "Hi my diary, let me tell you something")
      expect(Diary.all).to include("Hi my diary, let me tell you something")
    end
  end

  describe '#title' do
    it 'returns a title' do
      connection = PG.connect(dbname: 'diary_test')
      Diary.add("First entry", "Hi my diary, let me tell you something")
      expect(Diary.title).to include("First entry")
    end
  end
end
