# Offliberty

A simple interface to the offliberty.com download service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'offliberty'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install offliberty

## Usage

### From ruby

```ruby
require 'offliberty'

song = Offliberty::Off.new("https://www.youtube.com/watch?v=A4GhUglZ5NU")
song.offliberate # Get the download link
song.download # Download the song near this ruby script
```

### From terminal

```sh
$ off https://www.youtube.com/watch?v=A4GhUglZ5NU
```

Or with a textfile with multiple links
```sh
$ cat example
https://www.youtube.com/watch?v=uiGpv-UeiDI
not link
https://www.youtube.com/watch?v=oHowqKYSXNI
random text
$ off example
Requesting...
Downloading...
Finished!
Requesting...
Downloading...
Finished!
```

## Contributing

1. Fork it ( https://github.com/radubogdan/ruby-offliberty/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
