Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/get-special-weapons.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'event', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says special weapon to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot バハ武器素材'
      this.room.user.say 'uncle', '@hubot バハ武器性能'
      this.room.user.say 'uncle', '@hubot バハ武器 素材'
      this.room.user.say 'uncle', '@hubot バハ武器 性能'
      this.room.user.say 'uncle', '@hubot 天司武器素材'
      this.room.user.say 'uncle', '@hubot 天司武器性能'
      this.room.user.say 'uncle', '@hubot 天司武器 素材'
      this.room.user.say 'uncle', '@hubot 天司武器 性能'
      this.room.user.say 'uncle', '@hubot 天司武器 素材 ミカ'
      this.room.user.say 'uncle', '@hubot 天司武器 素材 杖'
      this.room.user.say 'uncle', '@hubot 天司武器 素材 ウリ拳'
      this.room.user.say 'uncle', '@hubot 天司武器 素材 ラファ'
      this.room.user.say 'uncle', '@hubot オメガ武器'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot バハ武器素材'],
        ['uncle','@hubot バハ武器性能'],
        ['uncle','@hubot バハ武器 素材'],
        ['uncle','@hubot バハ武器 性能'],
        ['uncle','@hubot 天司武器素材'],
        ['uncle','@hubot 天司武器性能'],
        ['uncle','@hubot 天司武器 素材'],
        ['uncle','@hubot 天司武器 性能'],
        ['uncle','@hubot 天司武器 素材 ミカ'],
        ['uncle','@hubot 天司武器 素材 杖'],
        ['uncle','@hubot 天司武器 素材 ウリ拳'],
        ['uncle','@hubot 天司武器 素材 ラファ'],
        ['uncle','@hubot 英雄武器 素材'],
        ['uncle','@hubot 英雄武器 性能'],
        ['uncle','@hubot オメガ武器'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/48325'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/48325'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/33251'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/33251'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/52819'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/52819'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56677\nhttps://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56678\nhttps://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56679\nhttps://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56676'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56677\nhttps://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56678\nhttps://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56679\nhttps://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56676'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56677'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56678'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56679'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/56676'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/62344'],
      ]

