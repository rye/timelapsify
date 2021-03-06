# timelapsify

A Ruby Gem for taking and making timelapses.

## Installation

Timelapsify is hosted for your pleasure on RubyGems.  You can install it like
this:

```sh
$ gem install timelapsify
```

If you're looking to get the development environment set up for yourself, you
can clone the repository, then run the following commands to install it locally:

```sh
$ cd /path/to/cloned/timelapsify
$ bundle install
$ gem build timelapsify.gemspec
$ gem install --local timelapsify-*.gem
```

If you happen to encounter any problems with the installation, they're likely
due to your personal setup, though you're welcome to open an Issue about it.

## Internals

Timelapsify uses RMagick and a variety of other programs to capture
screenshots.  These screenshots are then stitched together to create a video
file.

## Contributing

Support for other screenshot capturing programs and other such things would be
greatly appreciated as a pull request.  If you have an idea, feel free to fork
this repository and add support for other systems.
