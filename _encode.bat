@echo off
emit "%1" [| put id sha256 | aes -RmCBC REFINERYTESTDATA | dump -t {id}.enc | aes -mCBC REFINERYTESTDATA | sha256 -t | cfmt {id}\n{} ]]
del "%1"
