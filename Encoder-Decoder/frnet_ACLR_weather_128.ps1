$commands = @(
   
    # "python -u run_fussionnet.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --use_aclr --model_id weather_withACLR_96_96 --model FRNet --data custom --features M --seq_len 96 --pred_len 96 --enc_in 21 --e_layers 2 --n_heads 8 --d_model 64 --d_ff 128 --dropout 0.3 --fc_dropout 0.1 --head_dropout 0.1 --patch_len 16 --stride 2 --des 'Exp' --train_epochs 1 --patience 10 --kernel_size 25 --pred_head_type 'linear' --aggregation_type 'linear' --channel_attention 0 --global_freq_pred 0 --period_list 36 --emb 164 --itr 1 --batch_size 512 --learning_rate 0.001",
    "python -u run_fussionnet.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --use_aclr --model_id weather_withACLR_96_192 --model FRNet --data custom --features M --seq_len 96 --pred_len 192 --enc_in 21 --e_layers 2 --n_heads 8 --d_model 64 --d_ff 128 --dropout 0.3 --fc_dropout 0.1 --head_dropout 0.1 --patch_len 16 --stride 2 --des 'Exp' --train_epochs 10 --patience 10 --kernel_size 25 --pred_head_type 'linear' --aggregation_type 'linear' --channel_attention 0 --global_freq_pred 0 --period_list 36 --emb 164 --itr 1 --batch_size 512 --learning_rate 0.001",
    "python -u run_fussionnet.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --use_aclr --model_id weather_withACLR_96_336 --model FRNet --data custom --features M --seq_len 96 --pred_len 336 --enc_in 21 --e_layers 2 --n_heads 8 --d_model 64 --d_ff 128 --dropout 0.3 --fc_dropout 0.1 --head_dropout 0.1 --patch_len 16 --stride 2 --des 'Exp' --train_epochs 10 --patience 10 --kernel_size 25 --pred_head_type 'linear' --aggregation_type 'linear' --channel_attention 0 --global_freq_pred 0 --period_list 36 --emb 164 --itr 1 --batch_size 512 --learning_rate 0.001",
    "python -u run_fussionnet.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv  --use_aclr --model_id weather_withACLR_96_720 --model FRNet --data custom --features M --seq_len 96 --pred_len 720 --enc_in 21 --e_layers 2 --n_heads 8 --d_model 64 --d_ff 128 --dropout 0.3 --fc_dropout 0.1 --head_dropout 0.1 --patch_len 16 --stride 2 --des 'Exp' --train_epochs 10 --patience 10 --kernel_size 25 --pred_head_type 'linear' --aggregation_type 'linear' --channel_attention 0 --global_freq_pred 0 --period_list 36 --emb 164 --itr 1 --batch_size 512 --learning_rate 0.001"


)

# Eksekusi setiap perintah dan hentikan jika ada error
foreach ($cmd in $commands) {
    Write-Host "Running: $cmd"
    Invoke-Expression $cmd
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error encountered, stopping script."
        exit $LASTEXITCODE
    }
}

Write-Host "All models have been trained successfully."