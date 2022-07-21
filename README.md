# GLaDOS Text-to-speech (TTS) Voice Generator
Neural network based TTS Engine.

If you want to just play around with the TTS, this works as stand-alone.
```console
nix-shell --run 'python glados.py'
```

the TTS Engine can also be used remotely on a machine more powerful then the Pi to process in house TTS: (executed from glados-tts directory
```console
nix-shell --run 'python3 engine-remote.py'
```

Default port is 8124
Be sure to update settings.env variable in your main Glados-voice-assistant directory:
```
TTS_ENGINE_API			= http://192.168.1.3:8124/synthesize/
```


## Description
The initial, regular Tacotron model was trained first on LJSpeech, and then on a heavily modified version of the Ellen McClain dataset (all non-Portal 2 voice lines removed, punctuation added).

* The Forward Tacotron model was only trained on about 600 voice lines.
* The HiFiGAN model was generated through transfer learning from the sample.
* All models have been optimized and quantized.



## Getting Started on Windows
Grab the latest version of espeak-ng for Windows.
https://github.com/espeak-ng/espeak-ng/releases

### Install Requirements with pip
Navigate to the folder of the project and run:

```pip install -r requirements.txt```

### Set Path for Phonemizer

Phonemizer needs to know the path to your espeak installation. 

Open an elevated command prompt and enter the following if you installed espeak.-ng in the default location:

```setx PHONEMIZER_ESPEAK_LIBRARY  "c:\Program Files\eSpeak NG\libespeak-ng.dll"```
