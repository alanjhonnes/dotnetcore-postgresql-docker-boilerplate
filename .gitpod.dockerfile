FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        && apt-get install apt-transport-https \
        && apt-get update \
        && apt-get install aspnetcore-runtime-3.0 \
        && apt-get install dotnet-runtime-3.0 \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*


USER gitpod
# Apply user-specific settings

# Give back control
USER root