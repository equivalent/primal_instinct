[![Build Status](https://travis-ci.org/equivalent/primal_instinct.svg)](https://travis-ci.org/equivalent/primal_instinct)
[![Code Climate](https://codeclimate.com/github/equivalent/primal_instinct/badges/gpa.svg)](https://codeclimate.com/github/equivalent/primal_instinct)
[![Test Coverage](https://codeclimate.com/github/equivalent/primal_instinct/badges/coverage.svg)](https://codeclimate.com/github/equivalent/primal_instinct/coverage)

# PrimalInstinct

This is simple gem for generating Prime Number Multiplier Table in console

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

This gem was recruitment excercise, where the main focuse was on:

1. Consider code readability/complexity
2. Consider SOLID principles, but do not over­engineer
3. Consider extensibility
4. Feel free to use any library or gem in both implementation and tests, but please write your own code for the prime number generator.
5. Consider how you can prove the correctness of your application
6. Write it in Ruby 


## Installation

```bash
$ gem install primal_instinct
```

... or place this to your Gemfile 


```bash
gem 'primal_instinct'
```

...and run  `bundle install`

## Usage

#### Console

```bash
primal_instinct -h
primal_instinct --count=6
primal_instinct --count=6 -l
primal_instinct --count=6 -r

# or maybe

bundle exec primal_instinct -h
```

#### In your code

```
PrimalInstinct.generate(generator: PrimalInstinct::Generator::RubyPrime,
                        count: 3)
# => [[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]
```

## Extensibility

Gem can be easily extended with custom generating algorithms, check the
`lib/primal_instinct/generator` and `PrimalInstinct.generators`

Customly added generators will automatically appear in the option list
`-h` (check `exe/primal_instinct`)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/equivalent/primal_instinct. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

