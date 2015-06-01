test_import
proxies=(ec2-54-161-134-123.compute-1.amazonaws.com \
ec2-54-161-134-123.compute-1.amazonaws.com \
ec2-23-22-59-157.compute-1.amazonaws.com \
ec2-54-161-167-19.compute-1.amazonaws.com \
ec2-54-204-160-35.compute-1.amazonaws.com \
ec2-54-87-21-14.compute-1.amazonaws.com \
ec2-54-242-101-170.compute-1.amazonaws.com)

proxy()
{
	arg=$1
    proxy=${proxies[arg]}
	ssh -i ~/Documents/proxy.pem ec2-user@${proxy}
}

print_proxy()
{
    arg=$1
    echo ${proxies[i]}
}
