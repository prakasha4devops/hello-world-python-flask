# Hello World Python Flask

## To build the  docker image locally.

`docker build -t hello-python-flask:v1.0.3 .` 

* To run docker image locally :  `docker run --name flask -p 5000:6000 hello-python-flask:v1.0.3 `
* To Test docker image curl `http://127.0.0.1:6000/` or `curl  -i http://127.0.0.1:6000/`
* Stop the running docker container by using `Control+C` command

## Running Kubernetes locally ( I am using docker desktop)

 * To do Deployment `kubectl apply -f k8s/deployment.yaml`
 * To get running pods `kubectl get pods --namespace=python-app`
 * To get load balanced service: `kubectl describe services hello-python-service --namespace=python-app`
 * To test endpoint `http://127.0.0.1:6000/` or `curl  -i http://127.0.0.1:6000/`
 * `curl  -i http://127.0.0.1:6000/health` or `curl  -i http://127.0.0.1:6000/ready`
 * To clean up deployment `kubectl delete  -f k8s/deployment.yaml`

Note: `6000` port should be open my your machine.