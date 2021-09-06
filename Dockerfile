FROM 192.168.0.133:9997/dotnet3p1sdk-node14:latest as build
WORKDIR /app
COPY . ./

RUN quasar build

# FROM 192.168.0.133:9997/dotnet3p1runtime-node14:latest
# COPY --from=build /app/out /app
# WORKDIR /app
# EXPOSE 7789
# CMD ["quasar","dev"]