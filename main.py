from fastapi import FastAPI
from bark.api import generate_audio
import requests

app = FastAPI()

@app.get("/")
async def read_root():
    return {"Hello": "World"}

@app.get("/process")
async def process(prompt: str):
    r = generate_audio(
        text = prompt
    )
    # r = requests.post("http://localhost:8080/process", json={"prompt": prompt})
    return r
