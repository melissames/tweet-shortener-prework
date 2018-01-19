def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter (tweet)
  tweet_array = tweet.split(' ')
  dictionary_keys = dictionary.keys
  word_intersection = dictionary_keys & tweet_array
  shortened_tweet = ''

  tweet_array.each { |word|
    if word_intersection.include?(word)
      shortened_tweet << "#{dictionary[word]} "
    else
      shortened_tweet << "#{word} "
    end
  }


  shortened_tweet[0..-2]
end
