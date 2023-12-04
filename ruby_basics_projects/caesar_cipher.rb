def caesar_cipher(str, shift)
    shift = shift % 26 # Make sure the shift is less than 26
    secret = ''
    str_array = str.split("")
    # p str_array
    str_array.each do |c|
        code = c.ord + shift
        if c.match(/[^a-zA-Z]/)
            secret << c
        end
        if c.match(/[a-z]/)  
            code = "a".ord + code % "z".ord - 1 if code > "z".ord
            secret << code.chr
        end
        if c.match(/[A-Z]/)    
            code = "A".ord + code % "Z".ord - 1 if code > "Z".ord
            secret << code.chr
        end
    end
    secret.delete(" \t\r\n")
end
p caesar_cipher("What a string!", 5)