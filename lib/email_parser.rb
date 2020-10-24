# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize( string )
        @string = string
    end

    attr_accessor :string

    def parse
        if @string.include?(",")
            @string.gsub(",","").split(" ").uniq
        else
            @string.split(" ").uniq
        end
    end
end