# SHELL := /bin/bash

.PHONY: serviceA
serviceA:
	@ bash serviceA/deploy.sh;

.PHONY: serviceB
serviceB: 
	@ bash serviceB/deploy.sh;

.PHONY: serviceC
serviceC: 
	@ bash serviceC/deploy.sh;
