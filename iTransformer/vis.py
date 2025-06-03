import os
import pandas as pd
import matplotlib.pyplot as plt

# Load file 1
file1_path = r'checkpoints\ETTm2_96_720_iTransformer_custom_M_ft96_sl48_ll720_pl128_dm8_nh2_el1_dl128_df1_fctimeF_ebTrue_dtExp_projection_0\train_results\log.txt'
file1_path = file1_path.replace('\\', '/')
df1 = pd.read_csv(file1_path, delimiter=',', header=None)

# Load file 2
file2_path = r'checkpoints\ETTm2_ACLR_96_720_iTransformer_custom_M_ft96_sl48_ll720_pl128_dm8_nh2_el1_dl128_df1_fctimeF_ebTrue_dtExp_projection_0\train_results\log.txt'
file2_path = file2_path.replace('\\', '/')
df2 = pd.read_csv(file2_path, delimiter=',', header=None)

# Plot
plt.figure(figsize=(10, 6))
plt.plot(df1.index + 1, df1[3], label='NO ACLR')  # Start index from 1
plt.plot(df2.index + 1, df2[3], label='WITH ACLR')  # Start index from 1
plt.xlabel('Epoch')
plt.ylabel('Loss')
plt.title('iTransformer Validation Loss For ETTm2_96_720')
plt.legend()
plt.grid(True)

# Save plot
output_dir = './visualize'
os.makedirs(output_dir, exist_ok=True)
output_path = os.path.join(output_dir, 'iTransformer_ValLoss_ETTm2_96_720.png')
plt.savefig(output_path, dpi=300, bbox_inches='tight')

# Show plot
plt.show()
