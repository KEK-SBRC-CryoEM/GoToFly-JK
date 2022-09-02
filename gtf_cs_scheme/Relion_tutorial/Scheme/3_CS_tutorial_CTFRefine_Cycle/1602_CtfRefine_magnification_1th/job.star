
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
fn_data          Schemes/3_CS_tutorial_CTFRefine_Cycle/1601_CtfRefine_aberration_1th/particles_ctf_refine.star
fn_post          Schemes/2_CS_tutorial_init_d288/1500_postprocess_local_d288_init/postprocess.star
do_aniso_mag     Yes
do_ctf           No
do_defocus       No
do_astig         No
do_bfactor       No
do_phase         No
  do_tilt        No
do_trefoil       No
do_4thorder      No
minres           30
nr_mpi           8
nr_threads       6
do_queue         Yes
queuename        1602_CtfRefine_magnification_1th
qsub             sbatch
qsub_extra1      c6i-vcpu128-gpu0
qsubscript       /efs/em/aws_slurm_relion.sh
min_dedicated    8
other_args       "" 
