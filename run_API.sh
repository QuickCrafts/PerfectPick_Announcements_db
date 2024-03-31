docker build -t perfectpick_announcements_db .
docker run -d -t -i -p 3306:3306 -v $PWD/data:/var/lib/mysql --name perfectpick_announcements_db perfectpick_announcements_db