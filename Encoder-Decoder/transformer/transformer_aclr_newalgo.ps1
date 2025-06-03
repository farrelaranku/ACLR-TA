$commands = @(
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id ExchangeACLR_NEWALGO_96_96 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id ExchangeACLR_NEWALGO_96_192 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id ExchangeHANDLENANACLR_NEWALGO_96_336 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 256",

    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weatherACLR_NEWALGO_96_96 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weatherACLR_NEWALGO_96_192 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weatherACLR_NEWALGO_96_336 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",

    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2ACLR_NEWALGO_96_96 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2ACLR_NEWALGO_96_192 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2ACLR_NEWALGO_96_336 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id ExchangeHANDLENANACLR_NEWALGO_96_720 --use_aclr --model Transformer --data exchange_high --features M --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 128",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weatherACLR_NEWALGO_96_720 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512",
    "python -u run_newalgo.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2ACLR_NEWALGO_96_720 --use_aclr --model Transformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 1 --train_epochs 10 --patience 3 --batch_size 512"

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