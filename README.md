# phylobuntu

Ubuntu 24.04 LTS bash for phylogenetics classes.

This is the docker image configuration for [godrigos/phylobuntu](https://hub.docker.com/repository/docker/godrigos/phylobuntu) on Docker Hub.

It contains:
* MrBayes - Bayesian Inference of Phylogeny
* IQTree - Efficient phylogenetic inference by maximum likelihood
* raxml - Randomized Axelerated Maximum Likelihood of phylogenetic trees (call it as raxmlHPC)
* phyml - Phylogenetic estimation using Maximum Likelihood
* t-coffee - Multiple Sequence Alignment
* amap-align - Protein multiple alignment by sequence annealing
* clustalo - General purpose multiple sequence alignment program for proteins
* clustalw - Global multiple nucleotide or peptide sequence alignment
* dialign-tx - Segment-based multiple sequence alignment
* fsa - Fast Statistical Alignment of protein, RNA or DNA sequences
* kalign - Global and progressive multiple sequence alignment
* mafft - Multiple alignment program for amino acid or nucleotide sequences
* muscle - Multiple sequence comparison by log-expectation
* mustang - Multiple structural alignment of proteins
* ncbi-blast+ - Next generation suite of BLAST sequence search tools
* poa - Partial Order Alignment for multiple sequence alignment
* prank - Probabilistic Alignment Kit for DNA, codon and amino-acid sequences
* probcons - PROBabilistic CONSistency-based multiple sequence alignment
* proda - Multiple alignment of protein sequences
* tm-align - Structural alignment of proteins
* Phyton - An interpreted, high-level and general-purpose programming language. It is dynamically typed and garbage-collected.
* pip - The package installer for Python. You can use pip to install packages from the Python Package Index and other indexes.
* R - R is ‘GNU S’, a freely available language and environment for statistical computing and graphics.

This image also contain auxiliary libraries to the main applications installed as well as R and Python 3 packages.

**phylobuntu** is most intended to be used in phylogenetics classes. A new user without root access is created and is the default user of the image.

You should run a container of it as: `docker run -it --mount type=bind,source=my/host/dir,target=/home/student godrigos/phylobuntu`. This will start a **phylobuntu** container with your host directory content available for use. Just change `my/host/dir` to the path of the directory you want to make available to the container. Remember, inside the binded host directory the container user will have complete control, so it will be capable to create, edit and delete content. Do not store unique copies or sensitive data in such directory.
