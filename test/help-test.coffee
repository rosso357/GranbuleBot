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

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot　ヘルプ'],
        ['hubot', msg],
      ]

