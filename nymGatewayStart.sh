docker run -t -d --init --name nymGateway -v /mixnodes:/home/nym/.nym/gateways -p 1789:1789 -p 1790:1790 -p 9000:9000 protektwar/nymgateway:0.10.1 run --id protektwars7Gateway
