# demo-pingone-login

Starts up https://github.com/pingidentity/pingone-sample-login.  You can follow the instructions over there, m'kay.  But basically, once this thing is running, edit the auth.js in the /js directory and specify your PingOne particulars.

## build the image from source and run as a container locally

``docker build --no-cache -t demo-pingone-login .``

``docker run -p 80:80 demo-pingone-login``

## deploy from docker hub locally

``docker run -p 80:80 michaeldeller/demo-pingone-login``

## deploy from docker hub and expose with load balancer on kubernetes

``kubectl create deployment --image=michaeldeller/demo-pingone-login friendlyname-demo-pingone-login``

``kubectl expose deployment friendlyname-demo-pingone-login --port=80 --target-port=80 --type=LoadBalancer --name=friendlyname-demo-pingone-login-lb``
