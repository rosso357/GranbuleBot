#Description:
#   "グラブルのヘルプ機能関連の、granblue-botのコマンド一覧を取得する.
module.exports = (robot) ->

  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)$/i, (res) ->

    help_arr =
      ##基本
      "公式" : "グラブル公式"
      "イベント" : "グラブルイベント攻略情報"
      "スキル餌" : "武器スキル上げシート表"
      "ねこちゃん" : "センちゃん画像"
      ##理想編成
      "火理想" : "火マグナ理想編成"
      "水理想" : "水マグナ理想編成"
      "土理想" : "土マグナ理想編成"
      "光理想" : "光マグナ理想編成"
      "闇理想" : "闇マグナ理想編成"
      "ヴァルナ" : "ヴァルナ理想編成"
      ##特殊武器
      "バハ武器 素材" : "バハムート武器の素材情報"
      "バハ武器 性能" : "バハムート武器の性能情報"
      "天司武器 素材" : "天司武器の素材情報"
      "天司武器 性能" : "天司武器の性能情報"
      "天司武器 性能 ミカ/剣/ミカ剣" : "ミカエル剣の性能情報"
      "天司武器 性能 ガブ/杖/ガブ杖" : "ガブリエル杖の性能情報"
      "天司武器 性能 ウリ/拳/ウリ拳" : "ウリエル拳の性能情報"
      "天司武器 性能 ラファ/弓/ラファ弓" : "ラファエル弓の性能情報"
      "英雄武器 素材" : "英雄武器の素材情報"
      "英雄武器 性能" : "英雄武器の性能情報"
      "オメガ武器" : "オメガ武器の素材情報"
      ##十天衆
      "十天衆 素材" : "十天衆開放までの素材数情報"
      "十天衆 評価" : "各十天衆の評価情報"
      "十天衆 最終開放" : "十天衆の最終上限開放までの素材"

    msg = ''

    for key,value of help_arr
      msg += key + ' : ' + value + '\n'

    res.send msg
