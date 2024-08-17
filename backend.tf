terraform {
  backend "gcs" {
		bucket = "crossplane-serviceaccount-backend"
		prefix = "gke-cluster"
	}
}
