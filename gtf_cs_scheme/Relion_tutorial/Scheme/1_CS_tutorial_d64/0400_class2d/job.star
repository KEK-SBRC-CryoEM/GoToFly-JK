
# version 30001

data_job

_rlnJobTypeLabel             relion.class2d
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
fn_img                       Schemes/1_CS_tutorial_d64/0302_extract_rm_bars_xy/particles.star 
fn_cont                      "" 
do_ctf_correction            Yes   
ctf_intact_first_peak        No 
nr_classes                   $$CSS_nr_2d_classes 
tau_fudge                    2 
do_em                        No 
nr_iter_em                   25
do_grad                      Yes
nr_iter_grad                 200 
particle_diameter            $$CSS_class2d_pmd 
do_zero_mask                 Yes
highres_limit                -1
do_center                    Yes
dont_skip_align              Yes
psi_sampling                 6
offset_range                 5 
offset_step                  1
allow_coarser                No 
do_helix                     No
helical_tube_outer_diameter  200 
do_bimodal_psi               Yes 
range_psi                    6
do_restrict_xoff             Yes 
helical_rise                 4.75
do_parallel_discio           Yes
nr_pool                      30
do_preread_images            No
scratch_dir                  /scratch  
do_combine_thru_disc         No 
use_gpu                      Yes 
gpu_ids                      0:1:2:3:4:5:6:7
nr_mpi                       1     
nr_threads                   8
do_queue                     Yes 
queuename                    0400_class2d 
qsub                         sbatch
qsub_extra1                  g4dn-vcpu48-gpu4
qsubscript                   /efs/em/aws_slurm_relion.sh 
min_dedicated                1
other_args                   "" 

 
