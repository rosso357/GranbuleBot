module.exports = (robot) ->
  robot.respond /class([\s ]?)iv([\s ]?)取得([\s ]?)手順$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/102763"
  #Description:
  #   "英雄武器　性能"と入力すると、各英雄武器（ジョブ専用武器）の性能・評価が書いてある攻略ページを取得するbot.
  robot.respond /英雄武器([\s ]?)性能$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/25465"
  #Description:
  #   "英雄武器　素材"と入力すると、各英雄武器（ジョブ専用武器）の必要素材数が書いてある攻略ページを取得するbot.
  robot.respond /英雄武器([\s ]?)素材$/i, (res) ->
    res.send "https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/38000"
