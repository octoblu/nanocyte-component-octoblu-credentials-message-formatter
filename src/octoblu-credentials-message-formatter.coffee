ReturnValue = require 'nanocyte-component-return-value'

class OctobluCredentialsMessageFormatter extends ReturnValue
  onEnvelope: ({config}) =>
    return {
      devices: [config.deviceId]
      topic: 'get-credentials'
      payload:
        nodeId: config.id
    }

module.exports = OctobluCredentialsMessageFormatter
