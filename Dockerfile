

FROM  node:24-slim



WORKDIR /app


# package로 시작하는 파일명의 json파일을 모두 ./에 복사
                    # (/app이 이앞에 기본설정)
COPY package*.json ./



# 답변이 필요하면 y 로 자동응답
RUN npm install -y


# src, uploads, deploy 폴더등을 도커 컨테이너의 /app으로 복사한다.
COPY . . 

# 해당 컨테이너의 포트 설정 (노드니까 3000)
EXPOSE 3000



CMD [ "npm", " start " ]  


