require 'erb'

require 'fileutils'

# Define an array of relative paths to the folders you want to clear
relative_paths = ['lilypond', 'pdf']

# Iterate over each relative path and clear the corresponding folder
relative_paths.each do |relative_path|
  # Construct the absolute path for the current folder
  absolute_path = File.expand_path(relative_path, __dir__)

  # Clear the folder (delete all files and subdirectories)
  FileUtils.rm_rf(absolute_path)

  # Optionally, you can recreate the folder if needed
  FileUtils.mkdir_p(absolute_path)
end

# Sample data structure (you can replace this with your actual data)
music_pieces = [
    { notes: 'b 8 dis fis 4 g 8 e c 4',                         
      descending: "g 8 e c 4 b 8 dis fis 4"},

    { notes: 'b 8 dis fis 4 as 8 f des 4',                      
      descending: "as 8 f des 4 b 8 dis fis 4"},

    { notes: 'b 8 dis fis 4 g 8 c e 4',                         
      descending: "e' 8 c g 4 fis 8 dis b 4"},

    { notes: "c' 8 d e g a 2 b 8 a fis e d 2",                  
      descending: "b 8 a fis e d 2 c 8 d e g a 2"},

    { notes: "b 8 dis fis 4 f 8 a c 4 d 8 b g 4 as 8 f des 4",  
      descending: "des 8 f as 4 g 8 b d 4 c 8 a f 4 fis 8 dis b 4"},

    { notes: "c' 8 es g bes a g f e",                           
      descending: "es 8 ges as g ges f es des"},

    { notes: "c' 16 d es e f e es d c 2",                       
      descending: "c 16 d es e f e es d c 2"},

    { notes: "d' 8 es f e es 2",                                
      descending: "d' 8 es f e es 2"},
      
    { notes: "c' 8 bes c es f fis g 4 d 8 c d f g as a 4",
      descending: "d 8 c d f g as a 4 c, 8 bes c e f fis g 4"},

    { notes: "\\tuplet 9/6 { c' 8 d e g a g e d c~ } c 4 \\tuplet 9/6 { d 8 e fis a b a fis e d~ } d 4",      
      descending: "\\tuplet 9/6 { d 8 e fis a b a fis e d~ } d 4 \\tuplet 9/6 { c 8 d e g a g e d c~ } c 4" },
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
  filename = "lilypond/document-#{index}.ly"  # Create a unique filename
  File.open(filename, 'w') { |file| file.write(lilypond_code) }
  puts "Generated #{filename}"
end


