pip install pandas

# Note the path in the conda env:
# /home/nugrinovic/miniconda3/envs/multiphys/targets/x86_64-linux

export CPATH=/home/nugrinovic/miniconda3/envs/multiphys/targets/x86_64-linux/include:$CPATH
export LD_LIBRARY_PATH=/home/nugrinovic/miniconda3/envs/multiphys/targets/x86_64-linux/lib:$LD_LIBRARY_PATH
export PATH=/home/nugrinovic/miniconda3/envs/multiphys/bin:$PATH

git+https://github.com/facebookresearch/detectron2.git

pip install dill
pip install mmpose==0.24.0
#pip install mmcv # may take several minutes
pip install mmdet
# stupid mmcv gives problem
#pip install mmcv==2.0.0rc4, <2.2.0.
pip install mmcv==1.3.9
pip install scikit-learn==0.22
pip install pytube
pip install timm

# Note have to deal with the following error:
FileNotFoundError: [Errno 2] No such file or directory: 'basicModel_neutral_lbs_10_207_0_v1.0.0.pkl'
# to do this you need to place the smpl model in the _DATA directory of third-party/PHALP_plus
# that folder should also have other files related to the model, e.g., hmmr_v2_weights.pt, etc.

# make sure that the ViT repo is inside the PHALP_plus folder
git clone -b 4fd8507 https://github.com/ViTAE-Transformer/ViTPose.git

# install remaining requirements
pip install -r requirements.txt

# install source
pip install -e .

# install ViTPose
pip install -v -e third-party/PHALP_plus/ViTPose

# install DROID-SLAM
cd third-party/DROID-SLAM
python setup.py install
cd ../..


# modify /home/nugrinovic/code/CVPR_2024/slahmr/slahmr/data/dataset.py to create:
# get_dataset_from_cfg_w_check() function

# have to modify the config.yaml file from slahmr/confs:
exp_name: ${now:%Y-%m-%d}  # to
exp_name: .