Clone the Repository
```bash
git clone --depth=1 git@github.com:the-redback/train-ticket.git
cd train-ticket/
```

Setup Environment
```bash 
export IMG_REPO=maruftuhin
export IMG_TAG=0.1.0-sleuth
export NAMESPACE=maruftuhin
export TAG=0.1.0-sleuth
```

To Build image from source
```bash
mvn clean package -Dmaven.test.skip=true
docker-compose build

docker pull codewisdom/ts-voucher-service:0.1.0
docker pull codewisdom/ts-ui-dashboard:0.1.0
docker pull codewisdom/ts-ticket-office-service:0.1.0
docker pull codewisdom/ts-news-service:0.1.0
docker pull codewisdom/ts-avatar-service:0.1.0
docker tag codewisdom/ts-voucher-service:0.1.0 maruftuhin/ts-voucher-service:0.1.0-sleuth
docker tag codewisdom/ts-ui-dashboard:0.1.0 maruftuhin/ts-ui-dashboard:0.1.0-sleuth
docker tag codewisdom/ts-ticket-office-service:0.1.0 maruftuhin/ts-ticket-office-service:0.1.0-sleuth
docker tag codewisdom/ts-news-service:0.1.0 maruftuhin/ts-news-service:0.1.0-sleuth
docker tag codewisdom/ts-avatar-service:0.1.0 maruftuhin/ts-avatar-service:0.1.0-sleuth
```

> To run custom image:
docker-compose -f deployment/docker-compose-manifests/docker-compose-with-jaeger.yml up -d


docker push maruftuhin/ts-voucher-service:0.1.0-sleuth
docker push maruftuhin/ts-ui-dashboard:0.1.0-sleuth
docker push maruftuhin/ts-ticket-office-service:0.1.0-sleuth
docker push maruftuhin/ts-news-service:0.1.0-sleuth
docker push maruftuhin/ts-avatar-service:0.1.0-sleuth