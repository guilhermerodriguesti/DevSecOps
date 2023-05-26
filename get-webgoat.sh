wget https://github.com/WebGoat/WebGoat/releases/download/v8.2.2/webgoat-server-8.2.2.jar

chmod 755 /home/user
docker run --rm --volume $(pwd):/src --volume /home/user/owdata:/usr/share/dependency-check/data --volume $(pwd)/owreport:/report owasp/dependency-check --scan /src --format "ALL" --project "My OWASP Dependency Check Project" --out /report

cp /home/user/owreport/*.html /var/www/html