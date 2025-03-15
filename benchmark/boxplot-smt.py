import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import FuncFormatter

meanpointprops = dict(marker='D', markeredgecolor='black',
                      markerfacecolor='black')
def plot_dot_boxplots_without_outliers(csv_file, label,outputfile):
    fontsize = 28

    plt.rcParams['font.family'] = 'Times New Roman'
    df = pd.read_csv(csv_file)
    numeric_cols = df.select_dtypes(include=['number']).columns

    plt.figure(figsize=(6, 8))

    for i, col in enumerate(numeric_cols):
        all_data = df[col]

        plt.boxplot(all_data, positions=[i + 1], widths=0.4,
                    showmeans=True, meanprops=meanpointprops)

        y = all_data
        x = np.random.normal(i + 1, 0.04, size=len(y))
        plt.scatter(x, y, alpha=0.4)

    plt.yticks(fontsize=24)
    plt.gca().yaxis.set_major_formatter(FuncFormatter(lambda x, _: f'{int(x):,}'))
    plt.xticks(range(1, len(numeric_cols) + 1), numeric_cols, fontsize=fontsize)
    plt.ylabel(label, fontsize=fontsize)

    metrics = ['Mean', 'Median', 'STD']
    values = [
        [np.mean(df[col]) for col in numeric_cols],
        [np.median(df[col]) for col in numeric_cols],
        [np.std(df[col], ddof=1) for col in numeric_cols]
    ]

    stats_df = pd.DataFrame(values, index=metrics, columns=numeric_cols)

    stats_df = stats_df.round(2).astype(int)

    the_table = plt.table(cellText=stats_df.values,
                          rowLabels=stats_df.index,
                          # colLabels=stats_df.columns,
                          bbox=[0, -0.32, 1, 0.25],  # Adjust bbox as needed,
                          # fontsize=30,
                          loc='bottom')
    the_table.set_fontsize(24)
 
    plt.subplots_adjust(left=0.2, bottom=0.18)


    plt.grid(False)
    plt.tight_layout()
    # plt.subplots_adjust(bottom=0.3)  # Adjust bottom space for the table
    plt.savefig(outputfile)
    plt.show()

def plot_c_dot_boxplots_without_outliers(csv_file, label,outputfile):
    fontsize = 28

    plt.rcParams['font.family'] = 'Times New Roman'
    df = pd.read_csv(csv_file)
    numeric_cols = df.select_dtypes(include=['number']).columns
    numeric_cols = numeric_cols[0:2]
    plt.figure(figsize=(6, 8))

    plt.axhline(y=0, color='r', linestyle='--', linewidth=1)

    for i, col in enumerate(numeric_cols):
        all_data = - (df[col] - df['Latra']) / df[col] * 100

       
        plt.boxplot(all_data, positions=[i + 1], widths=0.4,
                    showmeans=True, meanprops=meanpointprops)

        
        y = all_data
        x = np.random.normal(i + 1, 0.04, size=len(y))
        plt.scatter(x, y, alpha=0.4)

    plt.yticks(fontsize=24)
    plt.gca().yaxis.set_major_formatter(FuncFormatter(lambda x, _: f'{int(x):}'))
    plt.xticks(range(1, len(numeric_cols) + 1), [baseline for baseline in numeric_cols],
               fontsize=fontsize)
    plt.ylabel(label, fontsize=fontsize)

    
    metrics = ['Mean', 'Median', 'STD']
    values = [
        [np.mean(- (df[col] - df['Latra']) / df[col]) for col in numeric_cols],
        [np.median(- (df[col] - df['Latra']) / df[col]) for col in numeric_cols],
        [np.std(- (df[col] - df['Latra']) / df[col], ddof=1) for col in numeric_cols]
    ]
    formatted_values = [[f"{value:.2%}" for value in sublist] for sublist in values]



    the_table = plt.table(cellText=formatted_values,
                          rowLabels=metrics,
                          # colLabels=stats_df.columns,
                          bbox=[0, -0.32, 1, 0.25],  # Adjust bbox as needed,
                          # fontsize=30,
                          loc='bottom')
    the_table.set_fontsize(24)
    
    plt.subplots_adjust(left=0.2, bottom=0.18)


    plt.ylim(-80, 90) 

    plt.grid(False)
    plt.tight_layout()
    # plt.subplots_adjust(bottom=0.3)  
    plt.savefig(outputfile)
    plt.show()


csv_file = 'smt-queries.csv'
plot_dot_boxplots_without_outliers(csv_file,label = "Queries",
                                   outputfile= '../boxplots/smt-queriesv2.pdf')

csv_file = 'smt-time.csv'
plot_dot_boxplots_without_outliers(csv_file,label = "Time",
                                   outputfile= '../boxplots/smt-timev2.pdf')

csv_file = 'smt-tokens.csv'
plot_dot_boxplots_without_outliers(csv_file,label = "Tokens",
                                   outputfile= '../boxplots/smt-tokensv2.pdf')


csv_file = 'smt-tokens.csv'
plot_c_dot_boxplots_without_outliers(csv_file,label = "C(%)",
                                   outputfile= '../boxplots/smt-cratiov2.pdf')