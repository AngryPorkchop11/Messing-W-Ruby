# Writing
f = File.new("./WriteRuby.txt", "w")
f.puts("This is a line")
f.puts("This is a second line")
f.close

#Writing from array
lines = ["This is line 1", "This is line 2", "This is line 3"]
f = File.new("./WriteFromArray.txt", "w")
lines.each {|line| f.puts(line)}
f.close

#Writing with f.print (no enters..)
lines = ["This is line 1", "This is line 2", "This is line 3"]
f = File.new("./WriteNoEnters.txt", "w")
lines.each {|line| f.print(line)}
f.close

#Reading
lines = []
file = File.open("./ReadRuby.txt", "r")
while (line = file.gets)
  lines << line
end

file.close
lines.each{|l| puts l }

#Reading with error handling
lines = []
begin
  file = File.open("./DoesNotExist", "r")
  while (line = file.gets)
    lines << line
  end
rescue => e
  puts "ERROR: "
  puts e
end

lines.each {|l| puts l }
