# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
hellos = [
    "Well hello there, %",
    "Hey %, Hello!",
    "Good day, %",
    "Good 'aye!, %"
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye!, %"
]
welcomes = [
    "Of course, %",
    "Anytime, %",
    "You're welcome, %",
    "No problem, %",
    "You owe me, %"
]
apologies = [
    "Oh come on!",
    "It wasn't me...",
    "Let's see you do my job, %",
    "I'm not bad. I'm just coded that way.",
]
module.exports = (robot) ->
    robot.hear /(hello|good( [d'])?ay(e)?)\salfred/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)\salfred/, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(thanks|thank\s(you|ya))\salfred/, (msg) ->
        hello = msg.random welcomes
        msg.send hello.replace "%", msg.message.user.name
    robot.hear /(bad|damnit|screw|screw you)\salfred/, (msg) ->
        hello = msg.random apologies
        msg.send hello.replace "%", msg.message.user.name