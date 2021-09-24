#!/bin/bash

[ -d "${CMSSW_BASE}"/SiPixelTools/PhaseIPixelNtuplizer/python/configs ] || exit 1

cmsDriver.py --step RAW2DIGI,L1Reco,RECO --process RERECO --eventcontent RECO --datatier RECO \
 --data --scenario cosmics --conditions auto:run3_data_prompt --era Run3 \
 --filein dbs:"/ExpressCosmics/Commissioning2021-Express-v1/FEVT run=344186" \
 --python_filename="${CMSSW_BASE}"/SiPixelTools/PhaseIPixelNtuplizer/python/configs/Data_CRuZeT2021_113X_cfg.py \
 --customise Configuration/DataProcessing/RecoTLR.customisePrompt,Configuration/DataProcessing/RecoTLR.customiseCosmicData \
 -n 10 --no_exec
