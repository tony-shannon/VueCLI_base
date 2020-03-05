# vue-app-base-1


This project was set us a base for VueJS development.. using the VueCLI baseline 
.. to then be able to deploy in a Docker environment
.. to then connect with other services , backends (eg QewdJS etc)

So steps include cloning this repo/branch
then  either instally & running locally or
deploy via Docker  
thanks to nizovtsevnv@gmail.com at https://github.com/nizovtsevnv and https://github.com/nizovtsevnv/docker-vue
and his simple ideas re using Docker for VueCLI projects
we can follow these instructions to serve projects from here


Console: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue sh

Create new project: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue vue create myproject

Install dependencies: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue npm install

Development: docker run --rm -ti -v $PWD:/app:rw -p 8080:8080 nizovtsevnv/vue npm run serve

Build: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue npm run 

or to use my own version I first do a Docker build from the Dockerfile available here
e.g. docker build -t tonyshannon/vue-base-app .  (dont forget the . and remember this image can be pushed to/pulled from docker hub later)

then run like so;

Console: docker run --rm -ti -v $PWD:/app tonyshannon/vue-base-app sh

Create new project: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue vue create myproject

Install dependencies: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue npm install

Development: docker run --rm --name vue-app-1 -p 8081:8080 -ti -v $PWD:/app -p 8080:8080 tonyshannon/vue-base-app npm run serve 
OR 
docker run --rm --name vue-app-1 -p 8081:8080 -it -v $PWD:/app -p 8080:8080 tonyshannon/vue-base-app npm run serve 

Build: docker run --rm -ti -v $PWD:/app:rw nizovtsevnv/vue npm run 


the idea being development which is reflected in the docker container, can be maintained on github via branches etc and easily deployed


## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

Got this far with running it
see screenshots in /images folder

