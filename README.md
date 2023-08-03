# i-love-git


```yaml

# nginx-deployment.yaml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx:latest
          ports:
            - containerPort: 80

---

apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  selector:
    app: nginx
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: LoadBalancer

 ```

 ```bash
#!/bin/bash

# Simple bash script to calculate the factorial of a number

read -p "Enter a number: " number

if [[ $number -lt 0 ]]; then
    echo "Error: Factorial is not defined for negative numbers."
elif [[ $number -eq 0 ]]; then
    echo "Factorial of 0 is 1."
else
    factorial=1
    for (( i=1; i<=$number; i++ )); do
        factorial=$(( factorial * i ))
    done
    echo "Factorial of $number is $factorial."
Fi
```


- Kubernetes manifest generator [here](https://k8syaml.com)
- Groovy validator online [here](https://onecompiler.com/groovy)
- Bash script validator online [here](https://replit.com/languages/bash)
- Yaml validator online [here](http://www.yamllint.com)
- vscode online [here](https://vscode.dev)
- Ubuntu VM online [here](https://linuxcontainers.org/lxd/try-it)

