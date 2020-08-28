import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

EXCEL_FILE = pd.ExcelFile("./Experimental-results-H2BR-jounal-HEVC-4G.xlsx")


class Index():
    def __init__(self, start, end):
        self.start = start
        self.end = end


# Indexes of columns for respective values (None, proposal standard, proposal boost, squat)
METHOD_INDEXES = {"None": Index(1, 11), "PS": Index(11, 21), "PB": Index(21, 31), "SQUAD": Index(31, 41)}
# Indexes of rows for metrics, relative to starting point of algorithm
METRIC_INDEXES = {"# Requests": 0, "AVG RET-Bitrate": 1, "AVG RET-Idx": 2, "AVG NEW-Bitrate": 3, "AVG OLD-Idx": 4,
                  "Lowest Buff": 5, "# Switches": 6, "Switches No-Ret": 7, "# Terminated Segments": 8,
                  "# Successful Download": 9, "Wasted Data": 10, "# Rebuff": 11, "Rebuff Duration (ms)": 12,
                  "Startup Phase (ms)": 13, "ITU QoE Score": 14, "Yin QoE Score": 15}
# Indexes for PLs
PL_INDEXES = {"PL0": 2, "PL1": 66, "PL3": 130, "PL5": 195}
# Indexes for Algorithms, relative to PLs
ALGORITHM_INDEXES = {"AGG": 0, "BBA": 20, "SARA": 40}


def read_sheet(excel_file, sheet_name):
    return pd.read_excel(excel_file, sheet_name)


def get_data_for_sd(sd, abr, metric):
    # Same SD, different PLs
    # Returns list of average of metrics with different method (None, Proposed, ProposedBoost, SQUAD)
    # List -> First element = PL0 -> 4 elements -> Averages of None, Proposed, ProposedBoost, SQUAD
    df = read_sheet(EXCEL_FILE, sd)
    avgs = []
    stddevs = []
    abr = ALGORITHM_INDEXES[abr]
    metric = METRIC_INDEXES[metric]
    for pl in PL_INDEXES.values():
        pl_avgs = []
        pl_stddevs = []
        for method in METHOD_INDEXES.values():
            data = np.asarray(df.iloc[pl + abr + metric].values[method.start:method.end])
            pl_avgs.append(np.mean(data))
            pl_stddevs.append(np.std(data))
        avgs.append(pl_avgs)
        stddevs.append(pl_stddevs)

    return avgs, stddevs


def get_data_for_pl(pl, abr, metric):
    # Same PL, different SDs
    # Returns list of average of metrics with different method (None, Proposed, ProposedBoost, SQUAD)
    # List -> First element = PL0 -> 4 elements -> Averages of None, Proposed, ProposedBoost, SQUAD
    SDs =["SD_1", "SD_2", "SD_4", "SD_6"]

    avgs = []
    stddevs = []

    pl = PL_INDEXES[pl]
    abr = ALGORITHM_INDEXES[abr]
    metric = METRIC_INDEXES[metric]

    for sd in SDs:
        df = read_sheet(EXCEL_FILE, sd)
        sd_avgs = []
        sd_stddevs = []
        for method in METHOD_INDEXES.values():
            data = np.asarray(df.iloc[pl + abr + metric].values[method.start:method.end])
            sd_avgs.append(np.mean(data))
            sd_stddevs.append(np.std(data))
        avgs.append(sd_avgs)
        stddevs.append(sd_stddevs)

    return avgs, stddevs


def draw_plots_for_pl(sd, abr, metric):
    avgs, stddevs = get_data_for_sd(sd, abr, metric)
    print(avgs)
    print(stddevs)
    labels = PL_INDEXES.keys()
    # Drawing
    x = np.arange(len(labels))  # the label locations
    width = 0.35  # the width of the bars
    fig, ax = plt.subplots()
    ax.bar(x - width / 2, avgs[0], width, color="#5AAEED", label="None", yerr=stddevs[0], capsize=10)
    ax.bar(x + width / 2, avgs[1], width, color="#3D3466", label="P. Std", yerr=stddevs[1], capsize=10)

    ax.set_ylabel(metric)
    ax.set_title(abr)
    ax.set_xticks(x)
    ax.set_xticklabels(labels)
    ax.legend()

    plt.show()


def draw_plots_for_sd(pl, abr, metric):
    avgs, stddevs = get_data_for_pl(pl, abr, metric)
    print(avgs)
    print(stddevs)
    labels = ["SD1", "SD2", "SD4", "SD6"]
    # Drawing
    x = np.arange(len(labels))  # the label locations
    width = 0.35  # the width of the bars
    fig, ax = plt.subplots()
    ax.bar(x - width / 2, avgs[0], width, color="#5AAEED", label="None", yerr=stddevs[0], capsize=10)
    ax.bar(x + width / 2, avgs[1], width, color="#3D3466", label="P. Std", yerr=stddevs[1], capsize=10)

    ax.set_ylabel(metric)
    ax.set_title(abr)
    ax.set_xticks(x)
    ax.set_xticklabels(labels)
    ax.legend()

    plt.show()


draw_plots_for_pl("SD_1", "AGG", "ITU QoE Score")
draw_plots_for_sd("PL0", "AGG", "ITU QoE Score")