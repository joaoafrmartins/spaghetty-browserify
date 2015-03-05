ACliCommand = require 'a-cli-command'

class Browserify extends ACliCommand

  command:

    name: "browserify"

    triggers: []

    options:

      outfile:

        alias: "o"

        type: "string"

        description: [
          "output file or stdout if unspecified"
        ]

  "option?": (command, next) ->

    @shell

    echo "OK"

    next null, "option"

  "execute?": (command, next) ->

    next null, "this event is always emitted"

module.exports = Browserify
