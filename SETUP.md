Clone the Repository
```bash
git clone --depth=1 git@github.com:the-redback/train-ticket.git
cd train-ticket/
```

Setup Environment
```bash 
export IMG_REPO=maruftuhin
export IMG_TAG=jaeger
export NAMESPACE=maruftuhin
export TAG=jaeger
```

To Build image from source
```bash
mvn clean package -Dmaven.test.skip=true
docker-compose build

docker pull codewisdom/ts-voucher-service:0.2.1
docker pull codewisdom/ts-ui-dashboard:0.2.1
docker pull codewisdom/ts-ticket-office-service:0.2.1
docker pull codewisdom/ts-news-service:0.2.1
docker pull codewisdom/ts-avatar-service:0.2.1
docker tag codewisdom/ts-voucher-service:0.2.1 maruftuhin/ts-voucher-service:jaeger
docker tag codewisdom/ts-ui-dashboard:0.2.1 maruftuhin/ts-ui-dashboard:jaeger
docker tag codewisdom/ts-ticket-office-service:0.2.1 maruftuhin/ts-ticket-office-service:jaeger
docker tag codewisdom/ts-news-service:0.2.1 maruftuhin/ts-news-service:jaeger
docker tag codewisdom/ts-avatar-service:0.2.1 maruftuhin/ts-avatar-service:jaeger
```

> To run custom image:
docker-compose -f deployment/docker-compose-manifests/docker-compose-with-jaeger.yml up -d