# get PHALP data
python run_opt.py data=expi run_opt=False run_vis=False data.overwrite=False data.root=/home/nugrinovic/code/CVPR_2024/slahmr/videos/expi/acro1 data.seq="around-the-back1_cam20" data.seq_id="acro1"
# get SLAHMR data
python run_opt.py data=expi run_opt=True run_vis=True data.overwrite=False data.root=/home/nugrinovic/code/CVPR_2024/slahmr/videos/expi/acro1 data.seq="around-the-back1_cam20" data.seq_id="acro1"
# generate the scene_dict.pkl for MultiPhys
python run_opt_world.py data=expi run_opt=False run_vis=True data.root=/home/nugrinovic/code/CVPR_2024/slahmr/videos/expi/acro1 data.seq="around-the-back1_cam20" data.seq_id=acro1
