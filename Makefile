dev:
	uvicorn server:app --reload
start:
	uvicorn server:app --host 0.0.0.0 --port 7480
