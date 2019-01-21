#Description:
#   "バハ武器"と入力すると、バハムート武器の必要素材数が書いてある攻略ページを取得するbot.
module.exports = (robot) ->
  robot.respond /バハ武器([\s ]?)素材$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/48325"
  robot.respond /バハ武器([\s ]?)性能$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/33251"

  #Description:
  #   "天司武器"と入力すると、天司武器の攻略ページを取得するbot.
  robot.respond /天司武器([\s ]?)性能$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/52819"
  robot.respond /天司武器([\s ]?)素材$/i, (res) ->
    res.send """
https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56677
https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56678
https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56679
https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56676
"""
  robot.respond /天司武器([\s ]?)素材([\s ]?)(ミカ|剣|ミカ剣)+$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56677"
  robot.respond /天司武器([\s ]?)素材([\s ]?)(ガブ|杖|ガブ杖)+$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56678"
  robot.respond /天司武器([\s ]?)素材([\s ]?)(ウリ|拳|ウリ拳)+$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56679"
  robot.respond /天司武器([\s ]?)素材([\s ]?)(ラファ|弓|ラファ弓)+$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56676"


  #Description:
  #   "オメガ武器"と入力すると、オメガ武器の必要素材数が書いてある攻略ページを取得するbot.
  robot.respond /オメガ武器$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/62344"

