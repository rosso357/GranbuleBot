#Description:
#   "ヘルプ, キーリスト, keylist, コマンド"のいずれかを入力すると、granblue-botのコマンド一覧を取得する.

module.exports = (robot) ->
  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)$/i, (res) ->
    res.send
    arr = ["granblue-bot 公式 - グラブル公式"
           "granblue-bot 火理想 - 火マグナ理想編成"]

    for value in arr then log(value)




    #"var keylist = {公式:\"granblue-bot 公式-グラブル公式 \"};
    #console.log(keylist.[res])"




#robot.respond /天司武器([\s ]?)素材([\s ]?)(ミカ|剣|ミカ剣)?$/i, (res) ->

#    res.send "granblue-botのコマンド一覧\n
#                 コマンド         　             説明\n
#             <基本＞\n
#               granblue-bot 公式 　         : グラブル公式\n
#               granblue-bot 猫ちゃん        : センちゃん画像\n
#               granblue-bot スキル餌武器    : 武器スキル上げ表\n\n
#             ＜編成＞\n
#               granblue-bot 火理想          : 火マグナ理想編成\n
#               granblue-bot 水理想          : 水マグナ理想編成\n
#               granblue-bot 土理想          : 土マグナ理想編成\n
#               granblue-bot 光理想          : 光マグナ理想編成\n
#               granblue-bot 闇理想          : 闇マグナ理想編成\n
#               granblue-bot ヴァルナ        : ヴァルナ編成\n\n
#             ＜特殊武器＞\n
#               granblue-bot バハ武器        : バハムート武器の素材情報\n
#               granblue-bot 天司武器        : 天司武器の概要\n
#               granblue-bot 英雄武器 素材   : 英雄武器の素材情報\n
#               granblue-bot 英雄武器 性能   : 英雄武器の性能について\n
#               granblue-bot オメガ武器      : オメガ武器の素材情報\n\n
#             ＜十天衆＞\n
#               granblue-bot 十天衆 素材     : 十天衆開放までの素材数\n
#               granblue-bot 十天衆 評価     : 各十天衆の評価\n
#               granblue-bot 十天衆 最終開放 : 十天衆の最終上限開放までの素材"
