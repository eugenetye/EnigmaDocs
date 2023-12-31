FROM --platform=linux/x86-64 python:3.10
EXPOSE 8501
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD streamlit run app.py
