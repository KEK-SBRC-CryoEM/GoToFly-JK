
# version 30001

data_job

_rlnJobTypeLabel             relion.ctfrefine
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0


# version 30001

data_joboptions_values

loop_
_rlnJobOptionVariable #1
_rlnJobOptionValue #2
fn_data          Schemes/3_CS_tutorial_CTFRefine_Cycle/1707_Refine3D_Polish_2th/run_data.star
fn_post          Schemes/3_CS_tutorial_CTFRefine_Cycle/1708_Postprocess_Polish_2th/postprocess.star
do_aniso_mag     No
do_ctf           No
do_defocus       No
do_astig         No
do_bfactor       No
do_phase         No
  do_tilt        Yes
do_trefoil       Yes
do_4thorder      Yes
minres           30
nr_mpi           8
nr_threads       6
do_queue         Yes
queuename        1801_CtfRefine_aberration_3th
qsub             sbatch
qsub_extra1      c6i-vcpu128-gpu0
qsubscript       /efs/em/aws_slurm_relion.sh
min_dedicated    8
other_args       "" 
