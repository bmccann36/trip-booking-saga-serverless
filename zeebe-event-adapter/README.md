


*removing the ECS service*   
`ecs-cli compose service rm` 

*removing the whole cluster*    
`ecs-cli down --force`   
-- or --    
`ecs-cli down --force --cluster-config zb-cfg`    
if you want to specify a config