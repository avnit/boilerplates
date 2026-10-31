# Cloudflare Credentials
# ---
# Credential Variables needed for Cloudflare

# Cloudflare Config
variable "cloudflare_email" {
    description = "The email address for your Cloudflare account"
    type = string
}
variable "cloudflare_api_key" {
    description = "The API key for your Cloudflare account"
    type = string
}
variable "cloudflare_zone_id" {
    description = "The Zone ID for your Cloudflare account"
    type = string
}
variable "dns_record_name" {
    description = "Map of DNS records to create, keyed by a short label"
    type = map(object({
        name    = string
        value   = string
        type    = string
        ttl     = number
        proxied = bool
    }))
    # default = {
    #     ubuntu = {
    #         name    = "ubuntu"
    #         value   = "192.168.0.185:81"
    #         type    = "A"
    #         ttl     = 1
    #         proxied = true
    #     }
    #     jellyfin = {
    #         name    = "jellyfin"
    #         value   = "192.168.0.17:8096"
    #         type    = "A"
    #         ttl     = 1
    #         proxied = true
    #     }
    # }
}
