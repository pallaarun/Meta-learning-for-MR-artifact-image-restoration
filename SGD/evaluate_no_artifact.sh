MODEL='MM_Nine_tasks_FirstOrder_noScheduler_SGD'
BASE_PATH='/home/arun/experiments/sgd/'${MODEL}




                                ### ---- Needs to be changed based on the requirement ----

DATA_DIR='/media/Data/MRI/datasets/unseen_artifact_suppression'

RESULTS_TYPE='adapted_no_artifact_results'

TASK_STRINGS='Undersampling/03','UndersamplingM/03'

                                                    ### ---- END ----





REPORT_PATH=${BASE_PATH}'/'${RESULTS_TYPE}'_txt_reports'

FLAG='valid_query'

echo python evaluate.py --base-path ${BASE_PATH} --data-dir ${DATA_DIR} --report-path ${REPORT_PATH} --task_strings ${TASK_STRINGS} --flag ${FLAG} --results-type ${RESULTS_TYPE}

python evaluate.py --base-path ${BASE_PATH} --data-dir ${DATA_DIR} --report-path ${REPORT_PATH} --task_strings ${TASK_STRINGS} --flag ${FLAG} --results-type ${RESULTS_TYPE}