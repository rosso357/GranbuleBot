Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/get-granblue-events.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'event', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says event to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot イベント'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot イベント'],
        ['hubot','https://xn--bck3aza1a2if6kra4ee0hf.gamewith.jp/article/show/29566'],
      ]

