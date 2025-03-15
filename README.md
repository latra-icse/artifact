# Artifact for "Latra: A Template-Based Language-Agnostic Transformation Framework for Effective Program Reduction"

## Introduction

Thank you for evaluating this artifact.

To evaluate this artifact, a Linux machine with [docker](https://docs.docker.com/get-docker/) is needed.

## Note

Since all experiments take a long time to complete, it is recommended to use session management tools like Screen or tmux when running them on a remote server to ensure uninterrupted execution.

## Docker Environment Setup

1. If Docker is not installed, follow the [instructions](https://docs.docker.com/get-docker/) to set it up.
2. Pull the Docker image:
   ```
   docker pull latratool/latra_artifact:latest
   ```
3. Start a container
   ```
   docker container run --cap-add SYS_PTRACE --interactive --tty latratool/latra_artifact:latest /bin/bash
   ```
   Then, navigate to the benchmark directory:
   ```
   cd /tmp/benchmark/
   ```

## Benchmark Suites

Under the `benchmark` directory of the project, the benchmarks are located in:
- `./c_benchmarks`: benchmark-C which consists of 20 C programs;
- `./smt_benchmarks`: benchmark-SMTLIB which consists of 205 SMTLIB programs.

## Implementation
We implemented all the algorithms discussed in this paper using [Perses](https://github.com/uw-pluverse/perses). To run the evaluation, Vulcan, Latra, C-Reduce, and ddSMT are required. For convenience, we have pre-built these tools and placed them in `/tmp/binaries/` within the Docker image, as well as in the `binaries` directory of this repository. Additionally, three JAR files are required for the evaluation:
```
/tmp/binaries/
|-- atn_perses_main_deploy.jar
|-- latra_deploy.jar
`-- token_counter_deploy.jar
```

## Run Experiments with C Benchmarks

First, navigate to the benchmark directory:
```
cd /tmp/benchmark/
```
Then, launch the experiment using the following command:
```
./run_exp_parallel.py -s <benchmarks> -r <reducer> -o <output_dir> -j <number_of_cpus>
```
For example, to run the experiment on C benchmarks using Vulcan, Latra, and C-Reduce with 20 CPU cores, use:
```
./run_exp_parallel.py -s c_benchmarks/*/ -r trec_vulcan latra creduce -o c_results/ -j 20
```
Once the experiment is complete, convert the results to CSV files:
```
./convert_result_to_csv.py -d c_results/trec_vulcan_0/*  -o vulcan_c.csv
./convert_result_to_csv.py -d c_results/latra_0/*  -o latra_c.csv
./convert_result_to_csv.py -d c_results/creduce_0/*  -o creduce_c.csv
```

## Run Experiments with SMT Benchmarks
To run the SMT benchmark experiments on Vulcan and Latra, move into the benchmark directory first.
```
cd /tmp/benchmark/
```
Then, launch the experiment using the following command:
```
./run_exp_parallel.py -s <benchmarks> -r <reducer> -o <output_dir> -j <number_of_cpus>
```
For example, to run the experiment on SMT benchmarks using Vulcan, Latra with 20 CPU cores, use:
```
./run_exp_parallel.py -s smt_benchmarks/*/ -r trec_vulcan latra -o smt_results/ -j 20
```
Once the experiment is completed, the results can be converted into CSV format for analysis. Use the following commands:
```
./convert_result_to_csv.py -d smt_results/vulcan_0/*  -o vulcan_smt.csv
./convert_result_to_csv.py -d smt_results/latra_0/*  -o latra_smt.csv
```

To run ddSMT, please download the Docker image "ddsmt-artifact-2021.tar.xz" from https://zenodo.org/record/4721925 (md5sum: d66d3c321c9bb471e583c9107f953633).

Once downloaded, follow these steps to set up and run ddSMT:
- Load the ddSMT base image `docker load --input <path to ddsmt-artifact-2021.tar.xz>`
- Start the docker container `docker run -v <local directory>:/home/ddsmt/mount -it ddsmt-artifact-2021 /bin/bash`
- Run the benchmarks `./benchmarks.py`
- Extract and convert the results `./results.py`

## RQ1 & 2: Effectivenss and Efficiency of Latra

Finding 1: The paper claims that Latra improves the reduction performance of language-agnostic reducers, reducing 33.77% and 9.17% more tokens on average than Vulcan in C and SMTLIB benchmarks. 

Finding 2: Latra demonstrates comparable reduction performance to language-specific reducers. It outperforms ddSMT and achieves a reduction capability similar to C-Reduce. The slight advantage of C-Reduce in token reduction is not statistically significant.

Finding 3: Latra outperforms Vulcan in terms of reduction efficiency in SMT. However, it runs slower than the language-specific reducer ddSMT in both C and SMT benchmarks.

To reproduce Table 2 in the paper, follow the instructions in:
- [Docker Environment Setup](#docker-environment-setup)
- [Run Experiments with C Benchmarks](#run-experiments-with-c-benchmarks)
- [Run Experiments with SMT Benchmarks](#run-experiments-with-smt-benchmarks)

Once the experiments are completed, combine the data from the three generated CSV files obtained from running experiments on C Benchmarks to produce Table 2, which presents the performance of reducers on C benchmarks.

To reproduce Figure 4, store the token size, query amount, and execution time of the three reducers in each CSV file, as obtained from the experiment results.Then, use the script located in the `benchmark` directory of this repository and run the following command:
```
python ./boxplot-smt.py
```
This script will generate the figures as well as the statistical summaries for each metric.

To compute the p-value, run the command:
```
python ./p-value.py
```