# Blog app backend + MySQL

<b>Run MySQL in Docker:</b>


`docker run --name=nrnk-rps -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_ROOT_HOST=% -d -e TZ=Europe/Riga nrnk/mysql-server`


`docker exec -it nrnk-rps bash`


`mysql -uroot -p`


Enter password: `123456`


`CREATE DATABASE rps;`


type `\q` to exit mysql


type `exit` to exit bash


Change directory to where 'blog.sql' file from this repo is located `cd ...`


`docker exec -i nrnk-rps mysql -uroot -p123456 rps < rps.sql`


<b>Run Backend:</b>\
`npm i` and then `npm run start:nodemon`

Run Frontend: https://github.com/naurisievins/i18n-Simple-RPS-game-front