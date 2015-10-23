chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'spanish-inquisition', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/spanish-inquisition')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/didn't expect.*spanish inquisition/i)
    expect(@robot.hear).to.have.been.calledWith(/not expect.*spanish inquisition/i)
