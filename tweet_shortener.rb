def dictionary(word)
  dictionary = {
    "hi" => "hello",
    '2' => ["to", "two", "too"],
    '4' => ["for", "four"],
    'b' => "be",
    'u' => "you",
    "@" => "at",
    "&" => "and"
  }
  dictionary.each do |key, value|
    if dictionary[key] === word.downcase
      return key
    elsif dictionary[key].is_a?(array)
      if dictionary[key].include?(word.downcase)
        return key
      end
    end
  end
  word
end

def substituter(tweet)
  new_tweet=tweet.split.map! do [word]
    dictionary(word)