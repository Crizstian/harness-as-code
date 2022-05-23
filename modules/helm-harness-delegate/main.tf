resource "helm_release" "delegate" {
  name             = var.delegate_name
  chart            = "../../contrib/helm/charts/harness-delegate"
  namespace        = var.namespace
  create_namespace = true

  values = [data.utils_deep_merge_yaml.values.output]
}

locals {
  values = yamlencode({
    accountId       = var.account_id
    delegateToken   = var.delegate_token
    delegateName    = var.delegate_name
    proxyUser       = var.proxy_user
    proxyPassword   = var.proxy_password
  })
}

data "utils_deep_merge_yaml" "values" {
  input = compact([
    local.values,
    var.values
  ])
}