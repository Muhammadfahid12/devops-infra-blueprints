variable "repositories" {
  description = "map of git repos"
  type = map(object({
    name        = string
    description = string
    visibility  = string
    auto_init   = bool

  }))

}