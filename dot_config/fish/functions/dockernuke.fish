function dockernuke
    # Kill running containers
    docker container kill $(docker container ls -aq)

    # Remove stopped containers
    docker container rm $(docker container ls -aq)

    # Delete unused images
    docker system prune -af
end
