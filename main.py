from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}
  
@app.get("/other")
def read_root():
    return {"Hello": "Other World"}  
