Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/get-keylist.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'get-keylist', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says to help to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot ヘルプ'

    msg = '"公式 : グラブル公式\\nイベント : グラブルイベント攻略情報\\nスキル餌 : 武器スキル上げシート表\\nねこちゃん : センちゃん画像\\n火理想 : 火マグナ理想編成\\n水理想 : 水マグナ理想編成\\n土理想 : 土マグナ理想編成\\n光理想 : 光マグナ理想編成\\n闇理想 : 闇マグナ理想編成\\nヴァルナ : ヴァルナ理想編成\\nバハ武器 素材 : バハムート武器の素材情報\\nバハ武器 性能 : バハムート武器の性能情報\\n天司武器 素材 : 天司武器の素材情報\\n天司武器 性能 : 天司武器の性能情報\\n天司武器 性能 ミカ/剣/ミカ剣 : ミカエル剣の性能情報\\n天司武器 性能 ガブ/杖/ガブ杖 : ガブリエル杖の性能情報\\n天司武器 性能 ウリ/拳/ウリ拳 : ウリエル拳の性能情報\\n天司武器 性能 ラファ/弓/ラファ弓 : ラファエル弓の性能情報\\n英雄武器 素材 : 英雄武器の素材情報\\n英雄武器 性能 : 英雄武器の性能情報\\nオメガ武器 : オメガ武器の素材情報\\n十天衆 素材 : 十天衆開放までの素材数情報\\n十天衆 評価 : 各十天衆の評価情報\\n十天衆 最終開放 : 十天衆の最終上限開放までの素材\\n"'



    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot ヘルプ'],
        ['hubot', msg],
      ]

