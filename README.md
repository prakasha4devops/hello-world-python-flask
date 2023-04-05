# Hello World Python Flask

## To build the  docker image and tag locally.

`docker build -t hello-python-flask:v1.0.6 .` 

* To find the docker image locally ` docker image | grep -i flask`
* To run docker image locally :  `docker run -d --name flask -p 7000:5000 hello-python-flask:v1.0.6 `
* to find the running docker image `docker ps | grep -i flask `
* To Test docker image curl `http://127.0.0.1:7000/` or `curl  -i http://127.0.0.1:7000/`
* To find docker running container `docker stop flask && docker rm flask`
* Stop the running docker container by using `docker stop flask && docker rm flask` command
* Execute command for running container `docker exec -it flask /bin/sh `

## Running Kubernetes locally ( I am using docker desktop)

 * To do Deployment `kubectl apply -f k8s/deployment.yaml`
 * To get running pods `kubectl get pods --namespace=python-app`
 * To get load balanced service: `kubectl describe services hello-python-service --namespace=python-app`
 * To test endpoint `http://127.0.0.1:6000/` or `curl  -i http://127.0.0.1:6000/`
 * `curl  -i http://127.0.0.1:6000/health` or `curl  -i http://127.0.0.1:6000/ready`
 * To clean up deployment `kubectl delete  -f k8s/deployment.yaml`
 * Execute command for running container 
`kubectl exec --namespace=python-app -it hello-python-<pod_name> -c hello-world-python -- sh`
Note: `6000` port should be open to your machine.