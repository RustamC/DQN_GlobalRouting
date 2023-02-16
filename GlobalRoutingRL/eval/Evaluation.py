import os

if __name__ == "__main__":
    benchmark_num = []
    for i in range(len(benchmark_num)):
        command = "perl eval2008.pl ../benchmark_reduced/test_benchmark_{num}.gr\
        ../solutionsDRL/test_benchmark_{num}.gr.DRLsolution".format(num=benchmark_num[i])
        os.system(command)
        command = "perl eval2008.pl ../benchmark_reduced/test_benchmark_{num}.gr\
        ../solutionsA_reduced/test_benchmark_{num}.grAstar_solution".format(num=benchmark_num[i])
        os.system(command)
