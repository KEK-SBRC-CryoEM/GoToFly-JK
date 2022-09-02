
# version 30001

data_scheme_general

_rlnSchemeName                       Schemes/0_CS_tutorial_prep/
_rlnSchemeCurrentNodeName            WAIT
 

# version 30001

data_scheme_floats

loop_ 
_rlnSchemeFloatVariableName #1 
_rlnSchemeFloatVariableValue #2 
_rlnSchemeFloatVariableResetValue #3 
CS_Cs                           1.400000       1.400000 
CS_angpix_mic                   0.885000       0.885000 
CS_ctf_max_def              50000.000000   50000.000000 
CS_ctf_max_res                  3.000000       3.000000 
CS_ctf_min_def               5000.000000    5000.000000 
CS_dose_per_frame               1.277000       1.277000 
CS_eer_grouping                32.000000      32.000000 
CS_first_frame_sum              1.000000       1.000000 
CS_kV                         200.000000     200.000000 
CS_motioncorr_max_motion       80.000000      80.000000 
current_nr_import_movies        0.000000       0.000000 
do_at_most                    100.000000     100.000000 
maxtime_hr                     96.000000      96.000000 
pre_nr_motioncorr_mics          0.000000       0.000000 
  wait_sec                    180.000000     180.000000 
 

# version 30001

data_scheme_bools

loop_ 
_rlnSchemeBooleanVariableName #1 
_rlnSchemeBooleanVariableValue #2 
_rlnSchemeBooleanVariableResetValue #3 
has_unprocessed_motioncorr_mics            0            0 
 

# version 30001

data_scheme_strings

loop_ 
_rlnSchemeStringVariableName #1 
_rlnSchemeStringVariableValue #2 
_rlnSchemeStringVariableResetValue #3 
CS_fn_in_raw              Micrographs/*tiff                                                   Micrographs/*tiff
ctffind_mics              Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star             Schemes/0_CS_tutorial_prep/ctffind/micrographs_ctf.star 
import_movies             Schemes/0_CS_tutorial_prep/importmovies/movies.star                 Schemes/0_CS_tutorial_prep/importmovies/movies.star 
motioncor_mics            Schemes/0_CS_tutorial_prep/motioncorr/corrected_micrographs.star    Schemes/0_CS_tutorial_prep/motioncorr/corrected_micrographs.star    
selected_motioncor_mics   Schemes/0_CS_tutorial_prep/select_motioncor_mics/micrographs.star   Schemes/0_CS_tutorial_prep/select_motioncor_mics/micrographs.star 
CS_fn_mtf                 mtf_k2_200kV.star                                                   mtf_k2_200kV.star
micrographs               micrographs                                                         micrographs 
movies                    movies                                                              movies

# version 30001

data_scheme_operators

loop_ 
_rlnSchemeOperatorName #1 
_rlnSchemeOperatorType #2 
_rlnSchemeOperatorOutput #3 
_rlnSchemeOperatorInput1 #4 
_rlnSchemeOperatorInput2 #5 
COUNT_current_import_movies        float=count_images        current_nr_import_movies           import_movies              movies 
COUNT_pre_motioncorr_mics          float=count_images        pre_nr_motioncorr_mics             motioncor_mics             micrographs 
EXIT_maxtime                       exit_maxtime              undefined                          maxtime_hr                 undefined 
HAS_unprocessed_motioncorr_mics    bool=ge                   has_unprocessed_motioncorr_mics    current_nr_import_movies   pre_nr_motioncorr_mics 
      WAIT                         wait                      undefined                          wait_sec                   undefined 
 

# version 30001

data_scheme_jobs

loop_ 
_rlnSchemeJobNameOriginal #1 
_rlnSchemeJobName #2 
_rlnSchemeJobMode #3 
_rlnSchemeJobHasStarted #4 
   ctffind               ctffind                 continue            0 
importmovies             importmovies            continue            0 
motioncorr               motioncorr              continue            0 
select_motioncor_mics    select_motioncor_mics   continue            0 
 

# version 30001

data_scheme_edges

loop_ 
_rlnSchemeEdgeInputNodeName #1 
_rlnSchemeEdgeOutputNodeName #2 
_rlnSchemeEdgeIsFork #3 
_rlnSchemeEdgeOutputNodeNameIfTrue #4 
_rlnSchemeEdgeBooleanVariable #5 
WAIT                                 EXIT_maxtime                           0  undefined     undefined 
EXIT_maxtime                         importmovies                           0  undefined     undefined 
importmovies                         COUNT_current_import_movies            0  undefined     undefined 
COUNT_current_import_movies          COUNT_pre_motioncorr_mics              0  undefined     undefined 
COUNT_pre_motioncorr_mics            HAS_unprocessed_motioncorr_mics        0  undefined     undefined 
HAS_unprocessed_motioncorr_mics      WAIT                                   1  motioncorr    has_unprocessed_motioncorr_mics 
motioncorr                           select_motioncor_mics                  0  undefined     undefined 
select_motioncor_mics                ctffind                                0  undefined     undefined 
ctffind                              WAIT                                   0  undefined     undefined 
