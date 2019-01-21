#Description:
#   "バハ武器"と入力すると、バハムート武器の必要素材数が書いてある攻略ページを取得するbot.
module.exports = (robot) ->
  robot.respond /class([\s ]?)iv([\s ]?)取得([\s ]?)手順$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/102763"
  robot.respond /英雄武器([\s ]?)素材$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/38000"

