ReturnValue = require 'nanocyte-component-return-value'
OctobluCredentialsMessageFormatter = require '../src/octoblu-credentials-message-formatter'

describe 'OctobluCredentialsMessageFormatter', ->
  beforeEach ->
    @metadata = {}
    @sut = new OctobluCredentialsMessageFormatter @metadata

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      beforeEach ->
        @metadata.transactionId = 'transaction-id'
        @result = @sut.onEnvelope
          config:
            deviceId: 'credential-service-uuid'
            id: 'node-uuid'

      it 'should return the message', ->
        expect(@result).to.deep.equal
          devices: ['credential-service-uuid']
          topic: 'get-credentials'
          payload:
            nodeId: 'node-uuid'
            transactionId: 'transaction-id'
