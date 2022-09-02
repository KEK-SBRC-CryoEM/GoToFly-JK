
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
fn_data          Schemes/2_CS_tutorial_init_d288/1400_refine3D_local_d288_init/run_data.star
fn_post          Schemes/2_CS_tutorial_init_d288/1500_postprocess_local_d288_init/postprocess.star
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
queuename        1601_CtfRefine_aberration_1th
qsub             sbatch
qsub_extra1      c6i-vcpu128-gpu0
qsubscript       /efs/em/aws_slurm_relion.sh
min_dedicated    8
other_args       "" 
