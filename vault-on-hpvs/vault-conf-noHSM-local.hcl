# Configure the storage backend for Vault
storage "file" {
 path = "/etc/vault-data"
}
# Addresses and ports on which Vault will respond to requests
listener "tcp" {
 address   = "127.0.0.1:8200"
 tls_disable = 1
}
api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
ui = true
disable_mlock = true
