<<<<<<< HEAD
SHELL := /bin/bash

.PHONY: A
A:
	echo "A";

.PHONY: B
B: 
	echo "B";

.PHONY: C
C: 
	echo "C";
=======
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
>>>>>>> cloud
