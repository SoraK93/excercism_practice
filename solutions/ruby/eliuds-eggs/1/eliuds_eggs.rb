=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end
module EliudsEggs
  def self.egg_count(bit)
    binary = self.get_binary(bit)
    binary.count("1")
  end
  def self.get_binary(num)
    result = ""
    while num > 0
      result += (num % 2).to_s
      num /= 2
    end
    return result
  end
end