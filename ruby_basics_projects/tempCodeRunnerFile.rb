 # p str_array
    # str_array.each do |c|
    #     code = c.ord + shift
    #     if c.match(/[^a-zA-Z]/)
    #         secret << c
    #     elsif c.match(/[a-z]/) 
    #         code = "a".ord + code % "z".ord -1 if code > "z".ord
    #         secret << code.chr
    #     elsif c.match(/[A-Z]/) 
    #         code = "A".ord + code % "Z".ord -1 if code > "Z".ord
    #         secret << code.chr
    #     end
    # end