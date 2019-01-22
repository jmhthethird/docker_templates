FROM elixir:latest 
#any base image that has bash installed should work

COPY . . 
#we could be explicit and copy only what we need. for this example lets just copy it all.

CMD ./run.sh
#call file that loads .env file with env vars, it also has print statements so you can see that they are loaded in the container.
