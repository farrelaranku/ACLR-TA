$commands = @(
    # "python -u run.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id Exchange_96_96 --model iTransformer --data custom --features M --seq_len 96 --pred_len 96 --e_layers 2 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --train_epochs 10 --batch_size 512",
    # "python -u run.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id Exchange_96_192 --model iTransformer --data custom --features M --seq_len 96 --pred_len 192 --e_layers 2 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --train_epochs 10 --batch_size 512",
    # "python -u run.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id ExchangeHANDLENAN_96_336 --model iTransformer --data custom --features M --seq_len 96 --pred_len 336 --e_layers 2 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --train_epochs 10 --batch_size 256",
    # "python -u run.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id ExchangeHANDLENAN_96_720 --model iTransformer --data exchange_high --features M --seq_len 96 --pred_len 720 --e_layers 2 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --train_epochs 10 --batch_size 128"

    # "python -u run.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weather_96_96 --model iTransformer --data custom --features M --seq_len 96 --pred_len 96 --e_layers 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1 --train_epochs 10 --batch_size 512",
    # "python -u run.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weather_96_192 --model iTransformer --data custom --features M --seq_len 96 --pred_len 192 --e_layers 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1 --train_epochs 10 --batch_size 512",
    # "python -u run.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weather_96_336 --model iTransformer --data custom --features M --seq_len 96 --pred_len 336 --e_layers 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1 --train_epochs 10 --batch_size 512",
    # "python -u run.py --is_training 1 --root_path ./dataset/weather/ --data_path weather.csv --model_id weather_96_720 --model iTransformer --data custom --features M --seq_len 96 --pred_len 720 --e_layers 3 --enc_in 21 --dec_in 21 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1 --train_epochs 10 --batch_size 512",

    # "python -u run.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2_96_96 --model iTransformer --data custom --features M --seq_len 96 --pred_len 96 --e_layers 2 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --batch_size 512 --train_epochs 10"
    "python -u run.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2_96_192 --model iTransformer --data custom --features M --seq_len 96 --pred_len 192 --e_layers 2 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --batch_size 512 --train_epochs 10",
    "python -u run.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2_96_336 --model iTransformer --data custom --features M --seq_len 96 --pred_len 336 --e_layers 2 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --batch_size 512 --train_epochs 10",
    "python -u run.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2_96_720 --model iTransformer --data custom --features M --seq_len 96 --pred_len 720 --e_layers 2 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --d_model 128 --d_ff 128 --itr 1 --batch_size 512 --train_epochs 10"

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