#Description:
#   "10天衆　素材"と入力すると、10天衆素材集めの攻略ページを取得するbot.
module.exports = (robot) ->
  robot.hear /10天衆　素材/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/23094"

#Description:
#   "10天衆　最終素材"と入力すると、10天衆 最終上限開放までの必要素材が書いてある攻略ページを取得するbot.
  robot.hear /10天衆　最終素材/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/53662"

#Description:
#   "10天衆　評価"と入力すると、10天衆 最終上限開放までの必要素材が書いてある攻略ページを取得するbot.
  robot.hear /10天衆　評価/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/22885"

