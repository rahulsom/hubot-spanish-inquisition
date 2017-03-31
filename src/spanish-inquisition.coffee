# Description
#   Recites the words of Ximinez when it hears someone not expecting the spanish inquisition
#
# Commands:
#   didn't expect.*spanish inquisition - Recites the words...
#
# Author:
#   Rahul Somasunderam @rahulsom

module.exports = (robot) ->
  messages = [
    'http://i.imgur.com/7jScCml.jpg',
    'NOBODY expects the Spanish Inquisition!',
    'Our chief weapon is surprise',
    '...surprise and fear',
    '...fear and surprise',
    '.... Our two weapons are fear and surprise',
    '...and ruthless efficiency',
    '.... Our *three* weapons are fear, surprise, and ruthless efficiency',
    '...and an almost fanatical devotion to the Pope',
    '.... Our *four*',
    '...no',
    '... *Amongst* our weapons',
    '.... Amongst our weaponry',
    '...are such elements as fear, surprise',
    '.... I\'ll come in again.',
    'NOBODY expects the Spanish Inquisition! Amongst our weaponry are such diverse elements as: fear, surprise, ruthless efficiency, an almost fanatical devotion to the Pope',
    '... and nice red uniforms',
    '...Oh damn!'
  ]

  withDelay = (ms, func) -> setTimeout func, ms
  sendMessageWithDelay = (ms, str, msg) ->
    withDelay ms, ->
      msg.send str

  startSending = (msg) ->
    delay = 0
    for phrase in messages
      sendMessageWithDelay delay * 50, phrase, msg
      delay += phrase.length

  robot.hear /didn't expect.*spanish inquisition/i, startSending
  robot.hear /not expect.*spanish inquisition/i, startSending
