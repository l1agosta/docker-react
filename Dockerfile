FROM node:18.13.0-alpine 
# image, на котором запускается наше приложение, подтягивает NodeJS
WORKDIR /app
# workdir - рабочая директория
COPY ./package.json .
# копируем package.json из нашей директории
RUN npm install
# устанавливаем зависимости
COPY . .
# копируем все с нашего проекта в рабочую директорию
CMD [ "npm", "run", "dev" ]
# запускаем приложение