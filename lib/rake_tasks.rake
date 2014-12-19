require_relative 'translator'

desc "this is task"
task :lokesh do
  p "this is lokesh jain"

end

desc "Create a translation file"
task :create_translation_file do

  Moda.create_file

end