output vpc_id {
    value = module.vpc.vpc_id
}
output privet_subnets {
    value = module.vpc.private_subnets
}

output public_subnets {
    value = module.vpc.public_subnets
}