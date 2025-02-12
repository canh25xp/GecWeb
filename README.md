# Grammatical Error Correction Using Machine Learning Web Application

This repo is a centerialized place for my graduation project, icluding the api, web interface, and the thesis report.

## Clone the repo

```sh
git clone https://github.com/canh25xp/GecWeb
git submodule update --init --recursive
```

To stay up to date with the submodule, run `git submodule update --recursive --remote`

## Run GecWeb

### Start the api

```sh
cd api
conda create -n gec-api python=3.10 -y
conda activate gec-api
pip install -r requirements.txt
python api.py
```

### Start the web

```sh
cd web
conda create -n gec-web python=3.10 -y
conda activate gec-web
pip install -r requirements.txt
python app.py
```

## Run Gradio-demo

Gradio app run independently, so no api is needed.

```sh
cd gradio-demo
conda create -n gec-demo python=3.10 -y
conda activate gec-demo
pip install -r requirements.txt
python main.py
```

## Compile the report

```sh
cd report
latexmk -file-line-error -synctex=1 -interaction=nonstopmode  -xelatex -outdir=build report.tex
```
