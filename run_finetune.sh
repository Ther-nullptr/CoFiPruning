TASK=RTE
SUFFIX=sparsity0.95
EX_CATE=CoFi
PRUNING_TYPE=structured_heads+structured_mlp+hidden+layer
SPARSITY=0.95
DISTILL_LAYER_LOSS_ALPHA=0.9
DISTILL_CE_LOSS_ALPHA=0.1
LAYER_DISTILL_VERSION=4
SPARSITY_EPSILON=0.01
DISTILLATION_PATH=/mnt/lustre/sjtu/home/xc915/superb/CoFiPruning/teacher-model/bert-base-uncased-RTE
PRUNED_MODEL_PATH=/mnt/lustre/sjtu/home/xc915/superb/CoFiPruning/out/RTE/CoFi/RTE_sparsity0.95/best
PRUNING_TYPE=None # Setting the pruning type to be None for standard fine-tuning.
LEARNING_RATE=1e-6

bash scripts/run_CoFi.sh $TASK $SUFFIX $EX_CATE $PRUNING_TYPE $SPARSITY $DISTILLATION_PATH $DISTILL_LAYER_LOSS_ALPHA $DISTILL_CE_LOSS_ALPHA $LAYER_DISTILL_VERSION $PRUNED_MODEL_PATH $LEARNING_RATE