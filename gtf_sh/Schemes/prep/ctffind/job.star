
# version 30001

data_job

_rlnJobTypeLabel             relion.ctffind
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
       box        512 
   ctf_win         -1 
      dast        100 
     dfmax      30000 
     dfmin       5000 
    dfstep        100 
    do_EPA         No 
do_ignore_ctffind_params         No 
do_phaseshift         No 
  do_queue         No 
fn_ctffind_exe /gpfs/data/EM/software/ctffind-4.1.13/bin/ctffind 
fn_gctf_exe /gpfs/data/EM/software/Gctf/Gctf 
   gpu_ids         "" 
input_star_mics Schemes/prep/motioncorr/corrected_micrographs.star 
min_dedicated         24 
    nr_mpi          1 
other_args         "" 
other_gctf_args         "" 
 phase_max        180 
 phase_min          0 
phase_step         10 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
    resmax          4 
    resmin         30 
slow_search        Yes 
use_ctffind4         No 
  use_gctf        Yes 
use_given_ps         No 
  use_noDW        Yes 
 
