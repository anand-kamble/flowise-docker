# Flowise Server - Docker

### 1. Start the Flowise server through docker:
```bash
docker compose up
```

This will start the server along with Ngrok and you can visit the dashboard at  
[https://pheasant-up-overly.ngrok-free.app/](https://pheasant-up-overly.ngrok-free.app/)  
This url will be independent of the machine where the docker containers are running.


### 2. Using Ollama (Optional)
If planning to use ollama, you will need ollama server running on the same machine where you started the above docker containers.  
Also, you will need to pull the LLM model which you wish to use.
You can use these commands in a new terminal for that:

```bash
ollama pull <model-name>
ollama serve
```

### 3. Ngrok Configuration (Optional)
The Ngrok link provided above uses the free version of Ngrok, which may stop working at any time. If the link stops working, follow these steps:

Obtain your Ngrok authtoken by signing up on the Ngrok website.
Update the .env file in your repository with your Ngrok authtoken and a custom domain (if desired).

> [!WARNING]  
> The current Ngrok domain may be temporary and could break in the future.