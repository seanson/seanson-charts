#!/bin/bash
GH_USERNAME="seanson"
REPO="charts-buildkite-metrics-agent"
CHART_REPO="seanson-charts"
DEPLOY_DIR=".deploy/"


cr index --owner "${GH_USERNAME}" \
         --git-repo "${REPO}" \
         --charts-repo "https://github.com/${GH_USERNAME}/${CHART_REPO}" \
         -i index.yaml \
         -p "../${REPO}/.deploy"
