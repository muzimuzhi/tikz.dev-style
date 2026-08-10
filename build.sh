#!/usr/bin/env bash

lualatex -interaction=nonstopmode -halt-on-error main.tex
lwarpmk cleanall
lwarpmk html
./build-limages-with-margin.lua limages # same as lwarpmk limages but it also makes pngs
sleep 5
uv run --script postprocessing.py
