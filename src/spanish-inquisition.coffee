# Description
#   Recites the words of Ximinez when it hears someone not expecting the spanish inquisition
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Rahul Somasunderam[@<org>]

module.exports = (robot) ->
  robot.respond /hello/, (msg) ->
    msg.reply "hello!"

  robot.hear /orly/, ->
    msg.send "yarly"
