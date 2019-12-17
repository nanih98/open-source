# About Dockerfile

Official image of wordpress php 7.4 apache, with redis extension and some useful tools.

# Why redis extension?


It is necessary to later configure redis (accompanied by a redis container from docker-compose.yml), to store the wordpress cache. To configure which cache to store we will do it from wordpress with the w3 total cache plug-in or simply with the redis cache plugin
