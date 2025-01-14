FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
        && dpkg -i packages-microsoft-prod.deb \
        && apt-get update && apt-get install -y \
        && apt-get install -y apt-transport-https \
        && apt-get update \
        && apt-get install -y dotnet-sdk-2.1 \
        && apt-get install -y dotnet-sdk-2.2 \
        && apt-get install -y dotnet-sdk-3.0 \
        && apt-get install -y aspnetcore-runtime-2.1 \
        && apt-get install -y aspnetcore-runtime-2.2 \
        && apt-get install -y aspnetcore-runtime-3.0 \
        && apt-get install -y dotnet-runtime-2.1 \
        && apt-get install -y dotnet-runtime-2.2 \
        && apt-get install -y dotnet-runtime-3.0 \
        && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings

# Give back control
USER root
