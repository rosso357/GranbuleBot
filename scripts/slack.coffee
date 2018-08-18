# slack上で#xxのようにissue番号を記載したときにISSUEのurlを返却する
# 実は若干雑に作ってるが困ったら修正ということで
module.exports = (robot) ->
  robot.hear /.*#([0-9]+).*$/i, (res) ->
      number = /.*#([0-9]+).*/.exec(res.message.text)
      res.send "https://github.com/rosso357/GranbuleBot/issues/#{number[1]}"
