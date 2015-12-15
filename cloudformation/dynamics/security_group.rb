SparkleFormation.dynamic(:security_group) do |name, config={}|
  dynamic!(:ec2_security_group, name, config.merge(:resource_name_suffix => 'security_group'))
end
