Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/class-iv.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'event', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says class iv to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot class iv 取得 手順'
      this.room.user.say 'uncle', '@hubot class iv'
      this.room.user.say 'uncle', '@hubot class 取得 取得'
      this.room.user.say 'uncle', '@hubot 英雄武器 素材'
      this.room.user.say 'uncle', '@hubot 英雄武器 性能'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot class iv 取得 手順'],
        ['uncle','@hubot class iv'],
        ['uncle','@hubot class 取得 取得'],
        ['uncle','@hubot 英雄武器 素材'],
        ['uncle','@hubot 英雄武器'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/102763'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/102763'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/102763'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/25465'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/38000'],
      ]

