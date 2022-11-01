# get model
wget https://bj.bcebos.com/paddlehub/fastdeploy/ResNet50_vd_infer.tgz
tar -xvf ResNet50_vd_infer.tgz
mkdir -p ./models/ResNet50_vd_infer/1
mv ./ResNet50_vd_infer/inference.pdiparams ./models/ResNet50_vd_infer/1/model.pdiparams
mv ./ResNet50_vd_infer/inference.pdmodel ./models/ResNet50_vd_infer/1/model.pdmodel
mv ./models/config.pbtxt ./models/ResNet50_vd_infer/

wget https://gitee.com/paddlepaddle/PaddleClas/raw/release/2.4/deploy/images/ImageNet/ILSVRC2012_val_00000010.jpeg

# server run
# fastdeployserver --model-repository=models --backend-config=python,shm-default-byte-size=10485760

# client run
# install requirements
# pip install pillow
# pip install tritonclient[grpc]

# python resnet50_grpc_client.py
