# Banxico & INEGI data :bank:

The project is to create an ETL pipeline to get data from the Banxico and INEGI APIs and store it in an AWS S3 bucket to posteriorly create an Athena table to query the data and analyze the `FX` with the `Inflation` and the `Interest Rate` in Mexico.

# Table of Contents :bookmark_tabs:
The project is organized as follows:
````
.
├── LICENSE
├── README.md
├── config.yaml
├── requirements.txt
└── src
    ├── apis_exploration.ipynb
    ├── s1_etl.ipynb
    ├── s2_elt.ipynb
    ├── s3_analytics.ipynb
    └── sql
        └── ELT.sql
```
Where the important notebooks are `s1_etl.ipynb`, `s2_elt.ipynb` and `s3_analytics.ipynb`. The `config.yaml` file contains the configuration for the project.


# Configuration :gear:

## Environment

The project uses python 3.11. Please create the following conda environment to run the project and to install the required packages.

```bash
conda create --name banxico_inegi_env python=3.11
conda activate banxico_inegi_env
pip install -r requirements.txt
```

## Credentials

### Banxico and INEGI API

In order to use the Banxico and INEGI API, you need to have an account and get your API keys. You can get them [here](https://www.banxico.org.mx/SieAPIRest/service/v1/) and from [INEGI](https://www.inegi.org.mx/app/api/denue/v1/tokenVerify.aspx). Once you have your keys, you can set them as environment variables in your system or in a `.env` file in the root of the project. The keys are `API_BANXICO` and `API_INEGI`.
```bash
API_BANXICO=your_banxico_api_key
API_INEGI=your_inegi_api_key
```

### AWS S3

The project uses AWS S3 to store the data. You need to have an account and set your credentials as environment variables in your system or in a `.env` file in the root of the project. The keys are `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
```bash
AWS_ACCESS_KEY_ID=your_aws_access_key_id
AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
```
