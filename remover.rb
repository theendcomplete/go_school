# frozen_string_literal: true

def remove_spaces(chars = [])
  i = 0
  while chars[i] == ' '
    chars = chars[1...]
    i += 1
  end
  chars = chars[...-1] while chars[chars.length - 1] == ' '

  while i < (chars.length - 1)
    if (chars[i] == ' ') && chars[i + 1] == ' '
      chars = (chars[...i] + chars[i + 1...])
    else
      i += 1
    end
  end
  chars
end

puts 'Please enter string to clean up'

str = gets.chomp
puts "Your string: \n'#{str}'"
puts "Cleaned string: \n'#{remove_spaces(str)}'"
