#word=gets.chomp
#num=gets.chomp.to_i
def caesar_cipher(text, shift_factor)
text=text.split("")
empty=""
#puts text
  text.each do |x|
  
    if (x.match(/^[[:alpha:]]$/))
    	x=x.ord+shift_factor%26
      if (x>90&&x<97)||(x>122)
        empty+=(x-26).chr
      else
        empty+=x.chr
      end
    else
      empty+=x

    end    
  end
  empty
end

