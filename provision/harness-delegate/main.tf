module "delegate" {
  source = "../../modules/helm-harness-delegate"
  # version = "0.1.1"

  account_id       = var.account_id
  delegate_token   = var.delegate_token
  delegate_name    = var.delegate_name
  namespace        = var.namespace

  # Additional optional values to pass to the helm chart
  values = yamlencode({
    javaOpts : "-Xms64M"
  })
}
