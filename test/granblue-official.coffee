Helper = require('hubot-test-helper');
scriptHelper = new Helper('./../scripts/granblue-official.coffee');
co     = require('co');
expect = require('chai').expect;

describe 'official', ->
  beforeEach ->
    this.room = scriptHelper.createRoom()

  afterEach ->
    this.room.destroy()

  context 'user says official to hubot', ->
    beforeEach ->
      this.room.user.say 'uncle', '@hubot 公式'

    it 'should reply to user', ->
      expect(this.room.messages).to.eql [
        ['uncle','@hubot 公式'],
        ['hubot','http://granbluefantasy.jp/'],
      ]

