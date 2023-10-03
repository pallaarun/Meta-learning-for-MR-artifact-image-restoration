MODEL='MM_Curriculum_Nine_tasks_FirstOrder_noScheduler' 

BASE_PATH='/home/arun'

DATA_DIR='/media/Data/MRI/datasets/unseen_artifact_suppression'

FLAG='valid_query'

VALID_TASK_STRINGS='Undersampling/03','UndersamplingM/03'

CHECKPOINT=${BASE_PATH}'/experiments/maml/'${MODEL}'/best_model.pt'

BATCH_SIZE=1

DEVICE='cuda:0'

OUT_PATH=${BASE_PATH}'/experiments/maml/'${MODEL}'/unadapted_no_artifact_results'
DATA_DIR=${DATA_DIR}

echo python valid_no_artifact.py --checkpoint ${CHECKPOINT} --out-path ${OUT_PATH} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-dir ${DATA_DIR} --valid_task_strings ${VALID_TASK_STRINGS} --flag ${FLAG}
python valid_no_artifact.py --checkpoint ${CHECKPOINT} --out-path ${OUT_PATH} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-dir ${DATA_DIR} --valid_task_strings ${VALID_TASK_STRINGS} --flag ${FLAG}

