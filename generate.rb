require 'erb'

# Load the ERB template
template = ERB.new(File.read('template.erb'))

patterns = [
    # 'b 8 dis fis 4 g 8 e c 4',
    # 'b 8 dis fis 4 as 8 f des 4',
    # "c' 8 d e g a 2 b 8 a fis e d 2",
    # "b 8 dis fis 4 f 8 a c 4 d 8 b g 4 as 8 f des 4",
    # "c' 8 es g bes a g f e",
    "c' 16 d es e f e es d c 2"
]

patterns.each_with_index do |pattern, index|

    # Render the ERB template with the variables
    result = template.result(binding)

    
    File.open("lilypond/output_filename-#{index}.ly", 'w') do |file|
        file.write(result)
      end

end


