From python:3.10-slim
WorkDir app/
COPY . .
RUN pip install -r requirements.txt
Expose 5000
CMD ["python", "app.py"]
