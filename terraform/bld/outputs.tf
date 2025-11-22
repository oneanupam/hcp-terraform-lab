// Resource outputs
output "tst_vpc_id" {
  value       = google_compute_network.tst_vpc.id
  description = "The ID of the created vpc resource."
}

output "storage_bucket_selflink" {
  value       = google_storage_bucket.static_site_bkt.self_link
  description = "The self link of the created cloud storage bucket"
}
