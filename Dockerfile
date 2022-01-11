FROM python:3.10-bullseye

RUN pip install XLMMacroDeobfuscator --force \
 && pip install -U https://github.com/DissectMalware/XLMMacroDeobfuscator/archive/master.zip --force

RUN apt-get update \
 && apt-get install --no-install-recommends unzip \
 && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
