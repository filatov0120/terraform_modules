resource "cloudflare_record" "backend_server" {
  zone_id = ""
  name    = "backend"
  value   = module.backend_server.elastic_ip
  type    = "A"
  ttl     = 1
  proxied = true
  comment = "${var.project_name}_${var.inst1_name}_${var.env}"
}
