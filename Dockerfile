FROM continuumio/miniconda3:latest

# Set working directory
WORKDIR /physics_informed_encoder

# Copy required files and directories
COPY data/ data/
COPY TransformerEncoder/ TransformerEncoder/
COPY TSTransformerEncoderClassiRegressor/ TSTransformerEncoderClassiRegressor/ 
COPY XGBRegressor/ XGBRegressor/
COPY requirements.txt . 

# Create environment and install dependencies
RUN conda create -n thesis_physics_informed_encoder python=3.9
RUN echo "source activate thesis_physics_informed_encoder" >> ~/.bashrc
RUN /bin/bash -c "source activate thesis_physics_informed_encoder && pip install torch --index-url https://download.pytorch.org/whl/cu124" 
RUN /bin/bash -c "source activate thesis_physics_informed_encoder && pip install -r requirements.txt"

# Use the environment in the CMD instruction and start jupyter lab
CMD ["bash", "-c", "source activate thesis_physics_informed_encoder && jupyter-lab --allow-root --ip=0.0.0.0 --no-browser"]