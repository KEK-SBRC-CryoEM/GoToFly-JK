
# version 30001

data_scheme_general

_rlnSchemeName                       Schemes/1_CS_tutorial_d64/
_rlnSchemeCurrentNodeName            WAIT
 

# version 30001

data_scheme_floats

loop_ 
_rlnSchemeFloatVariableName #1 
_rlnSchemeFloatVariableValue #2 
_rlnSchemeFloatVariableResetValue #3 
CSS_class2d_pmd           200.000000   200.000000 
CSS_class3d_pmd           200.000000   200.000000 
CSS_cryolo_pmd            120.000000   120.000000 
CSS_cryolo_threshold        0.100000     0.100000 
CSS_ctf_maxres              5.000000     5.000000 
CSS_mics_box              256.000000   256.000000 
CSS_mics_box_0o95         200.000000   200.000000 
CSS_mics_x               4096.000000  4096.000000 
CSS_mics_y               4096.000000  4096.000000 
CSS_nr_2d_classes          50.000000    50.000000 
CSS_nr_3d_classes           4.000000     4.000000 
CSS_parts_box              64.000000    64.000000 
CSS_parts_x_coods_max    3968.000000  3968.000000 
CSS_parts_x_coods_min     128.000000   128.000000 
CSS_parts_y_coods_max    3968.000000  3968.000000 
CSS_parts_y_coods_min     128.000000   128.000000 
CSS_rank_threshold          0.050000     0.050000 
CSS_refine3d_pmd          200.000000   200.000000 
maxtime_hr                 96.000000    96.000000 
  wait_sec                180.000000   180.000000 
 

# version 30001

data_scheme_bools

loop_ 
_rlnSchemeBooleanVariableName #1 
_rlnSchemeBooleanVariableValue #2 
_rlnSchemeBooleanVariableResetValue #3 
has_ctffind            1            0 
 

# version 30001

data_scheme_strings

loop_ 
_rlnSchemeStringVariableName #1 
_rlnSchemeStringVariableValue #2 
_rlnSchemeStringVariableResetValue #3 
ctf_mics                Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star       Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star 
selected_parts          Schemes/1_CS_tutorial_d64/select_rm_bars_xy/particles.star    Schemes/1_CS_tutorial_d64/select_rm_bars_xy/particles.star
mask_d64                βgalactosidase_mask_apix3o54_d64.mrc                          βgalactosidase_mask_apix3o54_d64.mrc
ref_d64                 βgalactosidase_apix3o54_d64.mrc                               βgalactosidase_apix3o54_d64.mrc
sym_name_initial        C1                                                            C1
sym_name_class3d        C1                                                            C1
sym_name_refine3d_apo   D2                                                            D2
micrographs             micrographs                                                   micrographs 
particles               particles                                                     particles 
 
# version 30001

data_scheme_operators

loop_ 
_rlnSchemeOperatorName #1 
_rlnSchemeOperatorType #2 
_rlnSchemeOperatorOutput #3 
_rlnSchemeOperatorInput1 #4 
_rlnSchemeOperatorInput2 #5 
EXIT               exit               undefined       undefined    undefined 
EXIT_maxtime       exit_maxtime       undefined       maxtime_hr   undefined 
HAS_ctffind        bool=file_exists   has_ctffind     ctf_mics     undefined 
WAIT               wait               undefined       wait_sec     undefined 
 

# version 30001

data_scheme_jobs

loop_ 
_rlnSchemeJobNameOriginal #1 
_rlnSchemeJobName #2 
_rlnSchemeJobMode #3 
_rlnSchemeJobHasStarted #4 
0000_Import_mask_d64              Import/job022/          new            1 
0000_Import_ref_d64               Import/job023/          new            1 
0100_select_mic                   Select/job024/          new            1 
0200_cryolo                       External/job025/        new            1 
0300_extract                      Extract/job026/         new            1 
0301_extract_rm_bars_x            Select/job027/          new            1 
0302_extract_rm_bars_xy           Select/job028/          new            1 
0400_class2d                      Class2D/job029/         new            1 
0500_select_class2D               Select/job030/          new            1 
0600_initialmodel                 InitialModel/job031/    new            1 
0700_class3d                      Class3D/job032/         new            1 
0800_class3D_select               External/job033/        new            1 
0901_refine3D_class001_d64        Refine3D/job034/        new            1 
0902_refine3D_class002_d64        Refine3D/job036/        new            1 
0903_refine3D_class003_d64        Refine3D/job038/        new            1 
0904_refine3D_class004_d64        Refine3D/job040/        new            1 
0905_refine3D_best_d64            Refine3D/job042/        new            1 
1001_postprocess_class001_d64     PostProcess/job035/     new            1 
1002_postprocess_class002_d64     PostProcess/job037/     new            1 
1003_postprocess_class003_d64     PostProcess/job039/     new            1 
1004_postprocess_class004_d64     PostProcess/job041/     new            1 
1005_postprocess_best_d64         PostProcess/job043/     new            1 
 

# version 30001

data_scheme_edges

loop_ 
_rlnSchemeEdgeInputNodeName #1 
_rlnSchemeEdgeOutputNodeName #2 
_rlnSchemeEdgeIsFork #3 
_rlnSchemeEdgeOutputNodeNameIfTrue #4 
_rlnSchemeEdgeBooleanVariable #5 
WAIT                              EXIT_maxtime                     0  undefined                undefined 
EXIT_maxtime                      HAS_ctffind                      0  undefined                undefined 
HAS_ctffind                       WAIT                             1  0000_Import_mask_d64     has_ctffind 
0000_Import_mask_d64              0000_Import_ref_d64              0  undefined                undefined 
0000_Import_ref_d64               0100_select_mic                  0  undefined                undefined 
0100_select_mic                   0200_cryolo                      0  undefined                undefined 
0200_cryolo                       0300_extract                     0  undefined                undefined 
0300_extract                      0301_extract_rm_bars_x           0  undefined                undefined 
0301_extract_rm_bars_x            0302_extract_rm_bars_xy          0  undefined                undefined 
0302_extract_rm_bars_xy           0400_class2d                     0  undefined                undefined 
0400_class2d                      0500_select_class2D              0  undefined                undefined 
0500_select_class2D               0600_initialmodel                0  undefined                undefined 
0600_initialmodel                 0700_class3d                     0  undefined                undefined 
0700_class3d                      0800_class3D_select              0  undefined                undefined 
0800_class3D_select               0901_refine3D_class001_d64       0  undefined                undefined 
0901_refine3D_class001_d64        1001_postprocess_class001_d64    0  undefined                undefined 
1001_postprocess_class001_d64     0902_refine3D_class002_d64       0  undefined                undefined 
0902_refine3D_class002_d64        1002_postprocess_class002_d64    0  undefined                undefined 
1002_postprocess_class002_d64     0903_refine3D_class003_d64       0  undefined                undefined 
0903_refine3D_class003_d64        1003_postprocess_class003_d64    0  undefined                undefined 
1003_postprocess_class003_d64     0904_refine3D_class004_d64       0  undefined                undefined 
0904_refine3D_class004_d64        1004_postprocess_class004_d64    0  undefined                undefined 
1004_postprocess_class004_d64     0905_refine3D_best_d64           0  undefined                undefined 
0905_refine3D_best_d64            1005_postprocess_best_d64        0  undefined                undefined 
1005_postprocess_best_d64         EXIT                             0  undefined                undefined 
