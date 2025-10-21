#scp [путь к файлу] [имя пользователя]@[имя сервера/ip-адрес]:[путь к файлу]

publish: ## Publish site
	scp -P 32167 \
		-i /home/alex/.ssh/avin.info \
		-r /home/alex/arsvincere.com/html/* \
		root@31.169.124.189:/usr/share/nginx/html/

config: ## Copy local config to server
	scp -P 32167 \
		-i /home/alex/.ssh/avin.info \
		-r /home/alex/sys/conf/* \
		root@31.169.124.189:/root/.config
