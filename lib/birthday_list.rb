class Birthday
  def initialize
    @birthday_hash = {}
  end
  def saveFriend(name, birthday)
    @birthday_hash[name] = birthday
  end
  def displayFriends()
    @birthday_hash.each do |key, value|
      puts "Name #{key} Birthday #{value}"
    end
  end

  def birthdays_today()
    today = Time.now.strftime("%d/%m")
    @birthday_hash.each do |key, value|
      return "It's #{key}'s Birthday today" if today == value[0..4]
    end
  end
end
