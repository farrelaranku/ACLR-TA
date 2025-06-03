import os
import pandas as pd
import matplotlib.pyplot as plt

# Load file log untuk masing-masing model dan pred_len

# pred_len = 96
f1 = r'checkpoints\Exchange_96_96_Informer_custom_ftM_sl96_ll48_pl96_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f1 = f1.replace('\\', '/')
df1 = pd.read_csv(f1, delimiter=',', header=None)

f2 = r'checkpoints\ExchangeACLR_96_96_Informer_custom_ftM_sl96_ll48_pl96_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f2 = f2.replace('\\', '/')
df2 = pd.read_csv(f2, delimiter=',', header=None)

# pred_len = 192
f3 = r'checkpoints\Exchange_96_192_Informer_custom_ftM_sl96_ll48_pl192_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f3 = f3.replace('\\', '/')
df3 = pd.read_csv(f3, delimiter=',', header=None)

f4 = r'checkpoints\ExchangeACLR_96_192_Informer_custom_ftM_sl96_ll48_pl192_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f4 = f4.replace('\\', '/')
df4 = pd.read_csv(f4, delimiter=',', header=None)

# pred_len = 336
f5 = r'checkpoints\Exchange_96_336_Informer_custom_ftM_sl96_ll48_pl336_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f5 = f5.replace('\\', '/')
df5 = pd.read_csv(f5, delimiter=',', header=None)

f6 = r'checkpoints\ExchangeACLR_96_336_Informer_custom_ftM_sl96_ll48_pl336_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f6 = f6.replace('\\', '/')
df6 = pd.read_csv(f6, delimiter=',', header=None)

# pred_len = 720
f7 = r'checkpoints\Exchange_96_720_Informer_exchange_high_ftM_sl96_ll48_pl720_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f7 = f7.replace('\\', '/')
df7 = pd.read_csv(f7, delimiter=',', header=None)

f8 = r'checkpoints\ExchangeACLR_96_720_Informer_exchange_high_ftM_sl96_ll48_pl720_dm512_nh8_el2_dl1_df2048_fc3_ebtimeF_dtTrue_Exp_0\train_results\ori\mantra_log.txt'
f8 = f8.replace('\\', '/')
df8 = pd.read_csv(f8, delimiter=',', header=None)

# Plotting
fig, axs = plt.subplots(2, 2, figsize=(15, 10))
axs = axs.flatten()

titles = [
    "Informer Validation Loss For Exchange_96_96",
    "Informer Validation Loss For Exchange_96_192",
    "Informer Validation Loss For Exchange_96_336",
    "Informer Validation Loss For Exchange_96_720"
]

data_pairs = [
    (df1, df2), (df3, df4), (df5, df6), (df7, df8)
]

for i in range(4):
    axs[i].plot(data_pairs[i][0].index + 1, data_pairs[i][0][3], label='NO ACLR')
    axs[i].plot(data_pairs[i][1].index + 1, data_pairs[i][1][3], label='WITH ACLR')
    axs[i].set_title(titles[i])
    axs[i].set_xlabel('Epoch')
    axs[i].set_ylabel('Loss')
    axs[i].legend()
    axs[i].grid(True)

plt.tight_layout()

# Save plot
output_dir = './visualize'
os.makedirs(output_dir, exist_ok=True)
plt.savefig(os.path.join(output_dir, 'Informer_ValLoss_Exchange.png'), dpi=300, bbox_inches='tight')

plt.show()
