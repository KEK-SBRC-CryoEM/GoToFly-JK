
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
bg_diameter        242 
black_dust         -1 
coords_suffix Schemes/proc/autopick/autopick.star 
do_cut_into_segments        Yes 
do_extract_helical_tubes        Yes 
do_extract_helix         No 
do_float16        Yes 
do_fom_threshold        Yes 
 do_invert        Yes 
   do_norm        Yes 
  do_queue         No 
do_recenter         No 
do_reextract         No 
do_rescale        Yes 
do_reset_offsets         No 
extract_size        256 
fndata_reextract         "" 
helical_bimodal_angular_priors        Yes 
helical_nr_asu          1 
helical_rise          1 
helical_tube_outer_diameter        200 
min_dedicated         24 
minimum_pick_fom        0.0 
    nr_mpi          4 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
recenter_x          0 
recenter_y          0 
recenter_z          0 
   rescale         64 
 star_mics Schemes/proc/select_mics/micrographs.star 
white_dust         -1 
 
