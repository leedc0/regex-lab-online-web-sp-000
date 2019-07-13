def starts_with_a_vowel?(word)
  word.match(/\b+[aeiouAEIOU]/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].*\W$/) ? true : false
  # "^" Start of line; "[A-Z]" Any single character in the
  # range A-Z; "." Any single character; "*" Zero or more
  # of "." (value just before); \W Any non-word
  # character; $ End of line -- no parenthesis included
end

def valid_phone_number?(phone)
  phone.gsub(/\D/, '').length == 10 ? true : false
  # Remove all non-digit characters (\D) and test that the length is 10.
end
