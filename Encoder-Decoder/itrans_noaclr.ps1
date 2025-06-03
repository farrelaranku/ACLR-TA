$commands = @(
   
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/weather/ --train_epochs 20 --data_path weather.csv --model_id itrans_noaclr_weather_96_96 --model iTransformer --data custom --features M --seq_len 96 --pred_len 96 --e_layers 3 --enc_in 21 --dec_in 21 --batch_size 128 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/weather/ --train_epochs 20 --data_path weather.csv --model_id itrans_noaclr_weather_96_192 --model iTransformer --data custom --features M --seq_len 96 --pred_len 192 --e_layers 3 --enc_in 21 --dec_in 21 --batch_size 128 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/weather/ --train_epochs 20 --data_path weather.csv --model_id itrans_noaclr_weather_96_336 --model iTransformer --data custom --features M --seq_len 96 --pred_len 336 --e_layers 3 --enc_in 21 --dec_in 21 --batch_size 128 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/weather/ --train_epochs 20 --data_path weather.csv --model_id itrans_noaclr_weather_96_720 --model iTransformer --data custom --features M --seq_len 96 --pred_len 720 --e_layers 3 --enc_in 21 --dec_in 21 --batch_size 128 --c_out 21 --des 'Exp' --d_model 512 --d_ff 512 --itr 1"

    # "python -u run_ori.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id itrans_noaclr_Exchange_96_96 --model iTransformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 20",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id itrans_noaclr_Exchange_96_192 --model iTransformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 20",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id itrans_noaclr_Exchange_96_336 --model iTransformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 20",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/exchange_rate/ --data_path exchange_rate.csv --model_id itrans_noaclr_Exchange_96_720 --model iTransformer --data custom --features M --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 8 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 20",

    "python -u run_ori.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2NOACLR_96_96 --model iTransformer --data ETTm2 --features M --seq_len 96 --label_len 48 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 10"
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2NOACLR_96_192 --model iTransformer --data ETTm2 --features M --seq_len 96 --label_len 48 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 10",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2NOACLR_96_336 --model iTransformer --data ETTm2 --features M --seq_len 96 --label_len 48 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 10",
    # "python -u run_ori.py --is_training 1 --root_path ./dataset/ETT-small/ --data_path ETTm2.csv --model_id ETTm2NOACLR_96_720 --model iTransformer --data ETTm2 --features M --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 8 --c_out 8 --des 'Exp' --itr 1 --batch_size 512  --train_epochs 10"



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