# Using Python Slim-Buster
FROM xluxz/Bblitzzproject:buster
# BLITZ-USERBOT
# Bblitzz Project
#yaudah iya

RUN git clone -b RAM-UBOT https://github.com/Bblitzz/BLITZ-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ramadhani892/RAM-UBOT/RAM-UBOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
