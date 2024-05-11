# docker-react

начал изучение докера, решил завернуть пустое Vite + React-приложение в докер контейнер

копируем файлы с репозитория на компьютер, если есть Node.JS:

1. открываем терминал
2. npm install
3. npm run dev (dev build)
   prod build:
   1. npm install
   2. npm run build
   3. npm run preview
  
чтобы запустить приложение через Docker container, собираем Docker image:
  1. открываем терминал
  2. docker build -t "NAME IMAGE" .

далее через любой bash создаем Docker container

docker run --name myViteProject --restart=always -p 3000:5173 -d test # после перезагрузки будет работать заново
docker run --rm --name myViteProject -p 3000:5173 -d test #создание докер контейнера, который после остановки удаляется
