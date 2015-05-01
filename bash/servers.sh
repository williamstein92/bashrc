proxies=(proxy1.example.com \
proxy2.example.com \
proxy3.example.com)

proxy() {
	arg=$1
    proxy=${proxies[arg]}
	# ssh -i /path/to/pem some-user@${proxy}
}
