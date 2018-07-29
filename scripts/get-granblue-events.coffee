#Description:
#   "イベント"と入力すると、グラブルのイベント攻略情報を取得するbot.
module.exports = (robot) ->
  robot.respond /イベント$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/29566"
