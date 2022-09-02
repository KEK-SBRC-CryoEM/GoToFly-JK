
# version 30001

data_scheme_general

_rlnSchemeName                       Schemes/3_CS_tutorial_CTFRefine_Cycle/
_rlnSchemeCurrentNodeName            WAIT
 

# version 30001

data_scheme_floats

loop_ 
_rlnSchemeFloatVariableName #1 
_rlnSchemeFloatVariableValue #2 
_rlnSchemeFloatVariableResetValue #3  
CSS_refine3d_pmd_reex            200.000000   200.000000 
maxtime_hr                        96.000000    96.000000 
  wait_sec                       180.000000   180.000000 
 

# version 30001

data_scheme_bools

loop_ 
_rlnSchemeBooleanVariableName #1 
_rlnSchemeBooleanVariableValue #2 
_rlnSchemeBooleanVariableResetValue #3 
has_ctffind            0            0 
has_postprocess            1            0 
has_refine3d            1            0 
 

# version 30001

data_scheme_strings

loop_ 
_rlnSchemeStringVariableName #1 
_rlnSchemeStringVariableValue #2 
_rlnSchemeStringVariableResetValue #3 
  ctf_mics         Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star                              Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star 
micrographs        micrographs                                                                          micrographs 
 particles         particles                                                                            particles 
postprocess_map    Schemes/2_CS_tutorial_init_d288/1500_postprocess_local_d288_init/postprocess.star    Schemes/2_CS_tutorial_init_d288/1500_postprocess_local_d288_init/postprocess.star 
refine3D_data      Schemes/2_CS_tutorial_init_d288/1400_refine3D_local_d288_init/run_data.star          Schemes/2_CS_tutorial_init_d288/1400_refine3D_local_d288_init/run_data.star 
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
EXIT                 exit              undefined        undefined         undefined 
EXIT_maxtime         exit_maxtime      undefined        maxtime_hr        undefined 
HAS_postprocess      bool=file_exists  has_postprocess  postprocess_map   undefined 
HAS_refine3D         bool=file_exists  has_refine3d     refine3D_data     undefined 
WAIT                 wait              undefined        wait_sec          undefined 
 

# version 30001

data_scheme_jobs

loop_ 
_rlnSchemeJobNameOriginal #1 
_rlnSchemeJobName #2 
_rlnSchemeJobMode #3 
_rlnSchemeJobHasStarted #4 
1601_CtfRefine_aberration_1th       CtfRefine/job091/        new            1 
1602_CtfRefine_magnification_1th    CtfRefine/job092/        new            1 
1603_CtfRefine_CTFparameter_1th     CtfRefine/job093/        new            1 
1604_Refine3D_CtfRefine_1th         Refine3D/job094/         new            1 
1605_Postprocess_CtfRefine_1th      PostProcess/job095/      new            1 
1606_Polish_1th                     Polish/job096/           new            1 
1607_Refine3D_Polish_1th            Refine3D/job097/         new            1 
1608_Postprocess_Polish_1th         PostProcess/job098/      new            1 
1701_CtfRefine_aberration_2th       CtfRefine/job099/        new            1 
1702_CtfRefine_magnification_2th    CtfRefine/job100/        new            1 
1703_CtfRefine_CTFparameter_2th     CtfRefine/job101/        new            1 
1704_Refine3D_CtfRefine_2th         Refine3D/job102/         new            1 
1705_Postprocess_CtfRefine_2th      PostProcess/job103/      new            1 
1706_Polish_2th                     Polish/job104/           new            1 
1707_Refine3D_Polish_2th            Refine3D/job105/         new            1 
1708_Postprocess_Polish_2th         PostProcess/job106/      new            1 
1801_CtfRefine_aberration_3th       CtfRefine/job107/        new            1 
1802_CtfRefine_magnification_3th    CtfRefine/job108/        new            1 
1803_CtfRefine_CTFparameter_3th     CtfRefine/job109/        new            1 
1804_Refine3D_CtfRefine_3th         Refine3D/job110/         new            1 
1805_Postprocess_CtfRefine_3th      PostProcess/job111/      new            1 
1806_Polish_3th                     Polish/job112/           new            1 
1807_Refine3D_Polish_3th            Refine3D/job113/         new            1 
1808_Postprocess_Polish_3th         PostProcess/job114/      new            1 
 

# version 30001

data_scheme_edges

loop_ 
_rlnSchemeEdgeInputNodeName #1 
_rlnSchemeEdgeOutputNodeName #2 
_rlnSchemeEdgeIsFork #3 
_rlnSchemeEdgeOutputNodeNameIfTrue #4 
_rlnSchemeEdgeBooleanVariable #5 
WAIT                                EXIT_maxtime                           0  undefined                     undefined 
EXIT_maxtime                        HAS_refine3D                           0  undefined                     undefined 
HAS_refine3D                        WAIT                                   1 HAS_postprocess                has_refine3d 
HAS_postprocess                     WAIT                                   1 1601_CtfRefine_aberration_1th  has_postprocess 
1601_CtfRefine_aberration_1th       1602_CtfRefine_magnification_1th       0  undefined                     undefined 
1602_CtfRefine_magnification_1th    1603_CtfRefine_CTFparameter_1th        0  undefined                     undefined 
1603_CtfRefine_CTFparameter_1th     1604_Refine3D_CtfRefine_1th            0  undefined                     undefined 
1604_Refine3D_CtfRefine_1th         1605_Postprocess_CtfRefine_1th         0  undefined                     undefined 
1605_Postprocess_CtfRefine_1th      1606_Polish_1th                        0  undefined                     undefined 
1606_Polish_1th                     1607_Refine3D_Polish_1th               0  undefined                     undefined 
1607_Refine3D_Polish_1th            1608_Postprocess_Polish_1th            0  undefined                     undefined 
1608_Postprocess_Polish_1th         1701_CtfRefine_aberration_2th          0  undefined                     undefined 
1701_CtfRefine_aberration_2th       1702_CtfRefine_magnification_2th       0  undefined                     undefined 
1702_CtfRefine_magnification_2th    1703_CtfRefine_CTFparameter_2th        0  undefined                     undefined 
1703_CtfRefine_CTFparameter_2th     1704_Refine3D_CtfRefine_2th            0  undefined                     undefined 
1704_Refine3D_CtfRefine_2th         1705_Postprocess_CtfRefine_2th         0  undefined                     undefined 
1705_Postprocess_CtfRefine_2th      1706_Polish_2th                        0  undefined                     undefined 
1706_Polish_2th                     1707_Refine3D_Polish_2th               0  undefined                     undefined 
1707_Refine3D_Polish_2th            1708_Postprocess_Polish_2th            0  undefined                     undefined 
1708_Postprocess_Polish_2th         1801_CtfRefine_aberration_3th          0  undefined                     undefined 
1801_CtfRefine_aberration_3th       1802_CtfRefine_magnification_3th       0  undefined                     undefined 
1802_CtfRefine_magnification_3th    1803_CtfRefine_CTFparameter_3th        0  undefined                     undefined 
1803_CtfRefine_CTFparameter_3th     1804_Refine3D_CtfRefine_3th            0  undefined                     undefined 
1804_Refine3D_CtfRefine_3th         1805_Postprocess_CtfRefine_3th         0  undefined                     undefined 
1805_Postprocess_CtfRefine_3th      1806_Polish_3th                        0  undefined                     undefined 
1806_Polish_3th                     1807_Refine3D_Polish_3th               0  undefined                     undefined 
1807_Refine3D_Polish_3th            1808_Postprocess_Polish_3th            0  undefined                     undefined 
1808_Postprocess_Polish_3th         EXIT                                   0  undefined                     undefined 
 
