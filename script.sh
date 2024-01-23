# record sim data 
# python3 record_sim_episodes.py --task_name sim_transfer_cube_scripted --dataset_dir sim_transfer_cube_scripted --num_episodes 50

# visualize sim data
# python3 visualize_episodes.py --dataset_dir sim_transfer_cube_scripted --episode_idx 0

# training
# python3 imitate_episodes.py --task_name sim_transfer_cube_scripted \
# --ckpt_dir demo/sim_transfer_cube_scripted_model_three_cam \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0

# eval
# python3 imitate_episodes.py --task_name sim_transfer_cube_scripted \
# --ckpt_dir demo/sim_transfer_cube_scripted_model_three_cam \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0 --eval --temporal_agg --onscreen_render

# record cube pick and place data
# python3 pnp_record_sim_episodes.py --task_name sim_cube_pnp --dataset_dir demo/sim_cube_pnp_scripted --num_episodes 50 

# visualize sim data
# python3 pnp_visualize_episodes.py --dataset_dir demo/sim_cube_pnp_scripted --episode_idx 0

# train cube pick and place 
# python3 pnp_imitate_episodes.py --task_name sim_cube_pnp \
# --ckpt_dir demo/sim_cube_pnp_scripted_model_three_cam \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0 

# eval cube pick and place 
# python3 pnp_imitate_episodes.py --task_name sim_cube_pnp \
# --ckpt_dir demo/sim_cube_pnp_scripted_model_three_cam \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_epochs 2000  --lr 1e-5 \
# --seed 0 --eval --temporal_agg 

# act-plus-plus training
# python3 imitate_episodes.py --task_name sim_cube_pnp \
# --ckpt_dir demo/sim_cube_pnp_scripted_model_one_bowl \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_steps 10000 --eval_every 4000 --validate_every 4000 --save_every 4000 \
# --lr 1e-5 --seed 0 \
# --resume_ckpt_path /home/lscm/aloha_ws/src/act-plus-plus/demo/sim_cube_pnp_scripted_model_one_bowl/policy_last.ckpt

# eval
# python3 imitate_episodes.py --task_name sim_cube_pnp \
# --ckpt_dir demo/sim_cube_pnp_scripted_model_one_bowl \
# --policy_class ACT --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_steps 20000 --eval_every 4000 --validate_every 4000 --save_every 4000 \
# --lr 1e-5 --seed 0 \
# --eval --temporal_agg --onscreen_render

# fold towel training
# python3 imitate_episodes.py --task_name sim_towel \
# --ckpt_dir demo/sim_towel_scripted_model \
# --policy_class ACT --kl_weight 10 --chunk_size 80 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_steps 100000 --eval_every 5000 --validate_every 5000 --save_every 5000 \
# --lr 1e-5 --seed 0 

# # eval
# python3 imitate_episodes.py --task_name sim_towel \
# --ckpt_dir demo/sim_towel_scripted_model \
# --policy_class ACT --kl_weight 10 --chunk_size 80 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_steps 100000 --eval_every 5000 --validate_every 5000 --save_every 5000 \
# --lr 1e-5 --seed 1 \
# --eval --temporal_agg --onscreen_render

# fold towel co-training 
# python3 imitate_episodes.py --task_name sim_towel_cotrain \
# --ckpt_dir demo/sim_towel_scripted_model_cotrain \
# --policy_class ACT --kl_weight 10 --chunk_size 80 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
# --num_steps 100000 --eval_every 10000 --validate_every 10000 --save_every 10000 \
# --lr 1e-5 --seed 0 

# fold towel co-training eval
python3 imitate_episodes.py --task_name sim_towel_cotrain \
--ckpt_dir demo/sim_towel_scripted_model_cotrain \
--policy_class ACT --kl_weight 10 --chunk_size 80 --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
--num_steps 100000 --eval_every 10000 --validate_every 10000 --save_every 10000 \
--lr 1e-5 --seed 0 \
--eval --temporal_agg 