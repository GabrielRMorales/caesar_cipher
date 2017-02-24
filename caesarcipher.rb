word=gets.chomp
num=gets.chomp.to_i
def caesar_cipher(text, shift_factor)
text=text.split("")
empty=""
#puts text
text.each do |x|
  
  if (x!=" ")
      empty+=(x.ord+shift_factor%26).chr      
  elsif (x==" ")
      empty+=" "
  end  
end
  puts empty
end

caesar_cipher(word, num)