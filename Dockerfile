FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD streamlit run flask_api.py --bind 0.0.0.0:$PORT
