FROM node:carbon
MAINTAINER Wonwoo Kang kangww@brandi.co.kr

#app 폴더 만들기 - NodeJS 어플리케이션 폴더
RUN mkdir -p /app
#winston 등을 사용할떄엔 log 폴더도 생성

#어플리케이션 를 Workdir로 지정 - 서버가동용
WORKDIR /app

#서버 묶음파일 복사
ADD ./ /app

#패키지파일들 받기
RUN npm install

#배포버젼으로 설정
ENV NODE_ENV=production

#서버실행
CMD node nodejs_tutorial_server.js
