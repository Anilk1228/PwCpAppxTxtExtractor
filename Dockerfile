FROM python:latest
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
WORKDIR app/
COPY . .
RUN pip3 install -r requirements.txt
CMD /bin/bash -c "python3 -m http.server $PORT & python3 main.py"
