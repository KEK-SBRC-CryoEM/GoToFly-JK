v
# version 30001

data_job

_rlnJobTypeLabel             relion.refine3d
_rlnJobIsContinue                       0
_rlnJobIsTomo                           0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
fn_img                              Schemes/3_CS_tutorial_CTFRefine_Cycle/1703_CtfRefine_CTFparameter_2th/particles_ctf_refine.star
fn_cont                             "" 
fn_ref                              Schemes/3_CS_tutorial_CTFRefine_Cycle/1607_Refine3D_Polish_1th/run_class001.mrc
fn_mask                             $$mask_d256 
ref_correct_greyscale               No
ini_high                            0 
sym_name                            $$sym_name_refine3d_apo
do_ctf_correction                   Yes 
ctf_intact_first_peak               No 
particle_diameter                   $$CSS_refine3d_pmd_reex 
do_zero_mask                        Yes     
do_solvent_fsc                      Yes 
sampling                            "1.8 degrees" 
offset_range                        5 
offset_step                         1 
auto_local_sampling                 "1.8 degrees" 
relax_sym                           "" 
auto_faster                         No 
do_helix                            No 
helical_tube_inner_diameter         -1 
helical_tube_outer_diameter         -1 
range_rot                           -1 
range_tilt                          15 
range_psi                           10 
helical_range_distance              -1 
keep_tilt_prior_fixed               Yes 
do_apply_helical_symmetry           Yes 
helical_nr_asu                      1 
helical_twist_initial               0 
helical_rise_initial                0 
helical_z_percentage                30 
do_local_search_helical_symmetry    No 
helical_rise_min                    0
helical_rise_max                    0 
helical_rise_inistep                0 
helical_twist_min                   0 
helical_twist_max                   0 
helical_twist_inistep               0 
do_parallel_discio                  Yes 
nr_pool                             30
do_pad1                             Yes 
skip_gridding                       Yes 
do_preread_images                   No
scratch_dir                         "" 
do_combine_thru_disc                No 
use_gpu                             Yes  
gpu_ids                             0:1:2:3:4:5:6:7:0:1:2:3:4:5:6:7
nr_mpi                              17 
nr_threads                          6   
do_queue                            Yes 
queuename                           1704_Refine3D_CtfRefine_2th  
qsub                                sbatch   
qsub_extra1                         g4dn-vcpu96-gpu8 
qsubscript                          /efs/em/aws_slurm_relion.sh 
min_dedicated                       9 
other_args                          "" 

