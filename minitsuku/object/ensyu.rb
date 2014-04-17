class DataBase
  def initialize
    @data_list = []
    DATA.each do |data|
      data = (["名前","年齢","出身"]).zip(data.chomp.split(',')).to_h

      regist(data)
    end
  end

  def regist( data )
    @data_list << data
  end

  def search( key, value )
    @data_list.each do |data|
      if data[key] == value
        p data
        return
      end
    end
    puts "ヒットしませんでした"
  end
end

db = DataBase.new
db.search("名前", "静岡 太郎")
db.search("名前", "山田 太郎")

__END__
静岡 太郎,34歳,静岡県
名古屋 次郎,25歳,愛知県
大津 三郎,19歳,滋賀県
