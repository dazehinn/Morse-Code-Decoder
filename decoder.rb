def decode_char (morse_char)
  morse_alphabet = {
    ".-" => "A", "-..." => 'B', "-.-." => 'C', "-.." => 'D', "." => 'E',
    "..-." => 'F', "--." => 'G', "...." => 'H', ".." => 'I', ".---" => 'J',
    "-.-" => 'K', ".-.." => 'L', "--" => 'M', "-." => 'N',    "---" => 'O',
    ".--." => 'P', "--.-" => 'Q', ".-." => 'R', "..." => 'S', "	-" => 'T',
    "..-" => "U", "...-" => "V", ".--" => 'W', "-..-" => 'X', "-.--" => 'Y', "--.." => 'Z'
  }

  morse_alphabet[morse_char]
end

def decode_word morse_string
  morse_array = morse_string.split
  morse_word = morse_array.map do |morse_char|
    decode_char morse_char
  end
  morse_word.join
end

def decode morse_code
  morse_array = morse_code.split '   '
  morse_phrase = morse_array.map do |morse_word|
  decode_word morse_word
  end
  morse_phrase.join ' '
end

puts decode_char '.-'

puts decode_word '.. ...'

puts decode "-- -.--   -. .- -- ."

puts decode ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
