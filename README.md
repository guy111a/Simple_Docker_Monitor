# Simple_Docker_Monitor
demonstrate a simple and cool way to monitor the docker containers running on your home lab server


We assume of course, that you run your containers with the option “—restart on-failure“ or “—restart unless-stopped” as needed .. but just in case.
This project should demonstrate a fun and simple way to utilize bash and python to monitor the running containers.

You may also start / restart a container should it stop.


You should make the following changes:
1. add real docker images names into the file "docker_images"
2. change the telegram-token to a real one
3. change the telegram-chat-id to a real one

You can now add a crontab to run the "monitor.sh" at a desired interval automatically.

Good luck !
