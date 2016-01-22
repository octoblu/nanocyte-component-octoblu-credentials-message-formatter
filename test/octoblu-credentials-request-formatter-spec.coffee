ReturnValue = require 'nanocyte-component-return-value'
OctobluCredentialsRequestFormatter = require '../src/octoblu-credentials-request-formatter'

describe 'OctobluCredentialsRequestFormatter', ->
  beforeEach ->
    @sut = new OctobluCredentialsRequestFormatter

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
