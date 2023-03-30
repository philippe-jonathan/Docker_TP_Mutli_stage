# Docker_TP_Mutli_stage

1] Initialisation du repo GIT

2] Initialisation du projet React
```zsh
npx create-react-app mon-app
```

3] Vérifier que l'application fonctionne en local
![React_app_local](/img/React-app-local.png)

4] Voir mon [Dockerfile](/Dockerfile)

5] Instancier l'image et obtenir le même résultat que l'étape 3
```zsh
docker build . -t react-app-multi-stage
````
```zsh
docker run -p 8080:80 react-app-multi-stage
```
![React_app_Docker](/img/React-app-Docker.png)