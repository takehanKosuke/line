class Task
  def self.count_of_inappropriate_words
    User.all.each do |user|
      if user.messages.present?
        # TODO:ここ汚すぎるので要リファクタ
        count = user.messages.count{|m| InappropriateWord.all.count{ |i| m.content.include?(i.word)}}
        puts "#{user.name}の不適切ワードの発言回数は#{count}回です。"
        user.update(inappropriate_count: count)
        if count >= 10
           puts "#{user.name}の不適切ワードの発言回数が10回を超えたのでアカウントをbanしました"
           user.update(status: 1)
        end
      else
        puts "#{user.name}の不適切ワードの発言回数は0回です。"
      end
    end
  end
end
