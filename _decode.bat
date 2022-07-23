@echo off
emit "%1" [| aes -mCBC REFINERYTESTDATA | dump -t {sha256} | cfmt {sha256} ]]
