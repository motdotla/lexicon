require "json"
require "fileutils"

directory = "emoji"

result = File.open("emoji.json", "r:UTF-8").read
emoji = JSON.parse(result)["emoji"]
puts emoji[0].encode("UTF-8")
# emoji.each do |emo|
#   print emo #.encode("UTF-8")
#   filename = [directory, "/", emo, ".md"].join()
#   #FileUtils.touch(filename) 
#   #File.open(filename, "w:UTF-8") do |f|
#   #    f.write "hi"
#   #end
# end

