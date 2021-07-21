FROM python:3.9.6-alpine3.13
ENV TOKEN ${TOKEN}
RUN apk add git
RUN git clone https://github.com/Naxalov/telegram-echobot.git
WORKDIR telegram-echobot 
RUN pip install -r requirements.txt
CMD ["python","main.py"]