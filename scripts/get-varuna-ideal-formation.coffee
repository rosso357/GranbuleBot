#Description:
#   "ヴァルナ"と入力すると、グラブルのヴァルナの理想編成を取得するbot.

module.exports = (robot) ->
  robot.hear /ヴァルナ/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/21615"
