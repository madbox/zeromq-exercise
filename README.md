# zeromq-exercise

This repo contains simple apps to tru out zeromq. Currently it has 2 apps:
* listener.rb
* speaker.rb

Listener is a simple server that listen to zeromq PUSH/PULL inter-process queue. It Endlessly pulls any messages and just prints them to stdout.

Speaker is a message generator script. You can run it once or multiple times in parallel. Any instance will generate one message and push it to queue.

#How to play with it

Assuming that you running Linux box.

1. setup

Checkout repo and "cd" into repo dir.

```bash
rvm install ruby-2.3.0
bundle install
```

2. run listener

Open terminal and run "Listener"

```bash
bundle exec ruby listener.rb
```

3. run speaker app

Open another terminal

```bash
bundle exec ruby speaker.rb

bundle exec ruby speaker.rb & bundle exec ruby speaker.rb & bundle exec ruby speaker.rb
```
The last line runs 3 instances of 'speaker' in parallel
