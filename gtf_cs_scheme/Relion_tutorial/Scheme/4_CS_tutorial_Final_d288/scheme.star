
# version 30001

data_scheme_general

_rlnSchemeName                       Schemes/4_CS_tutorial_Final_d288/
_rlnSchemeCurrentNodeName            WAIT
 

# version 30001

data_scheme_floats

loop_ 
_rlnSchemeFloatVariableName #1 
_rlnSchemeFloatVariableValue #2 
_rlnSchemeFloatVariableResetValue #3 
maxtime_hr                  96.000000    96.000000 
wait_sec                    180.000000   180.000000
CSS_angpix_mic              0.8400       0.8400
CSS_angpix_mic_reex         1.0500       1.0500
CSS_ctf_maxres              5.000        5.000
CSS_cryolo_threshold        0.100000     0.100000 
CSS_mics_box_reex           360.000      256.000
CSS_mics_box_reex_0o95      342.000      244.000
CSS_parts_box_reex          288.000      288.000
CSS_duplicate_threshold     46.000       46.000 
CSS_mics_x                  5760.000     5760.000
CSS_mics_y                  4096.000     4096.000
CSS_parts_x_coods_max_reex  5580.000     5580.000
CSS_parts_x_coods_min_reex  180.000      180.000
CSS_parts_y_coods_max_reex  3916.000     3916.000
CSS_parts_y_coods_min_reex  180.000      180.000
CSS_class3d_pmd             284.000      284.000
CSS_refine3d_pmd_reex       284.000      284.000
CSS_nr_2d_classes           200.000      200.000
CSS_nr_3d_classes           4            4


# version 30001

data_scheme_bools

loop_ 
_rlnSchemeBooleanVariableName #1 
_rlnSchemeBooleanVariableValue #2 f
_rlnSchemeBooleanVariableResetValue #3 
has_ctffind       0    0
has_refine3d      0    0
has_postprocess   0    0 

# version 30001

data_scheme_strings

loop_ 
_rlnSchemeStringVariableName #1 
_rlnSchemeStringVariableValue #2 
_rlnSchemeStringVariableResetValue #3 
particles  particles  particles
micrographs  micrographs  micrographs 
ctf_mics           Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star                                     Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star
refine3D_data      Schemes/3_CS_tutorial_CTFRefine_Cycle/1807_Refine3D_Polish_3th/run_data.star                Schemes/3_CS_tutorial_CTFRefine_Cycle/1807_Refine3D_Polish_3th/run_data.star
postprocess_map    Schemes/3_CS_tutorial_CTFRefine_Cycle/1808_Postprocess_Polish_3th/postprocess.star          Schemes/3_CS_tutorial_CTFRefine_Cycle/1808_Postprocess_Polish_3th/postprocess.star
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
WAIT              wait              undefined         wait_sec                 undefined 
EXIT_maxtime      exit_maxtime      undefined         maxtime_hr               undefined 
HAS_refine3D      bool=file_exists  has_refine3d      refine3D_data            undefined
HAS_postprocess   bool=file_exists  has_postprocess   postprocess_map          undefined
EXIT              exit              undefined         undefined                undefined 

# version 30001

data_scheme_jobs

loop_ 
_rlnSchemeJobNameOriginal #1 
_rlnSchemeJobName #2 
_rlnSchemeJobMode #3 
_rlnSchemeJobHasStarted #4 
1900_class3d_d288_noalign             1900_class3d_d288_noalign             new            0 
2000_select                           2000_select                           new            0
2100_refine3D_local_d288_final        2100_refine3D_local_d288_final        new            0
2200_postprocess_local_d288_final     2200_postprocess_local_d288_final     new            0
2300_refine3D_gro_d288_final          2300_refine3D_gro_d288_final          new            0
2400_postprocess_gro_d288_final       2400_postprocess_gro_d288_final       new            0
2500_localres                         2500_localres                         new            0


# version 30001

data_scheme_edges

loop_ 
_rlnSchemeEdgeInputNodeName #1 
_rlnSchemeEdgeOutputNodeName #2 
_rlnSchemeEdgeIsFork #3 
_rlnSchemeEdgeOutputNodeNameIfTrue #4 
_rlnSchemeEdgeBooleanVariable #5 
WAIT                                  EXIT_maxtime                           0  undefined                        undefined 
EXIT_maxtime                          HAS_refine3D                           0  undefined                        undefined 
HAS_refine3D                          WAIT                                   1  HAS_postprocess                  has_refine3d
HAS_postprocess                       WAIT                                   1  1900_class3d_d288_noalign        has_postprocess
1900_class3d_d288_noalign             2100_refine3D_local_d288_final         0  undefined                        undefined 
2100_refine3D_local_d288_final        2200_postprocess_local_d288_final      0  undefined                        undefined 
2200_postprocess_local_d288_final     2300_refine3D_gro_d288_final           0  undefined                        undefined 
2300_refine3D_gro_d288_final          2400_postprocess_gro_d288_final        0  undefined                        undefined
2400_postprocess_gro_d288_final       2500_localres                          0  undefined                        undefined
2500_localres                         EXIT                                   0  undefined                        undefined  
