#Description:
#   "バハ武器"と入力すると、バハムート武器の必要素材数が書いてある攻略ページを取得するbot.
module.exports = (robot) ->
  robot.respond /バハ武器$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/48325"

  #Description:
  #   "天司武器"と入力すると、天司武器の攻略ページを取得するbot.
  robot.respond /天司武器$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/52819"

  #Description:
  #   "英雄武器　性能"と入力すると、各英雄武器（ジョブ専用武器）の性能・評価が書いてある攻略ページを取得するbot.
  robot.respond /英雄武器([\s ]?)性能$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/25465"

  #Description:
  #   "英雄武器　素材"と入力すると、各英雄武器（ジョブ専用武器）の必要素材数が書いてある攻略ページを取得するbot.
  robot.respond /英雄武器([\s ]?)素材$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/38000"

  #Description:
  #   "オメガ武器"と入力すると、オメガ武器の必要素材数が書いてある攻略ページを取得するbot.
  robot.respond /オメガ武器$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/62344"

