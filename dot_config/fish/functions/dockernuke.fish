function dockernuke
    docker ps -a -q | xargs docker kill -f
    docker ps -a -q | xargs docker rm -f
    docker images | awk '{print $3}' | xargs docker rmi -f
end
