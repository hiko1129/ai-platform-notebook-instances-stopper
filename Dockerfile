FROM google/cloud-sdk:300.0.0-alpine

COPY script script

ENTRYPOINT [ "./script/stop.sh" ]
