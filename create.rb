# encoding: UTF-8
require "json"
require "fileutils"

directory = "emoji"

result = File.open("emoji-bytes.json", "r").read
emoji = JSON.parse(result)["emoji"]
emoji.each do |emo|
  filename = [directory, "/", emo, ".md"].join()
  #FileUtils.touch(filename) 
  File.open(filename, "w:UTF-8") do |f|
      f.write "hi"
  end
end

