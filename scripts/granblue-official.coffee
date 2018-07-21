module.exports = (robot) ->
  robot.hear /公式/i, (res) ->
    res.send "http://granbluefantasy.jp/"
