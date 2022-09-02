
# version 30001

data_job

_rlnJobTypeLabel             relion.postprocess
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0


# version 30001

data_joboptions_values

loop_
_rlnJobOptionVariable #1
_rlnJobOptionValue #2
fn_in                   Schemes/1_CS_tutorial_d64/0904_refine3D_class004_d64/run_half1_class001_unfil.mrc 
fn_mask                 $$mask_d64
angpix                  -1
do_auto_bfac            Yes
autob_lowres            10
do_adhoc_bfac           No
adhoc_bfac              -1000
do_skip_fsc_weighting   No    
low_pass                5
fn_mtf                  ""
mtf_angpix              1
do_queue                Yes
queuename               1001_postprocess_class001_d64
 qsub                   sbatch
qsub_extra1             g4dn-vcpu96-gpu8
qsubscript              /efs/em/aws_slurm_relion.sh      
min_dedicated           24
other_args              ""
      
 
