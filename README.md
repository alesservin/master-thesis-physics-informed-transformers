# Thesis-Physics-Informed-Encoder
 Repository for Implementation of Transformer Encoder with Physical Formula to estimate State of Charge of the dataset  Battery and Heating Data in Real Driving Cycles

 # Docker - Instructions

Download and unzip the data.zip file from [BWSyncAndShare](https://bwsyncandshare.kit.edu/s/XBXH8p9n893wjYd?path=%2FRelevant%2FBattery%20and%20Heating%20Data%20in%20Real%20Driving%20Cycles)

The project folder should have (at least) the following structure before building the docker image:
 ```
this-project/ 
├── data
│     └── Battery_and_Heating_Data_in_Real_Driving_Cycles-Full_trips/ <files>
├── TransformerEncoder/ <files>
├──TSTransformerEncoderClassiRegressor/ <files>
├──XGBRegressor/ <files>
├──Dockerfile
└──requirements.txt
    
```


## Build Docker image
```
docker build -t "thesis_physics_informed_transformers" .
```

## Run a Docker Container from the Image, running Jupyter Lab
```
docker run --gpus all -p 8888:8888 thesis_physics_informed_transformers 
```

In the console, look for the URL starting with http://127.0.0.1:8888/lab?token=, copy the full URL and navigate to it on your browser. You should be able to load Jupyter Lab.
