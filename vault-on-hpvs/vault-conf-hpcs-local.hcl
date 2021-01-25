# Provide IBM Cloud HPCS connection information
seal "pkcs11" {
 lib = "/pkcs11/pkcs11-grep11.so"
 slot = "0"
 pin = "<YOUR-HPCS-API-KEY>"
 key_label = "ham_hpcs"
 hmac_key_label = "ham_hpcs_hmac"
 generate_key = "true"
}
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
