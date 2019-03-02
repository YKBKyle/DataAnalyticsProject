## Get Data
# Meaning of Each Variable:
# 1. age: age in years
# 2. sex: sex (1 = male; 0 = female)
# 3. cp: chest pain type
# -- Value 1: typical angina
# -- Value 2: atypical angina
# -- Value 3: non-anginal pain
# -- Value 4: asymptomatic
# 4. trestbps: resting blood pressure (in mm Hg on admission to the hospital)
# 5. chol: serum cholesterol in mg/dl
# 6. fbs: (fasting blood sugar > 120 mg/dl) (1 = true; 0 = false)
# 7. Restecg: resting electrocardiographic results
# -- Value 0: normal
# -- Value 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
# -- Value 2: showing probable or definite left ventricular hypertrophy by Estes' criteria
# 8. thalach: maximum heart rate achieved
# 9. exang: exercise induced angina (1 = yes; 0 = no)
# 10. oldpeak: ST depression induced by exercise relative to rest
# 11. slope: the slope of the peak exercise ST segment
# -- Value 1: upsloping
# -- Value 2: flat
# -- Value 3: downsloping
# 12. ca: number of major vessels (0-3) colored by flouroscopy
# 13. thal: 3 = normal; 6 = fixed defect; 7 = reversable defect
# 14. num: diagnosis of heart disease (angiographic disease status)
# -- Value 0: < 50% diameter narrowing
# -- Value 1: > 50% diameter narrowing
# (in any major vessel)
Link1 <- "https://archive.ics.uci.edu/ml/machine-learning-databases"
Link2 <- "/heart-disease/processed.cleveland.data"
Link <- paste0(Link1,Link2)
FileName <- "HeartDisease.csv"
download.file(Link, FileName)
HeartDisease <- read.csv(FileName,header = F)

VarNames <- c("Age","Sex","ChestPainType","RestBloodPressure","SerumCholesterol",
              "FastBloodSugar","RestElectrocardiographic","MaxHeartRate",
              "Exercise_Angina","ST_Depression","Slope","NumVesselColored",
              "ThalLevel","DiagnosisHeartDisease")
colnames(HeartDisease) <- VarNames


## Explore and clean the data
pairs(~Age+Sex+ChestPainType+RestBloodPressure+SerumCholesterol+FastBloodSugar,
      data = HeartDisease)
      #+RestElectrocardiographic+MaxHeartRate+Exercise_Angina+ST_Depression
      #+Slope+NumVesselColored+ThalLevel+DiagnosisHeartDisease,data = HeartDisease)
pairs(DiagnosisHeartDisease~ChestPainType+RestBloodPressure+SerumCholesterol+FastBloodSugar,
      data = HeartDisease)
#+RestElectrocardiographic+MaxHeartRate+Exercise_Angina+ST_Depression
#+Slope+NumVesselColored+ThalLevel+DiagnosisHeartDisease,data = HeartDisease)

##
 # Q1: which variable is Y?
 # Q2: Is it a balanced-samples case?

 # can rearrange the variables: put all varaibles with level value together
