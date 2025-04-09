# Simple_Docker_Monitor

Demonstrate a simple and cool way to monitor Docker containers running on your home lab server.

We assume, of course, that you run your containers with the --restart on-failure or --restart unless-stopped option as needed — but just in case, this project demonstrates a fun and simple way to use Bash and Python to monitor running containers.

You may also start or restart a container if it stops.

To get started, make the following changes:
Add actual Docker image names to the file docker_images

Replace the Telegram token with your real bot token

Replace the Telegram chat ID with your actual chat ID

You can now add a crontab entry to run monitor.sh at your desired interval automatically.

Good luck! 🚀
