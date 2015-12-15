require 'aws-sdk-core'
ec2 = ::Aws::EC2::Client.new

SfnRegistry.register(:zones) do
  ec2.describe_availability_zones.availability_zones.map(&:zone_name).select{ |z| z != "us-east-1b" } # exclude 1b for now
end
