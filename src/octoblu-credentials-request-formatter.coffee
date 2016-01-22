ReturnValue = require 'nanocyte-component-return-value'

class OctobluCredentialsRequestFormatter extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = OctobluCredentialsRequestFormatter
