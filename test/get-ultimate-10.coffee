Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/get-ultimate-10.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'event', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says ultimate ten to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot 10天衆 素材'
      this.room.user.say 'uncle', '@hubot 十天衆最終素材'
      this.room.user.say 'uncle', '@hubot 十天衆 評価'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot 10天衆 素材'],
        ['uncle','@hubot 十天衆最終素材'],
        ['uncle','@hubot 十天衆 評価'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/23094'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/53662'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/22885'],
      ]

