#!/bin/sh
rm -rf .git
git clone https://github.com/publishing-systems/digital_publishing_workflow_tools/
cd digital_publishing_workflow_tools
rm -rf .git
make
cd ..

printf "Build date: $(date "+%Y-%m-%d").\n" > ./digital_publishing_workflow_tools/version.txt
currentDate=$(date "+%Y%m%d")

cp -r digital_publishing_workflow_tools digital_publishing_workflow_tools_gnu
cp -r -n scripts_gnu/* digital_publishing_workflow_tools_gnu
zip -r digital_publishing_workflow_tools_gnu_$currentDate.zip digital_publishing_workflow_tools_gnu
sha256sum digital_publishing_workflow_tools_gnu_$currentDate.zip > digital_publishing_workflow_tools_gnu_$currentDate.zip.sha256
rm -r digital_publishing_workflow_tools_gnu

cp -r digital_publishing_workflow_tools digital_publishing_workflow_tools_windows
cp -r -n scripts_windows/* digital_publishing_workflow_tools_windows
zip -r digital_publishing_workflow_tools_windows_$currentDate.zip digital_publishing_workflow_tools_windows
sha256sum digital_publishing_workflow_tools_windows_$currentDate.zip > digital_publishing_workflow_tools_windows_$currentDate.zip.sha256
rm -r digital_publishing_workflow_tools_windows

rm -r digital_publishing_workflow_tools
