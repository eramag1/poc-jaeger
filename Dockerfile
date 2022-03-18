FROM springcommunity/spring-framework-petclinic
ENV JAVA_TOOL_OPTIONS "-javaagent:/app/opentelemetry-javaagent-all.jar"
ENV OTEL_TRACES_EXPORTER "jaeger"
ENV OTEL_JAEGER_EXPORTER_ENDPOINT "all-in-one-cib-cto-poc-getafe-dev.apps.cib01.cib.dev.bo1.paas.cloudcenter.corp"
ENV OTEL_RESOURCE_ATTRIBUTES "service.name=petclinic"

WORKDIR /app
ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v1.3.1/opentelemetry-javaagent-all.jar .
