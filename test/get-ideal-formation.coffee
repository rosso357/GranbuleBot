Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/get-ideal-formation.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'event', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says ideal to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot 火理想'
      this.room.user.say 'uncle', '@hubot 水理想'
      this.room.user.say 'uncle', '@hubot 土理想'
      this.room.user.say 'uncle', '@hubot 風理想'
      this.room.user.say 'uncle', '@hubot 光理想'
      this.room.user.say 'uncle', '@hubot 闇理想'
      this.room.user.say 'uncle', '@hubot ヴァルナ'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot 火理想'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47075'],
        ['uncle','@hubot 水理想'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47186'],
        ['uncle','@hubot 土理想'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47428'],
        ['uncle','@hubot 風理想'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47217'],
        ['uncle','@hubot 光理想'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47571'],
        ['uncle','@hubot 闇理想'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/47695'],
        ['uncle','@hubot ヴァルナ'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/21615'],
      ]

