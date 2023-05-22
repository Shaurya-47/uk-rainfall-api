# uk-rainfall-api
Repository containing a data pipeline that extracts, saves, and displays the latest UK rainfall data for all measurement stations on a map (latest readings and aggregated daily readings). The data is fetched from the Environment Agency (EA) API 
(https://environment.data.gov.uk/flood-monitoring/doc/rainfall).

## Screenshot of a map generated from the latest data:
![alt text](https://github.com/Shaurya-47/uk-rainfall-api/blob/main/map_screenshot.PNG?raw=true)

## Requirements
* Python 3, Anaconda, Git (or GitHub Desktop)
* Python libraries: `numpy`, `pandas`, `folium`, and `MarkerCluster()` from `folium.plugins`

## Setup
1. **Install Git**
	* Install Git via https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
	* Alternatively, you can also use GitHub Desktop; install via https://desktop.github.com/

2. **Clone this repository**
    * Open the CLI (Command Line Interface; Mac: Terminal, Windows: Command Prompt) or Git Bash
    * Navigate to your desired location using `cd <path>`
    * Type `git clone https://github.com/Shaurya-47/uk-rainfall-api.git`

3. **Install the conda package mananger**
   * To install the required packages from the environment file `uk_rainfall_env.yml`, you need to have the conda package manager installed:
        * [Windows](https://conda.io/projects/conda/en/latest/user-guide/install/windows.html)
        * [MacOS](https://conda.io/projects/conda/en/latest/user-guide/install/macos.html)
        * [Linux](https://conda.io/projects/conda/en/latest/user-guide/install/linux.html)

4. **Install the project environment from the environment file**
    * Open Git Bash or Anaconda Prompt (can also be done via the CLI if conda is added to the PATH environment during installation)
    * Navigate to the directory where `uk-rainfall-api` is installed via `cd <path>`
    * Type `conda env create -f uk_rainfall_env.yml`
    * This can take several minutes; alternatively install the required packages manually and then run the code

## Usage

1. Open Git Bash and type `source ~/anaconda3/etc/profile.d/conda.sh` (can also be done via the CLI)
2. Activate the Python environment you just installed via `conda activate uk_rainfall_env`
3. Navigate to the root project directory where the bash scripts are stored using `cd <path>` (e.g., `cd ./Documents/GitHub/uk-rainfall-api`)
4. Run the Bash script `sh execute_notebooks_latest.sh` or `sh execute_notebooks_daily_aggregated.sh` to save and visualize the latest or aggregated daily rainfall measurements across 
the UK EA measurement stations respectively
5. Alternatively, you can run the jupyter notebooks via the Jupyter interface and obtain the same results. Files with the suffix `latest` use only the latest measurements and files with the suffix `daily_aggregated`
 use daily data that is aggregated per station

## Repository structure

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
│   └── generate_map_daily_aggregated.ipynb
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

* `data`: contains the cleaned datasets
* `notebooks`: contains the Jupyter notebooks that process, clean, and save the data, and generate the maps
* `reports`: contains the outputs
	* `maps`: contains the generated maps
	* `notebook_outputs`: contains the Jupyter notebook outputs as html files - for code understanding

---

## To-do
* Add a filter to the map to plot only stations with non-zero rainfall readings. This would show the regions with recent rainfall and declutter the map
* Add more data quality checks along data types
* Investigate duplicates in more detail: more information per entry can by retained by preserving entries with more values in the columns. Currently the first entries are retained
* Fetch more data and display historical rainfall readings per station on a time-series chart
* Mark non-responsive stations in red on the map
* Add search functionality to look for measurement stations by ID

## License

> Copyright (c) 2016 Environment Agency

> This repository uses Environment Agency rainfall data from the real-time data API (Beta)


