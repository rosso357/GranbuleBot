module.exports = (robot) ->
  robot.respond /#[0-9]+$/i, (res) ->
      number = /#[0-9]+/.exec(res.message.txt)
      res.send "https://github.com/rosso357/GranbuleBot/issues/#{number}"
