#https://hub.docker.com/_/rabbitmq

#rabbit_1  |   ##########  Licensed under the MPL 2.0. Website: https://rabbitmq.com
#rabbit_1  |
#rabbit_1  |   Erlang:      26.2.2 [jit]
#rabbit_1  |   TLS Library: OpenSSL - OpenSSL 3.1.5 30 Jan 2024
#rabbit_1  |   Release series support status: supported
#rabbit_1  |
#rabbit_1  |   Doc guides:  https://www.rabbitmq.com/docs/documentation
#rabbit_1  |   Support:     https://www.rabbitmq.com/docs/contact
#rabbit_1  |   Tutorials:   https://www.rabbitmq.com/tutorials
#rabbit_1  |   Monitoring:  https://www.rabbitmq.com/docs/monitoring
#rabbit_1  |
#rabbit_1  |   Logs: <stdout>
#rabbit_1  |
#rabbit_1  |   Config file(s): /etc/rabbitmq/conf.d/10-defaults.conf
#rabbit_1  |                   /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf
#rabbit_1  |
#rabbit_1  |   Starting broker...2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>  node           : rabbit@870d824dc493
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>  home dir       : /var/lib/rabbitmq
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>  config file(s) : /etc/rabbitmq/conf.d/10-defaults.conf
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>                 : /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>  cookie hash    : d2FWPgwA0BPFuv/G8qgl8Q==
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>  log(s)         : <stdout>
#rabbit_1  | 2024-02-26 09:16:44.048870+00:00 [info] <0.248.0>  data dir       : /var/lib/rabbitmq/mnesia/rabbit@870d824dc493

#FROM rabbitmq:3.13.0

#[warning] <0.821.0> Metrics collection disabled in management agent, management only interface started
#RUN rabbitmq-plugins enable rabbitmq_management


##

FROM rabbitmq:3-management-alpine




#RUN rabbitmqctl add_vhost bki_service && \
#    rabbitmqctl add_vhost zaymigo
#
##rabbitmqctl set_permissions -p "custom-vhost" "username" ".*" ".*" ".*"
#
#RUN echo 'developer' | rabbitmqctl add_user 'bki_service' && \
#    rabbitmqctl list_users && \
#    rabbitmqctl set_permissions -p "bki_service" "bki_service" ".*" ".*" ".*"
#
#RUN echo 'developer' | rabbitmqctl add_user 'zaymigo' && \
#    rabbitmqctl list_users && \
#    rabbitmqctl set_permissions -p "zaymigo" "zaymigo" ".*" ".*" ".*"


#rabbitmqctl list_user_permissions user_name
