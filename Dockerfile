FROM mcr.microsoft.com/powershell:lts-debian-buster-slim AS builder

RUN apt-get update && apt-get install wget zip -y
RUN wget https://github.com/Azure/arm-ttk/releases/download/20221215/arm-ttk.zip
RUN unzip arm-ttk.zip

FROM mcr.microsoft.com/powershell:lts-debian-buster-slim
COPY --from=builder arm-ttk ./arm-ttk
WORKDIR /template
CMD ["bash", "/arm-ttk/Test-AzTemplate.sh"]
