require 'erb'

# Sample data structure (you can replace this with your actual data)
music_pieces = [
    # { notes: 'b 8 dis fis 4 g 8 e c 4', descending: "g 8 e c 4 b 8 dis fis 4"},
    # { notes: 'b 8 dis fis 4 as 8 f des 4', descending: "as 8 f des 4 b 8 dis fis 4"},
    # { notes: 'b 8 dis fis 4 g 8 c e 4', descending:"b, 8 dis fis 4 g 8 c e 4"},
    { notes: "c' 8 d e g a 2 b 8 a fis e d 2", descending:"b 8 a fis e d 2 c 8 d e g a 2"},
#     { notes: "b 8 dis fis 4 f 8 a c 4 d 8 b g 4 as 8 f des 4", descending:""},
#     { notes: "c' 8 es g bes a g f e", descending:"es 8 ges as g fes f es des"},
#     { notes: "c' 16 d es e f e es d c 2", descending:"c' 16 d es e f e es d c 2"},
#     { notes: "d' 8 es f e es 2", descending:"d' 8 es f e es 2"}
]

# Loop over objects and generate LilyPond files
music_pieces.each_with_index do |piece, index|
  erb_template = ERB.new(File.read('template.erb')) # Load the external ERB template
  erb_template.result(binding) # Bind the object data to the ERB template

  # Bind object data to the ERB template
  title = piece[:title]
  composer = piece[:composer]
  notes = piece[:notes]
  descending = piece[:descending]

  lilypond_code = erb_template.result(binding)
  filename = "lilypond/output_filename-#{index}.ly"  # Create a unique filename
  File.open(filename, 'w') { |file| file.write(lilypond_code) }
  puts "Generated #{filename}"
end








# require 'erb'

# # Load the ERB template
# template = ERB.new(File.read('template.erb'))

# patterns = [
#     'b 8 dis fis 4 g 8 e c 4',
#     'b 8 dis fis 4 as 8 f des 4',
#     'b 8 dis fis 4 g 8 c e 4',
#     "c' 8 d e g a 2 b 8 a fis e d 2",
#     "b 8 dis fis 4 f 8 a c 4 d 8 b g 4 as 8 f des 4",
#     "c' 8 es g bes a g f e",
#     "c' 16 d es e f e es d c 2",
#     "d' 8 es f e es 2"
# ]

# patterns.each_with_index do |pattern, index|

#     # Render the ERB template with the variables
#     result = template.result(binding)

    
#     File.open("lilypond/output_filename-#{index}.ly", 'w') do |file|
#         file.write(result)
#       end

# end


