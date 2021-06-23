## Kubernetes introduction

### 前提
- Docker及びkubectlが実行できる環境であること

### Dockerの操作
1. Dockerイメージの作成
```
$ docker build -t <<任意の名前>> ./
```

2. Dockerコンテナの作成(Dockerイメージの実行)
ローカルの8000番からコンテナの80番に転送するようにして実行する
```
$ docker run -p 8000:80 -d 
```

3. 動作確認
curlを叩くかブラウザ上でlocalhost:8000を叩く
```
$ curl http://localhost:8000
```
 
4. (Dockerコンテナの削除)
```
$ docker rm <<コンテナID>>
```

5. (Dockerイメージの削除)
```
$ docker rmi <<任意の名前>>
```

### Kubernetesの操作
1. Podの作成
```
$ kubectl apply -f pod.yaml
```

2. Serviceの作成
```
$ kubectl appply -f service.yaml
```

3. 動作確認
masterのIPを確認してから、curlを叩くかもしくはブラウザ上で確認
```
## masterのIPを確認
$ kubectl cluster-info

$ curl http://<masterのIP>:30007
```

4. (Serviceの削除)
```
$ kubectl delete -f service.yaml
```

5. (Podの削除)
```
$ kubectl delete -f pod.yaml
```
