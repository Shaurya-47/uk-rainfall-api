#!/bin/zsh
# run this from the root of the repository with uk_rainfall_env environment activated with the command "sh <filename>.sh"

# steps - open git bash and run the following:
# source ~/anaconda3/etc/profile.d/conda.sh
# conda activate uk_rainfall_env
# cd ./Documents/GitHub/uk-rainfall-api
# sh execute_notebooks_latest.sh

jupyter nbconvert \
    --execute \
    --to html \
    ./notebooks/data_retrieval_processing_latest.ipynb \
    --output-dir ./reports/notebook_outputs \
    --output "data_latest_notebook_$(date +%F).html"

jupyter nbconvert \
    --execute \
    --to html \
    ./notebooks/generate_map_latest.ipynb \
    --output-dir ./reports/notebook_outputs \
    --output "map_latest_notebook_$(date +%F).html"
