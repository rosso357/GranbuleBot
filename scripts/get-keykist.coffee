#Description:
#   "グラブルのヘルプ機能関連の、granblue-botのコマンド一覧を取得する.
module.exports = (robot) ->

  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)([\s ]?)(一覧|編成|特殊武器|十天衆|理想装備)?$/i, (res) ->

    help_arr =
    "一覧" :
      "ヘルプ/キーリスト/keylist/コマンド 基本/攻略" : "基本攻略情報のコマンド一覧取得"
      "ヘルプ/キーリスト/keylist/コマンド 編成/装備/理想/理想編成/理想装備" : "各属性の理想装備編成のコマンド一覧取得"
      "ヘルプ/キーリスト/keylist/コマンド 特殊武器/武器/特殊" : "特殊武器のコマンド一覧取得"
      "ヘルプ/キーリスト/keylist/コマンド 10/十/10天/十天/10天衆/十天衆" : "十天衆のコマンド一覧取得"
    "理想" :
      "火理想" : "火マグナ理想編成"
      "水理想" : "水マグナ理想編成"
      "土理想" : "土マグナ理想編成"
      "光理想" : "光マグナ理想編成"
      "闇理想" : "闇マグナ理想編成"
      "ヴァルナ" : "ヴァルナ理想編成"
    "武器" :
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
    "十天衆" :
      "十天衆 素材" : "十天衆開放までの素材数情報"
      "十天衆 評価" : "各十天衆の評価情報"
      "十天衆 最終開放" : "十天衆の最終上限開放までの素材"

    msg = ''

    for key,value of help_arr
      msg += key + ' : ' + help_arr[key].value + '\n'

    res.send msg


##robot.respond /(ヘルプ|キーリスト|keylist|コマンド)?$/i, (res) ->
#Description:
#   "グラブル基本攻略情報関係の、granblue-botのコマンド一覧を取得する.
#  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)([\s ]?)(基本|攻略)?$/i, (res) ->
#
#    help_arr =
#
#
#    msg = ''
#
#    for key,value of help_arr
#      msg += key + ' : ' + value + '\n'
#
#    res.send msg
#

#  #Description:
#  #   "理想編成関係の、granblue-botのコマンド一覧を取得する.
#  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)([\s ]?)(編成|装備|理想|理想編成|理想装備)?$/i, (res) ->
#
#    help_arr =
#
#
#    msg = ''
#
#    for key,value of help_arr
#      msg += key + ' : ' + value + '\n'
#
#    res.send msg
#
#  #Description:
#  #   "特殊武器関係の、granblue-botのコマンド一覧を取得する.
#  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)([\s ]?)(特殊武器|武器|特殊)?$/i, (res) ->
#
#    help_arr =
#
#
#    msg = ''
#
#    for key,value of help_arr
#      msg += key + ' : ' + value + '\n'
#
#    res.send msg
#
##Description:
##   "十天衆情報関係の、granblue-botのコマンド一覧を取得する.
#  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)([\s ]?)(10|十|10天|十天|10天衆|十天衆)?$/i, (res) ->
#
#    help_arr =
#
#
#    msg = ''
#
#    for key,value of help_arr
#      msg += key + ' : ' + value + '\n'
#
#    res.send msg
