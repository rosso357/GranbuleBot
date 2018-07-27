#Description:
#   "火理想"と入力すると、グラブルの火理想編成を取得するbot.

module.exports = (robot) ->
  robot.hear /火理想/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47075"
