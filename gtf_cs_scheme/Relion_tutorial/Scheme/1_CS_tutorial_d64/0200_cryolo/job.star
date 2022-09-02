
# version 30001

data_job

_rlnJobTypeLabel             relion.external
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
fn_exe         /efs/em/crYOLO/gtf_relion4_run_cryolo_system.sh
in_mov         ""
in_mic         Schemes/1_CS_tutorial_d64/0100_select_mic/micrographs.star
in_part        ""
in_coords      ""  
in_3dref       "" 
in_mask        "" 
param10_label  "" 
param10_value  "" 
param1_label   cryolo_repo 
param1_value   /efs/em/crYOLO 
param2_label   threshold 
param2_value   $$CSS_cryolo_threshold 
param3_label   device 
param3_value   0,1,2,3 
param4_label   "" 
param4_value   "" 
param5_label   "" 
param5_value   "" 
param6_label   "" 
param6_value   "" 
param7_label   "" 
param7_value   "" 
param8_label   "" 
param8_value   "" 
param9_label   "" 
param9_value   "" 
nr_threads     1
do_queue       Yes 
queuename      0200_cryolo 
qsub           sbatch
qsub_extra1    g4dn-vcpu48-gpu4           
qsubscript     /efs/em/aws_slurm_relion.sh
min_dedicated  1 
other_args     "" 
       
 

 
