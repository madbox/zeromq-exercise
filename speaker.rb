require 'rbczmq'

IPC_SOCKET_NAME = 'ipc:///tmp/sock'

ctx = ZMQ::Context.new
sock = ctx.socket(ZMQ::PUSH)
sock.connect(IPC_SOCKET_NAME)
sock.send('hello from: ' + Process.pid.to_s + '; at: ' + Time.now.to_s)
