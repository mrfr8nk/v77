FROM quay.io/mrfrank/subzero-md:latest

WORKDIR /root/mega-mdx

RUN git clone https://github.com/mrfr8nk/SUBZERO-MD . && \
    npm install && \
    npm run build

EXPOSE 5000

CMD ["npm", "run", "start:optimized"]
