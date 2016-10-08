require 'rbczmq'

# initializing zeromq context and socket binding
IPC_SOCKET_NAME = 'ipc:///tmp/sock'
ctx = ZMQ::Context.new
sock = ctx.socket(ZMQ::PULL)
sock.bind(IPC_SOCKET_NAME)

loop do
  message = sock.recv
  puts "Message recieved: " + message
end
