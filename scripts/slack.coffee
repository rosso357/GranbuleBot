module.exports = (robot) ->
  robot.hear /.*#([0-9]+).*$/i, (res) ->
      number = /.*#([0-9]+).*/.exec(res.message.text)
      res.send "https://github.com/rosso357/GranbuleBot/issues/#{number[1]}"
