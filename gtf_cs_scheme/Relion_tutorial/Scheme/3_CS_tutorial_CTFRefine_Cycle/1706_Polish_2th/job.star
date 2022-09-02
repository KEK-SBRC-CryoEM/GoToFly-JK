
# version 30001

data_job

_rlnJobTypeLabel             relion.polish
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0


# version 30001

data_joboptions_values

loop_
_rlnJobOptionVariable #1
_rlnJobOptionValue #2
fn_mic             Schemes/0_CS_tutorial_prep/motioncorr/corrected_micrographs.star 
fn_data            Schemes/3_CS_tutorial_CTFRefine_Cycle/1704_Refine3D_CtfRefine_2th/run_data.star
fn_post            Schemes/3_CS_tutorial_CTFRefine_Cycle/1705_Postprocess_CtfRefine_2th/postprocess.star
first_frame        1
last_frame         -1
extract_size       -1
rescale            -1
do_float16         Yes
do_param_optim     No
eval_frac          0.5
optim_min_part     3500
do_polish          Yes 
do_own_params      Yes
opt_params         ""
sigma_vel          0.2
sigma_div          5000
sigma_acc          2
minres             20
maxres             -1
nr_mpi             6
nr_threads         16
do_queue           Yes
queuename          1706_Polish_2th
qsub               sbatch
qsub_extra1        c6i-vcpu128-gpu0
qsubscript         /efs/em/aws_slurm_relion.sh
min_dedicated      3
other_args         ""
