# VMSS is used, so it is unpredictable how NICs will be given to VMs
# So let Azure to create NICs with Public IPs as gameservers require
# Azure Managment SDK can be used to obtain these IPs and map Agones GameServers internal IPs to public
