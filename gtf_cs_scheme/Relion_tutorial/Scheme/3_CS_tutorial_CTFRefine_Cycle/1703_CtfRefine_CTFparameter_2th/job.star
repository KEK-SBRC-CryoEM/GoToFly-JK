
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
fn_data          Schemes/3_CS_tutorial_CTFRefine_Cycle/1702_CtfRefine_magnification_2th/particles_ctf_refine.star
fn_post          Schemes/3_CS_tutorial_CTFRefine_Cycle/1608_Postprocess_Polish_1th/postprocess.star
do_aniso_mag     No
do_ctf           Yes
do_defocus       Per-particle
do_astig         Per-micrograph
do_bfactor       No
do_phase         No
  do_tilt        No
do_trefoil       No
do_4thorder      No
minres           30
nr_mpi           8
nr_threads       6
do_queue         Yes
queuename        1703_CtfRefine_CTFparameter_2th
qsub             sbatch
qsub_extra1      c6i-vcpu128-gpu0
qsubscript       /efs/em/aws_slurm_relion.sh
min_dedicated    8
other_args       "" 
