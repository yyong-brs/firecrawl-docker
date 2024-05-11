# base image with node and pnpm
FROM guergeiro/pnpm:current-8

RUN git clone https://github.com/mendableai/firecrawl.git

WORKDIR /firecrawl/apps/api

RUN cp .env.example .env
RUN pnpm config set registry https://registry.npmmirror.com
RUN pnpm install

ADD start.sh /firecrawl/apps/api

RUN chmod +x /firecrawl/apps/api/start.sh
# set jdk8 env
ENV REDIS_URL=redis://localhost:6379
ENV USE_DB_AUTHENTICATION=false

EXPOSE 3002
# exec java -version
CMD ["sh","-c","/firecrawl/apps/api/start.sh"]