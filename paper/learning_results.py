import matplotlib
matplotlib.use("Agg")

import glob
import os
import pickle
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
sns.set(style="darkgrid")

def smooth_curve(x, y):
    halfwidth = int(np.ceil(len(x) / 50))  # Halfwidth of our smoothing convolution
    k = halfwidth
    xsmoo = x
    ysmoo = np.convolve(y, np.ones(2 * k + 1), mode='same') / np.convolve(np.ones_like(y), np.ones(2 * k + 1),
        mode='same')
    return xsmoo, ysmoo


def load_results(domain_names):
    all_results = {}
    for domain_name in domain_names:
        all_results[domain_name] = []
        for pkl_fname in glob.glob(os.path.join("/Users/tom/phd/curious_operator_learning/results/", 
            domain_name, "random", "*.pkl")):
            with open(pkl_fname, "rb") as f:
                saved_results = pickle.load(f)
            all_results[domain_name].append(saved_results)
    return all_results

def plot_results(env_name_to_results, env_name_to_label, outfile="learning_plot.png"):
    for env_name, results in env_name_to_results.items():
        print(env_name)
        arr = np.array(results)[..., 1]
        y = np.mean(arr, axis=0)
        x = np.arange(len(y))
        x, y = smooth_curve(x, y)
        label = env_name_to_label[env_name]
        plt.plot(x, y, label=label)

    plt.legend(loc='lower right')
    plt.tight_layout()
    plt.savefig(outfile, dpi=500)
    print("Wrote out to {}.".format(outfile))


def main():
    env_name_to_label = {
        "tsp" : "TSP",
        "rearrangement" : "Gripper",
        "blocks" : "Blocks",
        "doors" : "Doors",
        "hanoi" : "Hanoi",
    }

    env_name_to_results = load_results(env_name_to_label.keys())
    plot_results(env_name_to_results, env_name_to_label)


if __name__ == "__main__":
    main()
