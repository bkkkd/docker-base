# 构建镜像
build:
	docker build -t docker-base:focal .
	echo "build focal done"
		
# 运行容器	
run:
	docker run --rm -it docker-base:focal /bin/bash	

# 构建镜像并运行容器	
buildrun: build run
	echo "build and run done"
