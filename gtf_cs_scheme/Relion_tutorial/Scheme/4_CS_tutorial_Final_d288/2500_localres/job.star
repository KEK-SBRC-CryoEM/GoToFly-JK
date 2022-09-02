
# version 30001

data_job

_rlnJobTypeLabel             relion.localres.own
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2
fn_in                 Schemes/4_CS_tutorial_Final_d288/2300_refine3D_gro_d288_final/run_half1_class001_unfil.mrc 
fn_mask               $$mask_d256  
angpix                $$CSS_angpix_mic_reex
do_resmap_locres      No
fn_resmap             /public/EM/ResMap/ResMap-1.1.4-linux64
pval                  0.05
maxres                0
minres                0
stepres               1
do_relion_locres      Yes
adhoc_bfac            -30
fn_mtf                ""
nr_mpi                12
do_queue              Yes 
queuename             2500_localres
qsub                  sbatch
qsub_extra1           g4dn-vcpu96-gpu8
qsubscript            /efs/em/aws_slurm_relion.sh  
min_dedicated         24 
other_args            "" 
