# ScoreboardRubywarrior

This gem monkey patches ruby-warrior to allow scores to be
automatically posted to a webserver (currently https://chchruby-warrior.herokuapp.com/)

There is plenty of scope for improving the metrics etc, so please
feel free to add your (tested?! ;) patches and send them our way.

The website code is also open sourced at https://github.com/patrickdavey/rubywarrior_scoreboard

## Installation

    $ gem install scoreboard_rubywarrior

## Usage

Please see Ryan Bates' instructions [on the original ruby-warrior](https://github.com/ryanb/ruby-warrior/)

## Endpoint

The website where the scores can be viewed (and source inspected etc.) is
available [on github](https://github.com/patrickdavey/rubywarrior_scoreboard)
by default, the scoreboard_rubywarrior will post to the demo herokuapp at 
http://chchruby.herokuapp.com/scores .

If you want to post to your own custom website for your own meetup, all
you need to do is create a `.scoreboard_endpoint` file in the root of the
rubywarrior directory (so in the same directory as player.rb) and fill in
the URL that you want the scores to be posted to.

## Contributing

1. Fork it ( https://github.com/patrickdavey/scoreboard_rubywarrior/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


# Thanks

Many many thanks to Ryan Bates for creating the ruby-warrior gem.

If you feel like saying more.. click the image below ;)

[![Thank the developer](https://raw.githubusercontent.com/thankadeveloper/thankadeveloper/master/app/assets/images/badge.png)](http:/thankadeveloper.org?repo=patrickdavey/scoreboard_rubywarrior)
