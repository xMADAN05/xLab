# resource "kubernetes_namespace" "namespaces" {
#     for_each = var.helm_releases

#     metadata {
#         name = each.value.name
#     }
# }

resource "helm_release" "releases" {
    for_each = var.helm_releases

    name = each.value.name
    chart = each.value.chart
    repository = each.value.repository
    version = each.value.version
    timeout = each.value.timeout
    namespace = each.value.name
    create_namespace = true
    # values = [yamlencode(each.value.values)]
    values = each.value.values != null ? [file(each.value.values)]:[]
    # depends_on = [ kubernetes_namespace.namespaces ]
}