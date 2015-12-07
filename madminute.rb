def row(nums)
  problems = []
  multiplicands, multipliers, products = [], [], []
  15.times do
    twodigit = "#{nums.sample}#{nums.sample}".to_i
    onedigit = nums.sample
    multiplicands << twodigit
    multipliers << onedigit
    products << twodigit*onedigit
  end
  problems << multiplicands.map{|m| m.to_s.rjust(4)}.join(' ')
  problems << multipliers.map{|m| "×#{m}".rjust(4)}.join(' ')
  problems << products.map{|p| "----"}.join(' ')

  problems_with_answers = problems.dup
  problems_with_answers << products.map{|p| p.to_s.rjust(4)}.join(' ')
  problems << products.map{|p| '    '}.join(' ')
  return [problems.join("\n"), problems_with_answers.join("\n")]
end

text = []
nums = [1,2,3]
text << row(nums)
nums << 4
text << row(nums)
nums << 5
text << row(nums)
nums << 6
text << row(nums)
nums << 7
text << row(nums)
nums << 8
text << row(nums)
nums << 9
text << row(nums)

file = File.open("madminute.txt","w")
file.write("Mad Minute\n\n")
file.write(text.map{|r| r[0]}.join("\n\n"))
file.write("\n")
file.close

file = File.open("madminuteanswers.txt","w")
file.write("Mad Minute answer key\n\n")
file.write(text.map{|r| r[1]}.join("\n\n"))
file.write("\n")
file.close
