# frozen_string_literal: true

def remove_spaces(chars_array = [])
  i = 0
  chars_array.delete_at(i) while chars_array[i] == ' '
  chars_array.delete_at(-1) while chars_array[-1] == ' '

  while i < (chars_array.length - 1)
    if (chars_array[i] == ' ') && chars_array[i + 1] == ' '
      chars_array.delete_at(i)
    else
      i += 1
    end
  end
  chars_array.join
end

puts 'Please enter string to clean up'

str = gets.chomp
puts "Your string: \n'#{str}'"
puts "Cleaned string: \n'#{remove_spaces(str.chars)}'"
