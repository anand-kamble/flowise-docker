# Flowise Server - Docker

1. To start the Flowise server through docker:
```bash
docker compose up
```

This will start the server along with Ngrok and you can visit the dashboard at  
[https://pheasant-up-overly.ngrok-free.app/](https://pheasant-up-overly.ngrok-free.app/)  
This url will be independent of the machine where the docker containers are running.


2. If planning to use ollama, you will need ollama server running on the same machine where you started the above docker containers.  
Also, you will need to pull the LLM model which you wish to use.
You can use these commands in a new terminal for that:

```bash
ollama pull <model-name>
ollama serve
```




























```bash
amk23j@class113 ~/docker_flowise $ docker compose build
WARN[0000] /home/amk23j/docker_flowise/docker-compose.yaml: `version` is obsolete 
[+] Building 738.7s (11/11) FINISHED                                                                                                                                          docker:default
 => [flowise internal] load build definition from Dockerfile                                                                                                                            0.0s
 => => transferring dockerfile: 963B                                                                                                                                                    0.0s
 => [flowise internal] load metadata for docker.io/library/ubuntu:latest                                                                                                                0.3s
 => [flowise internal] load .dockerignore                                                                                                                                               0.0s
 => => transferring context: 2B                                                                                                                                                         0.0s
 => [flowise 1/6] FROM docker.io/library/ubuntu:latest@sha256:35b7fc72eb7c652dc1f4e5bfbdb9cdb308c3a6b1b96abc61317b931007b9aac8                                                          0.0s
 => [flowise internal] load build context                                                                                                                                               0.0s
 => => transferring context: 243B                                                                                                                                                       0.0s
 => CACHED [flowise 2/6] RUN apt-get update && apt-get install -y     curl     gnupg     build-essential     && rm -rf /var/lib/apt/lists/*                                             0.0s
 => CACHED [flowise 3/6] RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -     && apt-get install -y nodejs     && rm -rf /var/lib/apt/lists/*                              0.0s
 => [flowise 4/6] COPY install_flowise.sh /usr/local/bin/install_flowise.sh                                                                                                             0.1s
 => [flowise 5/6] RUN chmod +x /usr/local/bin/install_flowise.sh                                                                                                                        0.3s
 => [flowise 6/6] RUN /usr/local/bin/install_flowise.sh                                                                                                                               711.6s
 => [flowise] exporting to image                                                                                                                                                       26.2s 
 => => exporting layers                                                                                                                                                                26.1s 
 => => writing image sha256:1f782afc54afca453c8a03312a6041c8b0634c38223ffcd6a5bcc19e5dc2b255                                                                                            0.0s 
 => => naming to docker.io/library/docker_flowise-flowise                                                                                                                               0.0s 
amk23j@class113 ~/docker_flowise $    
```