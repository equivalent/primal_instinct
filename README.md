# PrimalInstinct

This is simple gem for generating Prime Multifier Table in console

```
+----+----+----+-----+-----+-----+-----+-----+-----+-----+
|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  |
| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  |
| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  |
| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 |
| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 |
| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 |
| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 |
| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 |
| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 |
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+

```

Main focuse of the excercise was:

1. Consider code readability/complexity
2. Consider SOLID principles, but do not over­engineer
3. Consider extensibility
4. Feel free to use any library or gem in both implementation and tests, but please write your own code for the prime number generator.
5. Consider how you can prove the correctness of your application
6. Write it in Ruby 


## Installation

Add this line to your application's Gemfile:

```bash
git clone https://github.com/equivalent/primal_instinct
cd primal_instinct
bundle install
bundle exec bin/primal_instinct
```

## Usage

```bash
bundle exec bin/primal_instinct -h
bundle exec bin/primal_instinct --count=6
bundle exec bin/primal_instinct --count=6 -l
bundle exec bin/primal_instinct --count=6 -r
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/primal_instinct. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

