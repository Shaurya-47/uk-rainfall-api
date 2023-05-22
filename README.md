# uk-rainfall-api
Repository containing a data pipeline that extracts, saves, and displays the latest UK rainfall data (latest readings and aggregated daily readings) from the Environment Agency (EA) API 
(https://environment.data.gov.uk/flood-monitoring/doc/rainfall)

## Work-in-progress

## TODOs (REMOVE THIS ONCE DONE):

* Understand query code better and comment better (requests, get, json)
* Review whole thing
* Check Readme
* Add screenshot to Readme
* More data quality checks if time left
* I have 2 less stations as 'not_specified' duplicates got dropped and another spurious one
* Check if it works on another computer

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
## Project structure

```
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
│	└── rainfall_map_latest_{date}.html
│	└── rainfall_map_daily_aggregated_{date}.html
│   └── notebook_outputs
│	└── data_latest_notebook_{date}.html
│	└── map_latest_notebook_{date}.html
│	└── data_daily_aggregated_notebook_{date}.html
│	└── map_daily_aggregated_notebook_{date}.html
├── README.md
├── uk_rainfall_env.yml
├── execute_notebooks_latest.sh
├── execute_notebooks_daily_aggregated.sh
```
---

## To-do
* add all the things here that you could do but can't due to lack of time - OFFICIAL
* add a short snippet to only plot stations with rainfall readings - can also put this in what to do if more time section
* more data quality checks
* Investigate duplicates in more detail - can preserve more information by retaining entries with more values in columns. Right now I've just retained the first entries

## License

> Copyright (c) 2016 Environment Agency

> This repository uses Environment Agency rainfall data from the real-time data API (Beta)


