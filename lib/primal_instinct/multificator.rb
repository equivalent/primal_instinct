module Multificator
  def self.multification_table(values)
    table = []
    return table if values.empty?
    ([1] + values).each do |row|
      table << ([1] + values.dup).map { |e| e * row }
    end
    table[0][0] = nil
    table
  end
end
