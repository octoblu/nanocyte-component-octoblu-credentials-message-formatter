ReturnValue = require 'nanocyte-component-return-value'

class OctobluCredentialsMessageFormatter extends ReturnValue
  onEnvelope: ({config,message}) =>
    return {
      devices: [config.deviceId || 'c339f6ce-fe26-4788-beee-c97605f50403']
      topic: 'get-credentials'
      payload:
        nodeId: config.id
        messageId: message.messageId
    }

module.exports = OctobluCredentialsMessageFormatter
