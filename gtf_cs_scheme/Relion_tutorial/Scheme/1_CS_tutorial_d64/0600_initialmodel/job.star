
# version 30001

data_job

_rlnJobTypeLabel             relion.initialmodel
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
fn_img                 Schemes/1_CS_tutorial_d64/0500_select_class2D/particles.star
fn_cont                ""
do_ctf_correction      Yes
ctf_intact_first_peak  No 
 nr_iter               100 
 tau_fudge             4
nr_classes             1
particle_diameter      200
do_solvent             Yes
sym_name               $$sym_name_initial
do_run_C1              Yes
do_parallel_discio     Yes 
nr_pool                30
skip_gridding          Yes
do_preread_images      Yes 
scratch_dir            /scratch 
do_combine_thru_disc   No 
use_gpu                Yes 
gpu_ids                0:1:2:3:4:5:6:7
nr_mpi                 1  
nr_threads             8 
do_queue               Yes 
queuename              0600_initialmodel    
qsub                   sbatch
qsub_extra1            g4dn-vcpu48-gpu4
qsubscript             /efs/em/aws_slurm_relion.sh        
min_dedicated          1 
other_args             "" 
 
      
 


 
   
   
 
