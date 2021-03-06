#!/usr/bin/env bash

cf cs p-mysql 100mb-dev fortunes-db
cf create-service p-config-server standard config-service -c '{"git": { "uri": "https://github.com/bbertka-pivotal/PCF-101-Workshop", "searchPaths": "spring-cloud-services-app/configuration" } }'
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
