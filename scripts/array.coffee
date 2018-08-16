#Description:
#   "ヘルプ, キーリスト, keylist, コマンド"のいずれかを入力すると、granblue-botのコマンド一覧を取得する.
module.exports = (robot) ->
  robot.respond /(ヘルプ|キーリスト|keylist|コマンド)$/i, (res) ->


    res.send "var keylist = {公式:\"granblue-bot 公式-グラブル公式 \"};
console.log(keylist.[res])";

#res.send "granblue-botのコマンド一覧\n"

