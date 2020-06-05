build-adoptopenjdk8-image:
		docker build --build-arg base_image=cs1193/docker-ubuntu:latest -t cs1193/docker-adoptopenjdk8 -f ./images/adoptopenjdk-8/adoptopenjdk-8.Dockerfile .
