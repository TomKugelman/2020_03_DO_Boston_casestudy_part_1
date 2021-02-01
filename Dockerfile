FROM python3:latest
WORKDIR /app
RUN git clone "https://github.com/TomKugelman/2020_03_DO_Boston_casestudy_part_1"
RUN pip install requirements.txt
CMD ["python3", "web.py"]