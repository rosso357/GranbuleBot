#Description:
#   "闇理想"と入力すると、グラブルの闇理想編成を取得するbot.

module.exports = (robot) ->
  robot.hear /闇理想/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47695"
