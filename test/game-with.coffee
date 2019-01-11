Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/game-with.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'skill', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says スキル餌 to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot スキル餌'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot スキル餌'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/33197'],
      ]

