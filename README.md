# Binary Refinery Test Data

The files in this repository are samples used in unit tests for the [binary refinery][binref]. As many of
the samples are **malware**, they have been encrypted. Please take all necessary precautions when dealing
with these files, they might be dangerous to your device.
Samples from this repository can be decrypted using AES-128 in CBC mode, using the key `REFINERYTESTDATA`
and an all-zero initialization vector. Using [binary refinery][binref]:
```
emit ee790d6f09c2292d457cbe92729937e06b3e21eb6b212bf2e32386ba7c2ff22c.enc \
  | aes -MCBC REFINERYTESTDATA \
  | dump ee790d6f09c2292d457cbe92729937e06b3e21eb6b212bf2e32386ba7c2ff22c
```

[binref]: https://github.com/binref/refinery/