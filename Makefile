# SHELL := /bin/bash

.PHONY: A
A:
	@ bash serviceA/deploy.sh;

.PHONY: B
B: 
	@ bash serviceB/deploy.sh;

.PHONY: C
C: 
	@ bash serviceC/deploy.sh;
