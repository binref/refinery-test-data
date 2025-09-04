@echo off
if "%2"=="" (set key=REFINERYTESTDATA) else (set key=%2)
emit "%1" [| put id sha256 | aes -RmCBC %key% | dump -t {id}.enc | aes -mCBC %key% | sha256 -t | pf -e {id}\n{} ]]
del "%1"
