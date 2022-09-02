
# version 30001

data_scheme_general

_rlnSchemeName                       Schemes/2_CS_tutorial_init_d288/
_rlnSchemeCurrentNodeName            WAIT
 

# version 30001

data_scheme_floats

loop_ 
_rlnSchemeFloatVariableName #1 
_rlnSchemeFloatVariableValue #2 
_rlnSchemeFloatVariableResetValue #3 
CSS_cryolo_threshold                0.100000     0.100000 
CSS_duplicate_threshold            46.000000    46.000000     
CSS_mics_box_reex                 360.000000   360.000000 
CSS_mics_box_reex_0o95            342.000000   342.000000 
CSS_nr_2d_classes                 200.000000   200.000000 
CSS_nr_3d_classes                   4.000000     4.000000 
CSS_parts_box_reex                256.000000   256.000000 
CSS_ctf_maxres                      5.000000     5.000000 
CSS_mics_x                       4096.000000  4096.000000 
CSS_mics_y                       4096.000000  4096.000000 
CSS_parts_x_coods_max_reex       3916.000000  3916.000000 
CSS_parts_x_coods_min_reex        180.000000   180.000000 
CSS_parts_y_coods_max_reex       3916.000000  3916.000000 
CSS_parts_y_coods_min_reex        180.000000   180.000000 
CSS_refine3d_pmd_reex             200.000000   200.000000 
maxtime_hr                         96.000000    96.000000 
  wait_sec                        180.000000   180.000000 
 

# version 30001

data_scheme_bools

loop_ 
_rlnSchemeBooleanVariableName #1 
_rlnSchemeBooleanVariableValue #2 
_rlnSchemeBooleanVariableResetValue #3 
has_ctffind            1            0 
has_refine3d            1            0 
 

# version 30001

data_scheme_strings

loop_ 
_rlnSchemeStringVariableName #1 
_rlnSchemeStringVariableValue #2 
_rlnSchemeStringVariableResetValue #3 
  ctf_mics            Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star                  Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star 
micrographs           micrographs                                                              micrographs 
 particles            particles                                                                particles 
refine3d_data         Schemes/1_CS_tutorial_d64/0905_refine3D_best_d64/run_data.star           Schemes/1_CS_tutorial_d64/0905_refine3D_best_d64/run_data.star 
selected_parts        Schemes/1_CS_tutorial_d64/select_rm_bars_xy/particles.star               Schemes/1_CS_tutorial_d64/select_rm_bars_xy/particles.star 
mask_d256             βgalactosidase_mask_apix1o244_d256.mrc                                   βgalactosidase_mask_apix1o244_d256.mrc
ref_d256              βgalactosidase_apix1o244_d256.mrc                                        βgalactosidase_apix1o244_d256.mrc
sym_name_initial        C1                                                            C1
sym_name_class3d        C1                                                            C1
sym_name_refine3d_apo   D2                                                            D2
 

# version 30001

data_scheme_operators

loop_ 
_rlnSchemeOperatorName #1 
_rlnSchemeOperatorType #2 
_rlnSchemeOperatorOutput #3 
_rlnSchemeOperatorInput1 #4 
_rlnSchemeOperatorInput2 #5 
      EXIT         exit                 undefined      undefined      undefined 
EXIT_maxtime       exit_maxtime         undefined      maxtime_hr     undefined 
HAS_ctffind        bool=file_exists     has_ctffind    ctf_mics       undefined 
HAS_refine3d       bool=file_exists     has_refine3d   refine3d_data  undefined 
      WAIT         wait                 undefined      wait_sec       undefined 
 

# version 30001

data_scheme_jobs

loop_ 
_rlnSchemeJobNameOriginal #1 
_rlnSchemeJobName #2 
_rlnSchemeJobMode #3 
_rlnSchemeJobHasStarted #4  
0000_Import_mask_d288                   Import/job081/          new            1 
0000_Import_ref_d288                    Import/job082/          new            1 
1100_extract_reextract                  Extract/job083/         new            1 
1101_extract_reextract_rm_bars_x        Select/job084/          new            1 
1102_extract_reextract_rm_bars_xy       Select/job085/          new            1 
1103_extract_reextract_rm_dup           Select/job086/          new            1 
1200_refine3D_gro_d288_init             Refine3D/job087/        new            1 
1300_postprocess_gro_d288_init          PostProcess/job088/     new            1 
1400_refine3D_local_d288_init           Refine3D/job089/        new            1 
1500_postprocess_local_d288_init        PostProcess/job090/     new            1 
 

# version 30001

data_scheme_edges

loop_ 
_rlnSchemeEdgeInputNodeName #1 
_rlnSchemeEdgeOutputNodeName #2 
_rlnSchemeEdgeIsFork #3 
_rlnSchemeEdgeOutputNodeNameIfTrue #4 
_rlnSchemeEdgeBooleanVariable #5 
WAIT                                EXIT_maxtime                         0  undefined  undefined 
EXIT_maxtime                        HAS_ctffind                          0  undefined  undefined 
HAS_ctffind                         WAIT                                 1 HAS_refine3d has_ctffind 
HAS_refine3d                        WAIT                                 1 0000_Import_mask_d288 has_refine3d 
0000_Import_mask_d288               0000_Import_ref_d288                 0  undefined  undefined 
0000_Import_ref_d288                1100_extract_reextract               0  undefined  undefined 
1100_extract_reextract              1101_extract_reextract_rm_bars_x     0  undefined  undefined 
1101_extract_reextract_rm_bars_x    1102_extract_reextract_rm_bars_xy    0  undefined  undefined 
1102_extract_reextract_rm_bars_xy   1103_extract_reextract_rm_dup        0  undefined  undefined 
1103_extract_reextract_rm_dup       1200_refine3D_gro_d288_init          0  undefined  undefined 
1200_refine3D_gro_d288_init         1300_postprocess_gro_d288_init       0  undefined  undefined 
1300_postprocess_gro_d288_init      1400_refine3D_local_d288_init        0  undefined  undefined 
1400_refine3D_local_d288_init       1500_postprocess_local_d288_init     0  undefined  undefined 
1500_postprocess_local_d288_init    EXIT                                 0  undefined  undefined 
 
