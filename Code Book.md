  Variables descriptions:

  > names(measurements) #or even View(measurements)
  [1] "Subject"                                                  
   [2] "Activity"                                                 
   [3] "TimeBodyAccelerate-Mean()-X"                              
   [4] "TimeBodyAccelerate-Mean()-Y"                              
   [5] "TimeBodyAccelerate-Mean()-Z"                              
   [6] "TimeBodyAccelerate-Std()-X"                               
   [7] "TimeBodyAccelerate-Std()-Y"                               
   [8] "TimeBodyAccelerate-Std()-Z"                               
   [9] "TimeGravityAccelerate-Mean()-X"                           
  [10] "TimeGravityAccelerate-Mean()-Y"                           
  [11] "TimeGravityAccelerate-Mean()-Z"                           
  [12] "TimeGravityAccelerate-Std()-X"                            
  [13] "TimeGravityAccelerate-Std()-Y"                            
  [14] "TimeGravityAccelerate-Std()-Z"                            
  [15] "TimeBodyAccelerateJerk-Mean()-X"                          
  [16] "TimeBodyAccelerateJerk-Mean()-Y"                          
  [17] "TimeBodyAccelerateJerk-Mean()-Z"                          
  [18] "TimeBodyAccelerateJerk-Std()-X"                           
  [19] "TimeBodyAccelerateJerk-Std()-Y"                           
  [20] "TimeBodyAccelerateJerk-Std()-Z"                           
  [21] "TimeBodyGyroscope-Mean()-X"                               
  [22] "TimeBodyGyroscope-Mean()-Y"                               
  [23] "TimeBodyGyroscope-Mean()-Z"                               
  [24] "TimeBodyGyroscope-Std()-X"                                
  [25] "TimeBodyGyroscope-Std()-Y"                                
  [26] "TimeBodyGyroscope-Std()-Z"                                
  [27] "TimeBodyGyroscopeJerk-Mean()-X"                           
  [28] "TimeBodyGyroscopeJerk-Mean()-Y"                           
  [29] "TimeBodyGyroscopeJerk-Mean()-Z"                           
  [30] "TimeBodyGyroscopeJerk-Std()-X"                            
  [31] "TimeBodyGyroscopeJerk-Std()-Y"                            
  [32] "TimeBodyGyroscopeJerk-Std()-Z"                            
  [33] "TimeBodyAccelerateMagnitude-Mean()"                       
  [34] "TimeBodyAccelerateMagnitude-Std()"                        
  [35] "TimeGravityAccelerateMagnitude-Mean()"                    
  [36] "TimeGravityAccelerateMagnitude-Std()"                     
  [37] "TimeBodyAccelerateJerkMagnitude-Mean()"                   
  [38] "TimeBodyAccelerateJerkMagnitude-Std()"                    
  [39] "TimeBodyGyroscopeMagnitude-Mean()"                        
  [40] "TimeBodyGyroscopeMagnitude-Std()"                         
  [41] "TimeBodyGyroscopeJerkMagnitude-Mean()"                    
  [42] "TimeBodyGyroscopeJerkMagnitude-Std()"                     
  [43] "FrequencyuencyBodyAccelerate-Mean()-X"                    
  [44] "FrequencyuencyBodyAccelerate-Mean()-Y"                    
  [45] "FrequencyuencyBodyAccelerate-Mean()-Z"                    
  [46] "FrequencyuencyBodyAccelerate-Std()-X"                     
  [47] "FrequencyuencyBodyAccelerate-Std()-Y"                     
  [48] "FrequencyuencyBodyAccelerate-Std()-Z"                     
  [49] "FrequencyuencyBodyAccelerate-MeanFrequency()-X"           
  [50] "FrequencyuencyBodyAccelerate-MeanFrequency()-Y"           
  [51] "FrequencyuencyBodyAccelerate-MeanFrequency()-Z"           
  [52] "FrequencyuencyBodyAccelerateJerk-Mean()-X"                
  [53] "FrequencyuencyBodyAccelerateJerk-Mean()-Y"                
  [54] "FrequencyuencyBodyAccelerateJerk-Mean()-Z"                
  [55] "FrequencyuencyBodyAccelerateJerk-Std()-X"                 
  [56] "FrequencyuencyBodyAccelerateJerk-Std()-Y"                 
  [57] "FrequencyuencyBodyAccelerateJerk-Std()-Z"                 
  [58] "FrequencyuencyBodyAccelerateJerk-MeanFrequency()-X"       
  [59] "FrequencyuencyBodyAccelerateJerk-MeanFrequency()-Y"       
  [60] "FrequencyuencyBodyAccelerateJerk-MeanFrequency()-Z"       
  [61] "FrequencyuencyBodyGyroscope-Mean()-X"                     
  [62] "FrequencyuencyBodyGyroscope-Mean()-Y"                     
  [63] "FrequencyuencyBodyGyroscope-Mean()-Z"                     
  [64] "FrequencyuencyBodyGyroscope-Std()-X"                      
  [65] "FrequencyuencyBodyGyroscope-Std()-Y"                      
  [66] "FrequencyuencyBodyGyroscope-Std()-Z"                      
  [67] "FrequencyuencyBodyGyroscope-MeanFrequency()-X"            
  [68] "FrequencyuencyBodyGyroscope-MeanFrequency()-Y"            
  [69] "FrequencyuencyBodyGyroscope-MeanFrequency()-Z"            
  [70] "FrequencyuencyBodyAccelerateMagnitude-Mean()"             
  [71] "FrequencyuencyBodyAccelerateMagnitude-Std()"              
  [72] "FrequencyuencyBodyAccelerateMagnitude-MeanFrequency()"    
  [73] "FrequencyuencyBodyAccelerateJerkMagnitude-Mean()"         
  [74] "FrequencyuencyBodyAccelerateJerkMagnitude-Std()"          
  [75] "FrequencyuencyBodyAccelerateJerkMagnitude-MeanFrequency()"
  [76] "FrequencyuencyBodyGyroscopeMagnitude-Mean()"              
  [77] "FrequencyuencyBodyGyroscopeMagnitude-Std()"               
  [78] "FrequencyuencyBodyGyroscopeMagnitude-MeanFrequency()"     
  [79] "FrequencyuencyBodyGyroscopeJerkMagnitude-Mean()"          
  [80] "FrequencyuencyBodyGyroscopeJerkMagnitude-Std()"           
  [81] "FrequencyuencyBodyGyroscopeJerkMagnitude-MeanFrequency()"

  After Rename the variables in this dataframe, there exists 81 variables:

  to start with is the Subject: number of specific volunteer engaged.
                       Activity: certain name of the activities taken.
                       we grouped the dataframe by Subject and Activity, and calculate out the means values for each variables:
                       they are the mean/sd/MeanFrequency for TimeBodyGyroscope or their Accelerate. (the movements of different vectors in all three directions of x, y, z )

  Here is an short example of the final mean output of the means of different variables:
  #code of this command: tidydata[1:10, 1:10]
  Subject           Activity TimeBodyAccelerate-Mean()-X TimeBodyAccelerate-Mean()-Y TimeBodyAccelerate-Mean()-Z
1        1             LAYING                   0.2725749                -0.016317753                  -0.1071601
2        1            SITTING                   0.2768757                -0.014522052                  -0.1044127
3        1           STANDING                   0.2789713                -0.017625065                  -0.1076845
4        1            WALKING                   0.2760236                -0.020428693                  -0.1088040
5        1 WALKING_DOWNSTAIRS                   0.2955868                -0.018389858                  -0.1198737
6        1   WALKING_UPSTAIRS                   0.2559861                -0.014365495                  -0.1240745
7        2             LAYING                   0.2215982                -0.040513953                  -0.1132036
8        2            SITTING                   0.2612376                -0.001308288                  -0.1045442
9        2           STANDING                   0.2789176                -0.016137590                  -0.1106018
10       2            WALKING                   0.2773308                -0.017383819                  -0.1111481
TimeBodyAccelerate-Std()-X TimeBodyAccelerate-Std()-Y TimeBodyAccelerate-Std()-Z TimeGravityAccelerate-Mean()-X
1                  -0.9719894                 -0.9455760                -0.96676760                     -0.2256037
2                  -0.9940835                 -0.9751170                -0.97615553                      0.9380226
3                  -0.9911067                 -0.9601463                -0.96327443                      0.9238775
4                  -0.4046925                 -0.3145698                -0.15979979                      0.9259813
5                   0.2072520                 -0.1469938                 0.01143539                      0.9178184
6                  -0.3970838                 -0.1637327                -0.12928383                      0.8268743
7                  -0.9280565                 -0.8368274                -0.82606140                     -0.2488818
8                  -0.9772290                 -0.9226186                -0.93958629                      0.8315099
9                  -0.9957599                 -0.9731901                -0.97977588                      0.9429520
10                 -0.2837403                  0.1144613                -0.26002790                      0.9352232
TimeGravityAccelerate-Mean()-Y
1                     -0.08579424
2                     -0.07857364
3                     -0.06909431
4                     -0.06682465
5                     -0.05848327
6                     -0.08059260
7                      0.70554977
8                      0.20441159
9                     -0.27298383
10                    -0.28216502                     
