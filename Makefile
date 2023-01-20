make :
	docker-compose -f ./srcs/docker-compose.yml up --build
	@echo "!!!!!! DONE !!!!!!!"

down :
	docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all 
	@echo "ALL YOUR CONTAINERS REMOVED"