
# version 30001

data_job

_rlnJobTypeLabel             relion.extract
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
star_mics                        Schemes/1_CS_tutorial_d64/0100_select_mic/micrographs.star
coords_suffix                    Schemes/1_CS_tutorial_d64/0200_cryolo/autopick.star 
do_reextract                     No 
fndata_reextract                 ""
do_reset_offsets                 No
do_recenter                      No 
recenter_x                       0 
recenter_y                       0 
recenter_z                       0
do_float16                       Yes
extract_size                     $$CSS_mics_box
do_invert                        Yes
do_norm                          Yes
bg_diameter                      $$CSS_mics_box_0o95 
black_dust                       -1 
white_dust                       -1 
do_rescale                       Yes
rescale                          $$CSS_parts_box
do_fom_threshold                 Yes 
minimum_pick_fom                 $$CSS_cryolo_threshold 
do_extract_helix                 No 
helical_tube_outer_diameter      200 
helical_bimodal_angular_priors   Yes 
do_cut_into_segments             Yes 
do_extract_helical_tubes         Yes 
helical_nr_asu                   1 
helical_rise                     1
nr_mpi                           12  
do_queue                         Yes 
queuename                        0300_extract
qsub                             sbatch 
qsub_extra1                      c6i-vcpu128-gpu0
qsubscript                       /efs/em/aws_slurm_relion.sh  
min_dedicated                    12    
other_args                       "" 
     

 




 
