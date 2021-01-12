#!/bin/sh

awk '(NR == 1) || (FNR > 1)' ./ciudad-real/results/summaries/*.csv > ./ciudad-real/results/summaries/all_cases_validation_survey_summary.csv