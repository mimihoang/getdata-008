### Feature Selections
The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


### Data Dictionary
The activitydata.txt created from script has 180 observations and 81 variables. Below are the variable names. The first two variables(activity, participant) are the identifiers and for the rest of the variable you can find the description from teh Feature selection above
- activity: activity description (walking, walking upstairs, walking downstairs, sitting, standing, laying)
- participant: participant number
- tBodyAcc-mean-X
- tBodyAcc-mean-Y 
- tBodyAcc-mean-Z 
- tBodyAcc-std-X 
- tBodyAcc-std-Y 
- tBodyAcc-std-Z 
- tGravityAcc-mean-X 
- tGravityAcc-mean-Y 
- tGravityAcc-mean-Z 
- tGravityAcc-std-X 
- tGravityAcc-std-Y 
- tGravityAcc-std-Z 
- tBodyAccJerk-mean-X 
- tBodyAccJerk-mean-Y 
- tBodyAccJerk-mean-Z 
- tBodyAccJerk-std-X 
- tBodyAccJerk-std-Y 
- tBodyAccJerk-std-Z 
- tBodyGyro-mean-X 
- tBodyGyro-mean-Y 
- tBodyGyro-mean-Z 
- tBodyGyro-std-X 
- tBodyGyro-std-Y 
- tBodyGyro-std-Z 
- tBodyGyroJerk-mean-X 
- tBodyGyroJerk-mean-Y 
- tBodyGyroJerk-mean-Z 
- tBodyGyroJerk-std-X 
- tBodyGyroJerk-std-Y 
- tBodyGyroJerk-std-Z 
- tBodyAccMag-mean 
- tBodyAccMag-std 
- tGravityAccMag-mean 
- tGravityAccMag-std 
- tBodyAccJerkMag-mean 
- tBodyAccJerkMag-std 
- tBodyGyroMag-mean 
- tBodyGyroMag-std 
- tBodyGyroJerkMag-mean 
- tBodyGyroJerkMag-std 
- fBodyAcc-mean-X
- fBodyAcc-mean-Y 
- fBodyAcc-mean-Z 
- fBodyAcc-std-X 
- fBodyAcc-std-Y 
- fBodyAcc-std-Z 
- fBodyAcc-meanFreq-X 
- fBodyAcc-meanFreq-Y 
- fBodyAcc-meanFreq-Z 
- fBodyAccJerk-mean-X 
- fBodyAccJerk-mean-Y 
- fBodyAccJerk-mean-Z 
- fBodyAccJerk-std-X 
- fBodyAccJerk-std-Y 
- fBodyAccJerk-std-Z 
- fBodyAccJerk-meanFreq-X 
- fBodyAccJerk-meanFreq-Y 
- fBodyAccJerk-meanFreq-Z 
- fBodyGyro-mean-X 
- fBodyGyro-mean-Y 
- fBodyGyro-mean-Z 
- fBodyGyro-std-X
- fBodyGyro-std-Y 
- fBodyGyro-std-Z 
- fBodyGyro-meanFreq-X 
- fBodyGyro-meanFreq-Y 
- fBodyGyro-meanFreq-Z 
- fBodyAccMag-mean 
- fBodyAccMag-std
- fBodyAccMag-meanFreq 
- fBodyBodyAccJerkMag-mean 
- fBodyBodyAccJerkMag-std 
- fBodyBodyAccJerkMag-meanFreq
- fBodyBodyGyroMag-mean
- fBodyBodyGyroMag-std 
- fBodyBodyGyroMag-meanFreq 
- fBodyBodyGyroJerkMag-mean 
- fBodyBodyGyroJerkMag-std 
- fBodyBodyGyroJerkMag-meanFreq
