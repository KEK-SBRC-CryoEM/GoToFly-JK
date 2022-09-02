
# version 30001

data_job

_rlnJobTypeLabel             relion.select.onvalue
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
fn_data                Schemes/1_CS_tutorial_d64/0300_extract/particles.star 
fn_mic                 ""
fn_model               "" 
do_class_ranker        No 
rank_threshold         0.5 
select_nr_classes      -1 
select_nr_parts        -1 
python_exe             python 
do_recenter            Yes 
do_regroup             No 
nr_groups              1
do_select_values       Yes
select_label           rlnCoordinateX 
select_minval          $$CSS_parts_x_coods_min
select_maxval          $$CSS_parts_x_coods_max
do_discard             No
discard_label          rlnImageName 
discard_sigma          4 
do_split               No 
do_random              No  
split_size             100 
nr_split               -1
do_remove_duplicates   No 
duplicate_threshold    30 
image_angpix           -1
do_queue               No 
queuename              0100_select_mic
qsub                   sbatch 
qsub_extra1            g4dn-vcpu48-gpu4
qsubscript /efs/em/aws_slurm_relion.sh 
min_dedicated          1 
other_args         "" 
 

