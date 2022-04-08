ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install analysis-nori

COPY jaso-analyzer-plugin-7.10.2.zip /usr/share/elasticsearch/jaso-analyzer-plugin-7.10.2.zip
RUN elasticsearch-plugin install file:///usr/share/elasticsearch/jaso-analyzer-plugin-7.10.2.zip

COPY javacafe-analyzer-plugin-7.10.2.zip /usr/share/elasticsearch/javacafe-analyzer-plugin-7.10.2.zip
RUN elasticsearch-plugin install file:///usr/share/elasticsearch/javacafe-analyzer-plugin-7.10.2.zip
