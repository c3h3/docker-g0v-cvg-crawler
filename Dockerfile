
FROM c3h3/oblas-py278-data

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN git clone https://github.com/c3h3/councilor-voter-guide.git /tmp/g0v-cvg && cd /tmp/g0v-cvg && git checkout 096d9d8cee034a2eb404b727aecb76dde80c0e46
RUN cd /tmp/g0v-cvg/crawler/ && python setup.py install && pip install  -r requirements.txt

RUN mkdir items
RUN mkdir logs

VOLUME ["/items", "/logs"]

EXPOSE 6800

CMD scrapyd


