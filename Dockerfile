
FROM c3h3/oblas-py278-data

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN git clone https://github.com/c3h3/councilor-voter-guide.git /tmp/g0v-cvg && cd /tmp/g0v-cvg && git checkout 47821274c242ce68f2d8d18d4bb0d050d6481311
RUN cd /tmp/g0v-cvg/crawler/ && python setup.py install && pip install  -r requirements.txt

RUN mkdir items
RUN mkdir logs

VOLUME ["/items", "/logs"]

EXPOSE 6800

CMD scrapyd


