# Build the manager binary
FROM  amazon/aws-cli:latest  as builder

WORKDIR /workspace

# Copy the go source
COPY . .
ENTRYPOINT [ "tail","-f","/dev/null" ]