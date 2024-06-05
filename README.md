# docker-react

Начал изучение докера, решил завернуть пустое Vite + React-приложение в докер контейнер

Копируем файлы с репозитория на компьютер, если есть Node.JS:

* DEV BUILD

```bash
1. npm install
2. npm run dev
```

* PROD BUILD
```bash
1. npm install
2. npm run build
3. npm run preview
```

* DOCKER:
```bash
1. docker build -t "NAME IMAGE" .
```

* CREATE DOCKER CONTAINER WITH WORK AFTER RESTART:
 ```bash
   docker run --name myViteProject --restart=always -p 3000:5173 -d test 
 ```

* CREATE DOCKER CONTAINER WITH DELETE CONTAINER AFTER STOP:
 ```bash
   docker run --rm --name myViteProject -p 3000:5173 -d test
 ```

* 3000:5173 - 1. порт для докер контейнера
* 5173 - порт для React-приложения (порт можно изменить в tsconfig.ts)
* -d (выполнение Docker-container в фоновом режиме)
* -p (прослушивание портов)

# Полная документация к Docker:
https://docs.docker.com/go/guides/
