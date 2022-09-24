Echo off
@REM call activate retina2

SET CSV_class="D:\Amirhosein\Object_Detection\tag-detection-RetinaNet\tag-detection-retinanet_MobileNet\dataset\classes.csv"
set CSV_train="D:\Amirhosein\Object_Detection\tag-detection-RetinaNet\tag-detection-retinanet_MobileNet\dataset\train.csv"
set CSV_val="D:\Amirhosein\Object_Detection\tag-detection-RetinaNet\tag-detection-retinanet_MobileNet\dataset\val.csv"

set WEIGHT="D:\Amirhosein\Object_Detection\tag-detection-retinanet_othernet\Code\pre-train model\mobilenet_1_0_224_tf_no_top.h5"
set BACKBONE="vgg19"

set BATCH="1"
set EPOCH="7"
set STEP="350"

set SNAPSHOT="D:\Amirhosein\Object_Detection\tag-detection-retinanet_othernet\Code\snapshots"
set TENSORBOARD="D:\Amirhosein\Object_Detection\tag-detection-retinanet_othernet\Code\tensorboard"

cls

retinanet-train --batch-size %BATCH% --steps %STEP% --epochs %EPOCH% --snapshot-path %SNAPSHOT% --tensorboard-dir %TENSORBOARD% --workers 4 csv %CSV_train% %CSV_class% --val-annotations %CSV_val% 

@REM call conda deactivate
pause