data "tfe_outputs" "vpc" {
  config = {
    organization = "valentinacires"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value - data.tfe_outputs.vpc.outputs 
}
