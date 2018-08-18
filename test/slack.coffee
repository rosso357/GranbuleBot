Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/slack.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'slack', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says issue number to hubot', ->
    beforeEach ->
      return co =>
        yield this.room.user.say 'uncle', '#35'
        yield this.room.user.say 'uncle', 'test #35'
        yield this.room.user.say 'uncle', '#35 test'
        yield this.room.user.say 'uncle', '#r35 test'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','#35'],
        ['hubot','https://github.com/rosso357/GranbuleBot/issues/35'],
        ['uncle','test #35'],
        ['hubot','https://github.com/rosso357/GranbuleBot/issues/35'],
        ['uncle','#35 test'],
        ['hubot','https://github.com/rosso357/GranbuleBot/issues/35'],
        ['uncle','#r35 test'],
      ]
