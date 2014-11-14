[c3h3 / g0v-cvg-crawler](https://registry.hub.docker.com/u/c3h3/g0v-cvg-crawler/)
======================

# How to use this images

### Run Scarpy Server:

```
docker run --name g0v -p forward_port:6800 -v outside_items:/items -v outside_logs:/logs -d c3h3/g0v-cvg-crawler
```
- "forward_port" is the port you want to forward into docker image (EXPOSE 6800)
- "outside_items" is the directory you want to mount into docker image as /items 
- "outside_logs" is the directory you want to mount into docker image as /logs 

### Link Scarpy Server for Deploy and Submit Job:

```
docker run --link g0v:g0v -it c3h3/g0v-cvg-crawler /bin/bash
```

### Example of Deploy ttc:

in a running docker instance which linked with g0v (Scarpy Server), you can use the following command to deploy tcc crawler to server:

```
cd /tmp/g0v-cvg/crawler/tcc && python deploy.py
```

### Example of Crawl ttc.bills :

in a running docker instance which linked with g0v (Scarpy Server), you can use the following command to deploy tcc crawler to server:

```
cd /tmp/g0v-cvg/crawler/bin && python crawl_tcc_bills.py
```
