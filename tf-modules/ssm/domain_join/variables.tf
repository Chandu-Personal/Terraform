variable directoryId {}
variable directoryName {}
variable directoryOU {}
variable directory_ips {
    type    = "list"
}
variable tags {
    type    = "map"
    default = {}
}
variable instance_ids {
    type    = "list"
    default = []
}