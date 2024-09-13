# Monitoring

Customer requests to created demo represents monitoring solution in workshop. His solution architect was completely designed the solution for them but it missing important configuration to make a perfect demo. You should create tool's configuration in Prometheus, Grafana, Alertmanager and ETC. to complete the monitoring system installation.

## Summary Requirement

1. All workflow to provision demo must complete itself in `docker-compose` file.
2. You should enabled API management in Prometheus.
3. You should create Prometheus's configuration to scrape 3 metrics endpoints from cAdvisor, Node exporter and Prometheus.
4. Datasource for Prometheus was created but it still does not work, you must fix it.
5. You should initial Grafana's dashboard such as linux node, container and prometheus with `JSON` file in `grafana/provisioning/dashboard` path
6. You should create Prometheus Rules to alert such as 80% high CPU, 80% high memory and instance down for container and host machine at least 3 rules. You also can add other alert rules too.
