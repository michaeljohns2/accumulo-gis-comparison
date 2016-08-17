# <<<run with elevated permissions>>>
# had to specify path to docker-compose
# `clean will` not erase hadoop-data
# `clean-all` will erase hadoop-data
clean:
	/usr/local/bin/docker-compose down
	rm -rf persistence/hadoop-sname/*
	rm -rf persistence/hadoop-name/*
	rm -rf persistence/zookeeper/*
clean-all:
	/usr/local/bin/docker-compose down
	rm -rf persistence/hadoop-data/*
	rm -rf persistence/hadoop-sname/*
	rm -rf persistence/hadoop-name/*
	rm -rf persistence/zookeeper/*
