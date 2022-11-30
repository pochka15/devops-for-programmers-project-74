setup:
	docker run -it -w /root -v `pwd`/app:/root node:14.18.1 npm ci

start:
	docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:14.18.1 npm run dev

magic: setup start