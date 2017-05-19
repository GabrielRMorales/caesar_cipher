word=gets.chomp
num=gets.chomp.to_i
def caesar_cipher(text, shift_factor)
text=text.split("")
empty=""
#puts text
text.each do |x|
  
  if (x!=" ")
  	  if (x.match(/^[[:alpha:]]$/))
  	    if (x==x.upcase)
  	      x=x.downcase	
      	  empty+=(x.ord+shift_factor%26).chr.upcase
      	else
      	  empty+=(x.ord+shift_factor%26).chr
      	end
      end    
  elsif (x==" ")
      empty+=" "
  end  
end
  puts empty
end

caesar_cipher("What a string!", 5)