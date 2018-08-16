Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/cat.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'cat', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says cats to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot �~A��~A~S�~A��~B~C�~B~S'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot ねこちゃん'],
        ['hubot','http://livedoor.blogimg.jp/miniminigob/imgs/d/c/dc889573.jpg'],
      ]

