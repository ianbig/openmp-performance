# Problem One Measurement Guide
## Goal of Measurement
Measure the performance of 3 different approaches with different number of threads (i.e. 2, 4, 8 threads). And plot the plot the speedup curve by taking the ratio of the sequential execution time to the parallel execution time. For reference, this [github repo](https://github.com/rijish45/Parallel-Programming/blob/master/OpenMP/report.pdf) is pretty good on plotting the graph.

## Description of Approach
For ths first two approach, lock and atomic, could refer [here](https://sakai.duke.edu/access/content/group/783e90e7-6f44-4eb4-b04f-aff32c054086/shared_mem_performance.pdf) and [here](https://sakai.duke.edu/access/content/group/783e90e7-6f44-4eb4-b04f-aff32c054086/advanced_openmp.pdf). For the creative approach, it is fundamentally a technique of thread local storage, which we learn from ECE 650

## Parameters to Change
In each approach, the function call `omp_set_num_threads(int)` that could change number of thread. That is pretty much all you need to change when measure how different number of threads would affect run-time performance.

## Proof of Correctness of Code
Although I have test the correctness of the program by comparing the output with `correct_output.txt`, I haven't really test with the input of `uiuc-large.pgm`. So the output of larger input (i.e. `uiuc-large.pgm`) is still required. One easy way to do this is redirect your output to a file, and compare with the correct file `validation-large.txt` with `diff`. For example, if I try to proof the correctness of `histo_locks`, I would do the following steps:
1. $ ./histo_locks uiuc-large.pgm > locks_large_output.txt
2. $ diff locks_large_output.txt validation-large.txt
3. the expected output should only different in `Runtime = 4.33 seconds`


I would suggest still refer to the homework pdf for more concrete instruction :) Thanks!