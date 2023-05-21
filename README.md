# uk-rainfall-api
Repository containing a data pipeline that extracts and displays the latest UK rainfall data from the Environment Agency (EA) API 
(https://environment.data.gov.uk/flood-monitoring/doc/rainfall)

## TODOs (REMOVE THIS)

(1) Make Readme first
(2) Add a picture of the 
(1) Clean code for data retrieval functions, especially for readings
(2) Add data quality checks in the required places
(10) duplicate data quality check by IDs from original data frames (list duplicates as well) - DO THIS FOR BOTH DATASETS AND THEN SAVE THEM!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
(5) map - add a short snippet to only plot stations with rainfall readings - can also put this in what to do if more time section
(6) review whole thing once done
(7) Once everything is done for latest data, review date, time and duplicates for aggregated data. Excel file too. The times are wrong there clearly!!!!!!!!!!!!!!!!!!!!!!!!!!!!
(8) bach script: "--no-input \" as a command in jupyter nbconvert if you want notebook outputs without code

ENABLE THE COOKIE LINE IF API CALLS FAIL

## Requirements
* Python 3 and Anaconda
* Libraries: numpy, pandas, folium, and MarkerCluster from folium.plugins

## Setup
1. **Clone this repository**
    * Open the CLI(= Command-Line Interface, Mac: Terminal, Windows: Command Prompt)/Git Bash
    * Navigate to your desired location using `cd <path>`
    * Type `git clone https://github.com/Shaurya-47/uk-rainfall-api.git`

2. **Install the conda package mananger**
   * To install the required packages from the environment file `uk_rainfall_env.yml`, you need to have the conda package manager installed:
        * [windows](https://conda.io/projects/conda/en/latest/user-guide/install/windows.html)
        * [macOS](https://conda.io/projects/conda/en/latest/user-guide/install/macos.html)
        * [linux](https://conda.io/projects/conda/en/latest/user-guide/install/linux.html)

3. **Install the project environment `uk_rainfall_env` from the `uk_rainfall_env.yml` file**
   * type `conda env create -f uk_rainfall_env.yml` in your CLI

## Usage

1. Open the CLI or Git Bash and type `source ~/anaconda3/etc/profile.d/conda.sh`
2. Activate the Python environment you just installed via `conda activate uk_rainfall_env`
3. Navigate to the root project directory where the bash scripts are stored using `cd <path>` (e.g., `cd ./Documents/GitHub/uk-rainfall-api`)
4. Run the Bash scripts `execute_notebooks_latest.sh` or `execute_notebooks_daily_aggregated.sh` to save and visualize the latest or aggregated daily rainfall measurements across 
the UK EA measurement stations respectively
5. Alternatively, you can run the jupyter notebooks via the Jupyter interface and obtain the same results

---
### Project structure

```
.
├── data
│   └── rainfall_data_latest_{date}.csv
│   └── rainfall_data_latest_{date}.xlsx
│   └── rainfall_data_daily_aggregated_{date}.csv
│   └── rainfall_data_daily_aggregated_{date}.xlsx
├── notebooks
│   └── data_retrieval_processing_latest.ipynb
│   └── generate_map_latest.ipynb
│   └── data_retrieval_processing_daily_aggregated.ipynb
│   └── generate_map_aggregated.ipynb
├── reports
│   └── maps
│	└── rainfall_map_latest_{date}
│	└── rainfall_map_daily_aggregated_{date}
│   └── notebook_outputs
│	└── data_latest_notebook_{date}
│	└── map_latest_notebook_{date}
│	└── data_daily_aggregated_notebook_{date}
│	└── map_daily_aggregated_notebook_{date}
├── README.md
├── uk_rainfall_env.yml
├── execute_notebooks_latest.sh
├── execute_notebooks_daily_aggregated.sh
```
---

## To-do
* add all the things here that you could do but can't due to lack of time - OFFICIAL

## License

> Copyright (c) 2016 Environment Agency

> This repository uses Environment Agency rainfall data from the real-time data API (Beta)


