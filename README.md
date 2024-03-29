# phylobuntu

Ubuntu 22.04 LTS bash for phylogenetics classes.

This is the docker image configuration for [godrigos/phylobuntu](https://hub.docker.com/repository/docker/godrigos/phylobuntu) on Docker Hub.

It contains:
* MrBayes (3.2.6+dfsg-2ubuntu2) - Bayesian Inference of Phylogeny
* IQTree (1.6.12+dfsg-1build1) - Efficient phylogenetic inference by maximum likelihood
* raxml (8.2.12+dfsg-4) - Randomized Axelerated Maximum Likelihood of phylogenetic trees (call it as raxmlHPC)
* phyml (3:3.3.20190909-1) - Phylogenetic estimation using Maximum Likelihood
* t-coffee (12.00.7fb08c2-4build1) - Multiple Sequence Alignment
* amap-align (2.2+git20080214.600fc29+dfsg-1build1) - Protein multiple alignment by sequence annealing
* clustalo (1.2.4-4build1) - General purpose multiple sequence alignment program for proteins
* clustalw (2.1+lgpl-6build1) - Global multiple nucleotide or peptide sequence alignment
* dialign-tx (1.0.2-12) - Segment-based multiple sequence alignment
* fsa (1.15.9+dfsg-4build1) - Fast Statistical Alignment of protein, RNA or DNA sequences
* kalign (1:2.03+20110620-5) - Global and progressive multiple sequence alignment
* mafft (7.453-1) - Multiple alignment program for amino acid or nucleotide sequences
* muscle (1:3.8.1551-2build1) - Multiple sequence comparison by log-expectation
* mustang (3.2.3-3build1) - Multiple structural alignment of proteins
* ncbi-blast+ (2.9.0-2) - Next generation suite of BLAST sequence search tools
* poa (2.0+20060928-7) - Partial Order Alignment for multiple sequence alignment
* prank (0.0.170427+dfsg-2build1) - Probabilistic Alignment Kit for DNA, codon and amino-acid sequences
* probcons (1.12-12build1) - PROBabilistic CONSistency-based multiple sequence alignment
* proda (1.0-12build1) - Multiple alignment of protein sequences
* tm-align (20190822+dfsg-2build1) - Structural alignment of proteins
* Phyton (3.9.10) - An interpreted, high-level and general-purpose programming language. It is dynamically typed and garbage-collected.
* pip (20.0.2) - The package installer for Python. You can use pip to install packages from the Python Package Index and other indexes.
* R (4.2.0) - R is ‘GNU S’, a freely available language and environment for statistical computing and graphics.

This image also contain auxiliary libraries to the main applications installed as well as R and Python 3 packages.

**phylobuntu** is most intended to be used in phylogenetics classes. A new user without root access is created and is the default user of the image.

You should run a container of it as: `docker run -it --mount type=bind,source=my/host/dir,target=/home/student godrigos/phylobuntu`. This will start a **phylobuntu** container with your host directory content available for use. Just change `my/host/dir` to the path of the directory you want to make available to the container. Remember, inside the binded host directory the container user will have complete control, so it will be capable to create, edit and delete content. Do not store unique copies or sensitive data in such directory.
