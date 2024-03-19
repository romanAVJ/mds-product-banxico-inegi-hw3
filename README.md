# Banxico & INEGI data :bank:

# Configuration :gear:

## Environment

The project uses python 3.11. Please create the following conda environment to run the project and to install the required packages.

```bash
conda create --name banxico_inegi_env python=3.11
conda activate banxico_inegi_env
pip install -r requirements.txt
```

## Credentials

In order to use the Banxico and INEGI API, you need to have an account and get your API keys. You can get them [here](https://www.banxico.org.mx/SieAPIRest/service/v1/) and from [INEGI](https://www.inegi.org.mx/app/api/denue/v1/tokenVerify.aspx). Once you have your keys, you can set them as environment variables in your system or in a `.env` file in the root of the project. The keys are `API_BANXICO` and `API_INEGI`.
```bash
API_BANXICO=your_banxico_api_key
API_INEGI=your_inegi_api_key
```
