from fastapi import FastAPI
import uvicorn
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse
import random
from xoso import play_so_xo

app = FastAPI()
# Mount static files directory
app.mount("/static", StaticFiles(directory="static"), name="static")

@app.get("/")
def root():
    return FileResponse("static/index.html")

# Server Python sẽ làm gì đó trả về data cho node-red lưu db
@app.get("/demo")
def demo():
    # Bây h là random
    random_number = random.randint(1, 10000)
    # Trả về số ngẫu nhiên dưới dạng JSON  
    return {"data": random_number}

@app.get("/soxo")
def xoso(data_query: str):
    print("data_query", data_query)
    kq = play_so_xo.get_so_xo(data_query)
    return {"kq_sx": kq, "date":data_query}


if __name__ == "__main__":
    uvicorn.run("server:app", host="0.0.0.0", port=8000, reload=True)

