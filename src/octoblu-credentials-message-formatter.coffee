ReturnValue = require 'nanocyte-component-return-value'

class OctobluCredentialsMessageFormatter extends ReturnValue
  constructor: (@metadata)->
    super @metadata

  onEnvelope: ({config}) =>
    return {
      devices: [config.deviceId || 'c339f6ce-fe26-4788-beee-c97605f50403']
      topic: 'get-credentials'
      payload:
        nodeId: config.id
        transactionId: @metadata.transactionId
    }

module.exports = OctobluCredentialsMessageFormatter
