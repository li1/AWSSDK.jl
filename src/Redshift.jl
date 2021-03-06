#==============================================================================#
# Redshift.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/redshift-2012-12-01.normal.json
#==============================================================================#

__precompile__()

module Redshift

using AWSCore


"""
    using AWSSDK.Redshift.accept_reserved_node_exchange
    accept_reserved_node_exchange([::AWSConfig], arguments::Dict)
    accept_reserved_node_exchange([::AWSConfig]; ReservedNodeId=, TargetReservedNodeOfferingId=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "AcceptReservedNodeExchange", arguments::Dict)
    redshift([::AWSConfig], "AcceptReservedNodeExchange", ReservedNodeId=, TargetReservedNodeOfferingId=)

# AcceptReservedNodeExchange Operation

Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs.

# Arguments

## `ReservedNodeId = ::String` -- *Required*
A string representing the node identifier of the DC1 Reserved Node to be exchanged.


## `TargetReservedNodeOfferingId = ::String` -- *Required*
The unique identifier of the DC2 Reserved Node offering to be used for the exchange. You can obtain the value for the parameter by calling [GetReservedNodeExchangeOfferings](@ref)




# Returns

`AcceptReservedNodeExchangeOutputMessage`

# Exceptions

`ReservedNodeNotFoundFault`, `InvalidReservedNodeStateFault`, `ReservedNodeAlreadyMigratedFault`, `ReservedNodeOfferingNotFoundFault`, `UnsupportedOperationFault`, `DependentServiceUnavailableFault` or `ReservedNodeAlreadyExistsFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AcceptReservedNodeExchange)
"""
@inline accept_reserved_node_exchange(aws::AWSConfig=default_aws_config(); args...) = accept_reserved_node_exchange(aws, args)

@inline accept_reserved_node_exchange(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "AcceptReservedNodeExchange", args)

@inline accept_reserved_node_exchange(args) = accept_reserved_node_exchange(default_aws_config(), args)


"""
    using AWSSDK.Redshift.authorize_cluster_security_group_ingress
    authorize_cluster_security_group_ingress([::AWSConfig], arguments::Dict)
    authorize_cluster_security_group_ingress([::AWSConfig]; ClusterSecurityGroupName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "AuthorizeClusterSecurityGroupIngress", arguments::Dict)
    redshift([::AWSConfig], "AuthorizeClusterSecurityGroupIngress", ClusterSecurityGroupName=, <keyword arguments>)

# AuthorizeClusterSecurityGroupIngress Operation

Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether the application accessing your cluster is running on the Internet or an Amazon EC2 instance, you can authorize inbound access to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as many as 20 ingress rules to an Amazon Redshift security group.

If you authorize access to an Amazon EC2 security group, specify *EC2SecurityGroupName* and *EC2SecurityGroupOwnerId*. The Amazon EC2 security group and Amazon Redshift cluster must be in the same AWS region.

If you authorize access to a CIDR/IP address range, specify *CIDRIP*. For an overview of CIDR blocks, see the Wikipedia article on [Classless Inter-Domain Routing](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

You must also associate the security group with a cluster so that clients running on these IP addresses or the EC2 instance are authorized to connect to the cluster. For information about managing security groups, go to [Working with Security Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterSecurityGroupName = ::String` -- *Required*
The name of the security group to which the ingress rule is added.


## `CIDRIP = ::String`
The IP range to be added the Amazon Redshift security group.


## `EC2SecurityGroupName = ::String`
The EC2 security group to be added the Amazon Redshift security group.


## `EC2SecurityGroupOwnerId = ::String`
The AWS account number of the owner of the security group specified by the *EC2SecurityGroupName* parameter. The AWS Access Key ID is not an acceptable value.

Example: `111122223333`




# Returns

`AuthorizeClusterSecurityGroupIngressResult`

# Exceptions

`ClusterSecurityGroupNotFoundFault`, `InvalidClusterSecurityGroupStateFault`, `AuthorizationAlreadyExistsFault` or `AuthorizationQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeClusterSecurityGroupIngress)
"""
@inline authorize_cluster_security_group_ingress(aws::AWSConfig=default_aws_config(); args...) = authorize_cluster_security_group_ingress(aws, args)

@inline authorize_cluster_security_group_ingress(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "AuthorizeClusterSecurityGroupIngress", args)

@inline authorize_cluster_security_group_ingress(args) = authorize_cluster_security_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.Redshift.authorize_snapshot_access
    authorize_snapshot_access([::AWSConfig], arguments::Dict)
    authorize_snapshot_access([::AWSConfig]; SnapshotIdentifier=, AccountWithRestoreAccess=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "AuthorizeSnapshotAccess", arguments::Dict)
    redshift([::AWSConfig], "AuthorizeSnapshotAccess", SnapshotIdentifier=, AccountWithRestoreAccess=, <keyword arguments>)

# AuthorizeSnapshotAccess Operation

Authorizes the specified AWS customer account to restore the specified snapshot.

For more information about working with snapshots, go to [Amazon Redshift Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `SnapshotIdentifier = ::String` -- *Required*
The identifier of the snapshot the account is authorized to restore.


## `SnapshotClusterIdentifier = ::String`
The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.


## `AccountWithRestoreAccess = ::String` -- *Required*
The identifier of the AWS customer account authorized to restore the specified snapshot.

To share a snapshot with AWS support, specify amazon-redshift-support.




# Returns

`AuthorizeSnapshotAccessResult`

# Exceptions

`ClusterSnapshotNotFoundFault`, `AuthorizationAlreadyExistsFault`, `AuthorizationQuotaExceededFault`, `DependentServiceRequestThrottlingFault`, `InvalidClusterSnapshotStateFault` or `LimitExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeSnapshotAccess)
"""
@inline authorize_snapshot_access(aws::AWSConfig=default_aws_config(); args...) = authorize_snapshot_access(aws, args)

@inline authorize_snapshot_access(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "AuthorizeSnapshotAccess", args)

@inline authorize_snapshot_access(args) = authorize_snapshot_access(default_aws_config(), args)


"""
    using AWSSDK.Redshift.copy_cluster_snapshot
    copy_cluster_snapshot([::AWSConfig], arguments::Dict)
    copy_cluster_snapshot([::AWSConfig]; SourceSnapshotIdentifier=, TargetSnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CopyClusterSnapshot", arguments::Dict)
    redshift([::AWSConfig], "CopyClusterSnapshot", SourceSnapshotIdentifier=, TargetSnapshotIdentifier=, <keyword arguments>)

# CopyClusterSnapshot Operation

Copies the specified automated cluster snapshot to a new manual cluster snapshot. The source must be an automated snapshot and it must be in the available state.

When you delete a cluster, Amazon Redshift deletes any automated snapshots of the cluster. Also, when the retention period of the snapshot expires, Amazon Redshift automatically deletes it. If you want to keep an automated snapshot for a longer period, you can make a manual copy of the snapshot. Manual snapshots are retained until you delete them.

For more information about working with snapshots, go to [Amazon Redshift Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `SourceSnapshotIdentifier = ::String` -- *Required*
The identifier for the source snapshot.

Constraints:

*   Must be the identifier for a valid automated snapshot whose state is `available`.


## `SourceSnapshotClusterIdentifier = ::String`
The identifier of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.

Constraints:

*   Must be the identifier for a valid cluster.


## `TargetSnapshotIdentifier = ::String` -- *Required*
The identifier given to the new manual snapshot.

Constraints:

*   Cannot be null, empty, or blank.

*   Must contain from 1 to 255 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

*   Must be unique for the AWS account that is making the request.




# Returns

`CopyClusterSnapshotResult`

# Exceptions

`ClusterSnapshotAlreadyExistsFault`, `ClusterSnapshotNotFoundFault`, `InvalidClusterSnapshotStateFault` or `ClusterSnapshotQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CopyClusterSnapshot)
"""
@inline copy_cluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = copy_cluster_snapshot(aws, args)

@inline copy_cluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CopyClusterSnapshot", args)

@inline copy_cluster_snapshot(args) = copy_cluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_cluster
    create_cluster([::AWSConfig], arguments::Dict)
    create_cluster([::AWSConfig]; ClusterIdentifier=, NodeType=, MasterUsername=, MasterUserPassword=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateCluster", arguments::Dict)
    redshift([::AWSConfig], "CreateCluster", ClusterIdentifier=, NodeType=, MasterUsername=, MasterUserPassword=, <keyword arguments>)

# CreateCluster Operation

Creates a new cluster.

To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster subnet group name. The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `DBName = ::String`
The name of the first database to be created when the cluster is created.

To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database. For more information, go to [Create a Database](http://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html) in the Amazon Redshift Database Developer Guide.

Default: `dev`

Constraints:

*   Must contain 1 to 64 alphanumeric characters.

*   Must contain only lowercase letters.

*   Cannot be a word that is reserved by the service. A list of reserved words can be found in [Reserved Words](http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in the Amazon Redshift Database Developer Guide.


## `ClusterIdentifier = ::String` -- *Required*
A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. The identifier also appears in the Amazon Redshift console.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   Alphabetic characters must be lowercase.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

*   Must be unique for all clusters within an AWS account.

Example: `myexamplecluster`


## `ClusterType = ::String`
The type of the cluster. When cluster type is specified as

*   `single-node`, the **NumberOfNodes** parameter is not required.

*   `multi-node`, the **NumberOfNodes** parameter is required.

Valid Values: `multi-node` | `single-node`

Default: `multi-node`


## `NodeType = ::String` -- *Required*
The node type to be provisioned for the cluster. For information about node types, go to [Working with Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes) in the *Amazon Redshift Cluster Management Guide*.

Valid Values: `ds2.xlarge` | `ds2.8xlarge` | `ds2.xlarge` | `ds2.8xlarge` | `dc1.large` | `dc1.8xlarge` | `dc2.large` | `dc2.8xlarge`


## `MasterUsername = ::String` -- *Required*
The user name associated with the master user account for the cluster that is being created.

Constraints:

*   Must be 1 - 128 alphanumeric characters. The user name can't be `PUBLIC`.

*   First character must be a letter.

*   Cannot be a reserved word. A list of reserved words can be found in [Reserved Words](http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in the Amazon Redshift Database Developer Guide.


## `MasterUserPassword = ::String` -- *Required*
The password associated with the master user account for the cluster that is being created.

Constraints:

*   Must be between 8 and 64 characters in length.

*   Must contain at least one uppercase letter.

*   Must contain at least one lowercase letter.

*   Must contain one number.

*   Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \\, /, @, or space.


## `ClusterSecurityGroups = [::String, ...]`
A list of security groups to be associated with this cluster.

Default: The default cluster security group for Amazon Redshift.


## `VpcSecurityGroupIds = [::String, ...]`
A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.

Default: The default VPC security group is associated with the cluster.


## `ClusterSubnetGroupName = ::String`
The name of a cluster subnet group to be associated with this cluster.

If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).


## `AvailabilityZone = ::String`
The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency.

Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint.

Example: `us-east-1d`

Constraint: The specified Availability Zone must be in the same region as the current endpoint.


## `PreferredMaintenanceWindow = ::String`
The weekly time range (in UTC) during which automated cluster maintenance can occur.

Format: `ddd:hh24:mi-ddd:hh24:mi`

Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. For more information about the time blocks for each region, see [Maintenance Windows](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows) in Amazon Redshift Cluster Management Guide.

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Minimum 30-minute window.


## `ClusterParameterGroupName = ::String`
The name of the parameter group to be associated with this cluster.

Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to [Working with Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)

Constraints:

*   Must be 1 to 255 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `AutomatedSnapshotRetentionPeriod = ::Int`
The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with [CreateClusterSnapshot](@ref).

Default: `1`

Constraints: Must be a value from 0 to 35.


## `Port = ::Int`
The port number on which the cluster accepts incoming connections.

The cluster is accessible only via the JDBC and ODBC connection strings. Part of the connection string requires the port on which the cluster will listen for incoming connections.

Default: `5439`

Valid Values: `1150-65535`


## `ClusterVersion = ::String`
The version of the Amazon Redshift engine software that you want to deploy on the cluster.

The version selected runs on all the nodes in the cluster.

Constraints: Only version 1.0 is currently available.

Example: `1.0`


## `AllowVersionUpgrade = ::Bool`
If `true`, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.

When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster.

Default: `true`


## `NumberOfNodes = ::Int`
The number of compute nodes in the cluster. This parameter is required when the **ClusterType** parameter is specified as `multi-node`.

For information about determining how many nodes you need, go to [Working with Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes) in the *Amazon Redshift Cluster Management Guide*.

If you don't specify this parameter, you get a single-node cluster. When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster.

Default: `1`

Constraints: Value must be at least 1 and no more than 100.


## `PubliclyAccessible = ::Bool`
If `true`, the cluster can be accessed from a public network.


## `Encrypted = ::Bool`
If `true`, the data in the cluster is encrypted at rest.

Default: false


## `HsmClientCertificateIdentifier = ::String`
Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.


## `HsmConfigurationIdentifier = ::String`
Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.


## `ElasticIp = ::String`
The Elastic IP (EIP) address for the cluster.

Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to [Supported Platforms to Launch Your Cluster](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms) in the Amazon Redshift Cluster Management Guide.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `KmsKeyId = ::String`
The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.


## `EnhancedVpcRouting = ::Bool`
An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see [Enhanced VPC Routing](http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html) in the Amazon Redshift Cluster Management Guide.

If this option is `true`, enhanced VPC routing is enabled.

Default: false


## `AdditionalInfo = ::String`
Reserved.


## `IamRoles = [::String, ...]`
A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.

A cluster can have up to 10 IAM roles associated with it at any time.


## `MaintenanceTrackName = ::String`
An optional parameter for the name of the maintenance track for the cluster. If you don't provide a maintenance track name, the cluster is assigned to the `current` track.




# Returns

`CreateClusterResult`

# Exceptions

`ClusterAlreadyExistsFault`, `InsufficientClusterCapacityFault`, `ClusterParameterGroupNotFoundFault`, `ClusterSecurityGroupNotFoundFault`, `ClusterQuotaExceededFault`, `NumberOfNodesQuotaExceededFault`, `NumberOfNodesPerClusterLimitExceededFault`, `ClusterSubnetGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidClusterSubnetGroupStateFault`, `InvalidSubnet`, `UnauthorizedOperation`, `HsmClientCertificateNotFoundFault`, `HsmConfigurationNotFoundFault`, `InvalidElasticIpFault`, `TagLimitExceededFault`, `InvalidTagFault`, `LimitExceededFault`, `DependentServiceRequestThrottlingFault` or `InvalidClusterTrackFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateCluster)
"""
@inline create_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cluster(aws, args)

@inline create_cluster(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateCluster", args)

@inline create_cluster(args) = create_cluster(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_cluster_parameter_group
    create_cluster_parameter_group([::AWSConfig], arguments::Dict)
    create_cluster_parameter_group([::AWSConfig]; ParameterGroupName=, ParameterGroupFamily=, Description=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateClusterParameterGroup", arguments::Dict)
    redshift([::AWSConfig], "CreateClusterParameterGroup", ParameterGroupName=, ParameterGroupFamily=, Description=, <keyword arguments>)

# CreateClusterParameterGroup Operation

Creates an Amazon Redshift parameter group.

Creating parameter groups is independent of creating clusters. You can associate a cluster with a parameter group when you create the cluster. You can also associate an existing cluster with a parameter group after the cluster is created by using [ModifyCluster](@ref).

Parameters in the parameter group define specific behavior that applies to the databases you create on the cluster. For more information about parameters and parameter groups, go to [Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the cluster parameter group.

Constraints:

*   Must be 1 to 255 alphanumeric characters or hyphens

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

*   Must be unique withing your AWS account.

**Note**
> This value is stored as a lower-case string.


## `ParameterGroupFamily = ::String` -- *Required*
The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.

To get a list of valid parameter group family names, you can call [DescribeClusterParameterGroups](@ref). By default, Amazon Redshift returns a list of all the parameter groups that are owned by your AWS account, including the default parameter groups for each Amazon Redshift engine version. The parameter group family names associated with the default parameter groups provide you the valid values. For example, a valid family name is "redshift-1.0".


## `Description = ::String` -- *Required*
A description of the parameter group.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateClusterParameterGroupResult`

# Exceptions

`ClusterParameterGroupQuotaExceededFault`, `ClusterParameterGroupAlreadyExistsFault`, `TagLimitExceededFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterParameterGroup)
"""
@inline create_cluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = create_cluster_parameter_group(aws, args)

@inline create_cluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateClusterParameterGroup", args)

@inline create_cluster_parameter_group(args) = create_cluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_cluster_security_group
    create_cluster_security_group([::AWSConfig], arguments::Dict)
    create_cluster_security_group([::AWSConfig]; ClusterSecurityGroupName=, Description=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateClusterSecurityGroup", arguments::Dict)
    redshift([::AWSConfig], "CreateClusterSecurityGroup", ClusterSecurityGroupName=, Description=, <keyword arguments>)

# CreateClusterSecurityGroup Operation

Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.

For information about managing security groups, go to [Amazon Redshift Cluster Security Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterSecurityGroupName = ::String` -- *Required*
The name for the security group. Amazon Redshift stores the value as a lowercase string.

Constraints:

*   Must contain no more than 255 alphanumeric characters or hyphens.

*   Must not be "Default".

*   Must be unique for all security groups that are created by your AWS account.

Example: `examplesecuritygroup`


## `Description = ::String` -- *Required*
A description for the security group.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateClusterSecurityGroupResult`

# Exceptions

`ClusterSecurityGroupAlreadyExistsFault`, `ClusterSecurityGroupQuotaExceededFault`, `TagLimitExceededFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSecurityGroup)
"""
@inline create_cluster_security_group(aws::AWSConfig=default_aws_config(); args...) = create_cluster_security_group(aws, args)

@inline create_cluster_security_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateClusterSecurityGroup", args)

@inline create_cluster_security_group(args) = create_cluster_security_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_cluster_snapshot
    create_cluster_snapshot([::AWSConfig], arguments::Dict)
    create_cluster_snapshot([::AWSConfig]; SnapshotIdentifier=, ClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateClusterSnapshot", arguments::Dict)
    redshift([::AWSConfig], "CreateClusterSnapshot", SnapshotIdentifier=, ClusterIdentifier=, <keyword arguments>)

# CreateClusterSnapshot Operation

Creates a manual snapshot of the specified cluster. The cluster must be in the `available` state.

For more information about working with snapshots, go to [Amazon Redshift Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `SnapshotIdentifier = ::String` -- *Required*
A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account.

Constraints:

*   Cannot be null, empty, or blank

*   Must contain from 1 to 255 alphanumeric characters or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-snapshot-id`


## `ClusterIdentifier = ::String` -- *Required*
The cluster identifier for which you want a snapshot.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateClusterSnapshotResult`

# Exceptions

`ClusterSnapshotAlreadyExistsFault`, `InvalidClusterStateFault`, `ClusterNotFoundFault`, `ClusterSnapshotQuotaExceededFault`, `TagLimitExceededFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSnapshot)
"""
@inline create_cluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_cluster_snapshot(aws, args)

@inline create_cluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateClusterSnapshot", args)

@inline create_cluster_snapshot(args) = create_cluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_cluster_subnet_group
    create_cluster_subnet_group([::AWSConfig], arguments::Dict)
    create_cluster_subnet_group([::AWSConfig]; ClusterSubnetGroupName=, Description=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateClusterSubnetGroup", arguments::Dict)
    redshift([::AWSConfig], "CreateClusterSubnetGroup", ClusterSubnetGroupName=, Description=, SubnetIds=, <keyword arguments>)

# CreateClusterSubnetGroup Operation

Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.

For information about subnet groups, go to [Amazon Redshift Cluster Subnet Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterSubnetGroupName = ::String` -- *Required*
The name for the subnet group. Amazon Redshift stores the value as a lowercase string.

Constraints:

*   Must contain no more than 255 alphanumeric characters or hyphens.

*   Must not be "Default".

*   Must be unique for all subnet groups that are created by your AWS account.

Example: `examplesubnetgroup`


## `Description = ::String` -- *Required*
A description for the subnet group.


## `SubnetIds = [::String, ...]` -- *Required*
An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateClusterSubnetGroupResult`

# Exceptions

`ClusterSubnetGroupAlreadyExistsFault`, `ClusterSubnetGroupQuotaExceededFault`, `ClusterSubnetQuotaExceededFault`, `InvalidSubnet`, `UnauthorizedOperation`, `TagLimitExceededFault`, `InvalidTagFault` or `DependentServiceRequestThrottlingFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSubnetGroup)
"""
@inline create_cluster_subnet_group(aws::AWSConfig=default_aws_config(); args...) = create_cluster_subnet_group(aws, args)

@inline create_cluster_subnet_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateClusterSubnetGroup", args)

@inline create_cluster_subnet_group(args) = create_cluster_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_event_subscription
    create_event_subscription([::AWSConfig], arguments::Dict)
    create_event_subscription([::AWSConfig]; SubscriptionName=, SnsTopicArn=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateEventSubscription", arguments::Dict)
    redshift([::AWSConfig], "CreateEventSubscription", SubscriptionName=, SnsTopicArn=, <keyword arguments>)

# CreateEventSubscription Operation

Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.

You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters.

If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the event subscription to be created.

Constraints:

*   Cannot be null, empty, or blank.

*   Must contain from 1 to 255 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `SnsTopicArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.


## `SourceType = ::String`
The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.

Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.


## `SourceIds = [::String, ...]`
A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.

Example: my-cluster-1, my-cluster-2

Example: my-snapshot-20131010


## `EventCategories = [::String, ...]`
Specifies the Amazon Redshift event categories to be published by the event notification subscription.

Values: Configuration, Management, Monitoring, Security


## `Severity = ::String`
Specifies the Amazon Redshift event severity to be published by the event notification subscription.

Values: ERROR, INFO


## `Enabled = ::Bool`
A Boolean value; set to `true` to activate the subscription, set to `false` to create the subscription but not active it.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateEventSubscriptionResult`

# Exceptions

`EventSubscriptionQuotaExceededFault`, `SubscriptionAlreadyExistFault`, `SNSInvalidTopicFault`, `SNSNoAuthorizationFault`, `SNSTopicArnNotFoundFault`, `SubscriptionEventIdNotFoundFault`, `SubscriptionCategoryNotFoundFault`, `SubscriptionSeverityNotFoundFault`, `SourceNotFoundFault`, `TagLimitExceededFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateEventSubscription)
"""
@inline create_event_subscription(aws::AWSConfig=default_aws_config(); args...) = create_event_subscription(aws, args)

@inline create_event_subscription(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateEventSubscription", args)

@inline create_event_subscription(args) = create_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_hsm_client_certificate
    create_hsm_client_certificate([::AWSConfig], arguments::Dict)
    create_hsm_client_certificate([::AWSConfig]; HsmClientCertificateIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateHsmClientCertificate", arguments::Dict)
    redshift([::AWSConfig], "CreateHsmClientCertificate", HsmClientCertificateIdentifier=, <keyword arguments>)

# CreateHsmClientCertificate Operation

Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.

The command returns a public key, which you must store in the HSM. In addition to creating the HSM certificate, you must create an Amazon Redshift HSM configuration that provides a cluster the information needed to store and use encryption keys in the HSM. For more information, go to [Hardware Security Modules](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html) in the Amazon Redshift Cluster Management Guide.

# Arguments

## `HsmClientCertificateIdentifier = ::String` -- *Required*
The identifier to be assigned to the new HSM client certificate that the cluster will use to connect to the HSM to use the database encryption keys.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateHsmClientCertificateResult`

# Exceptions

`HsmClientCertificateAlreadyExistsFault`, `HsmClientCertificateQuotaExceededFault`, `TagLimitExceededFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmClientCertificate)
"""
@inline create_hsm_client_certificate(aws::AWSConfig=default_aws_config(); args...) = create_hsm_client_certificate(aws, args)

@inline create_hsm_client_certificate(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateHsmClientCertificate", args)

@inline create_hsm_client_certificate(args) = create_hsm_client_certificate(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_hsm_configuration
    create_hsm_configuration([::AWSConfig], arguments::Dict)
    create_hsm_configuration([::AWSConfig]; HsmConfigurationIdentifier=, Description=, HsmIpAddress=, HsmPartitionName=, HsmPartitionPassword=, HsmServerPublicCertificate=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateHsmConfiguration", arguments::Dict)
    redshift([::AWSConfig], "CreateHsmConfiguration", HsmConfigurationIdentifier=, Description=, HsmIpAddress=, HsmPartitionName=, HsmPartitionPassword=, HsmServerPublicCertificate=, <keyword arguments>)

# CreateHsmConfiguration Operation

Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM). After creating the HSM configuration, you can specify it as a parameter when creating a cluster. The cluster will then store its encryption keys in the HSM.

In addition to creating an HSM configuration, you must also create an HSM client certificate. For more information, go to [Hardware Security Modules](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html) in the Amazon Redshift Cluster Management Guide.

# Arguments

## `HsmConfigurationIdentifier = ::String` -- *Required*
The identifier to be assigned to the new Amazon Redshift HSM configuration.


## `Description = ::String` -- *Required*
A text description of the HSM configuration to be created.


## `HsmIpAddress = ::String` -- *Required*
The IP address that the Amazon Redshift cluster must use to access the HSM.


## `HsmPartitionName = ::String` -- *Required*
The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.


## `HsmPartitionPassword = ::String` -- *Required*
The password required to access the HSM partition.


## `HsmServerPublicCertificate = ::String` -- *Required*
The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateHsmConfigurationResult`

# Exceptions

`HsmConfigurationAlreadyExistsFault`, `HsmConfigurationQuotaExceededFault`, `TagLimitExceededFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmConfiguration)
"""
@inline create_hsm_configuration(aws::AWSConfig=default_aws_config(); args...) = create_hsm_configuration(aws, args)

@inline create_hsm_configuration(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateHsmConfiguration", args)

@inline create_hsm_configuration(args) = create_hsm_configuration(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_snapshot_copy_grant
    create_snapshot_copy_grant([::AWSConfig], arguments::Dict)
    create_snapshot_copy_grant([::AWSConfig]; SnapshotCopyGrantName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateSnapshotCopyGrant", arguments::Dict)
    redshift([::AWSConfig], "CreateSnapshotCopyGrant", SnapshotCopyGrantName=, <keyword arguments>)

# CreateSnapshotCopyGrant Operation

Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region.

For more information about managing snapshot copy grants, go to [Amazon Redshift Database Encryption](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `SnapshotCopyGrantName = ::String` -- *Required*
The name of the snapshot copy grant. This name must be unique in the region for the AWS account.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   Alphabetic characters must be lowercase.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

*   Must be unique for all clusters within an AWS account.


## `KmsKeyId = ::String`
The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift permission. If no key is specified, the default key is used.


## `Tags = [[ ... ], ...]`
A list of tag instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateSnapshotCopyGrantResult`

# Exceptions

`SnapshotCopyGrantAlreadyExistsFault`, `SnapshotCopyGrantQuotaExceededFault`, `LimitExceededFault`, `TagLimitExceededFault`, `InvalidTagFault` or `DependentServiceRequestThrottlingFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateSnapshotCopyGrant)
"""
@inline create_snapshot_copy_grant(aws::AWSConfig=default_aws_config(); args...) = create_snapshot_copy_grant(aws, args)

@inline create_snapshot_copy_grant(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateSnapshotCopyGrant", args)

@inline create_snapshot_copy_grant(args) = create_snapshot_copy_grant(default_aws_config(), args)


"""
    using AWSSDK.Redshift.create_tags
    create_tags([::AWSConfig], arguments::Dict)
    create_tags([::AWSConfig]; ResourceName=, Tags=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "CreateTags", arguments::Dict)
    redshift([::AWSConfig], "CreateTags", ResourceName=, Tags=)

# CreateTags Operation

Adds one or more tags to a specified resource.

A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, you will receive an error and the attempt will fail.

If you specify a key that already exists for the resource, the value for that key will be updated with the new value.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Resource Name (ARN) to which you want to add the tag or tags. For example, `arn:aws:redshift:us-east-1:123456789:cluster:t1`.


## `Tags = [[ ... ], ...]` -- *Required*
One or more name/value pairs to add as tags to the specified resource. Each tag name is passed in with the parameter `Key` and the corresponding value is passed in with the parameter `Value`. The `Key` and `Value` parameters are separated by a comma (,). Separate multiple tags with a space. For example, `--tags "Key"="owner","Value"="admin" "Key"="environment","Value"="test" "Key"="version","Value"="1.0"`.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`TagLimitExceededFault`, `ResourceNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateTags)
"""
@inline create_tags(aws::AWSConfig=default_aws_config(); args...) = create_tags(aws, args)

@inline create_tags(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "CreateTags", args)

@inline create_tags(args) = create_tags(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_cluster
    delete_cluster([::AWSConfig], arguments::Dict)
    delete_cluster([::AWSConfig]; ClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteCluster", arguments::Dict)
    redshift([::AWSConfig], "DeleteCluster", ClusterIdentifier=, <keyword arguments>)

# DeleteCluster Operation

Deletes a previously provisioned cluster. A successful response from the web service indicates that the request was received correctly. Use [DescribeClusters](@ref) to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

If you want to shut down the cluster and retain it for future use, set *SkipFinalClusterSnapshot* to `false` and specify a name for *FinalClusterSnapshotIdentifier*. You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be "final-snapshot" while the snapshot is being taken, then it's "deleting" once Amazon Redshift begins deleting the cluster.

For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The identifier of the cluster to be deleted.

Constraints:

*   Must contain lowercase characters.

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `SkipFinalClusterSnapshot = ::Bool`
Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If `true`, a final cluster snapshot is not created. If `false`, a final cluster snapshot is created before the cluster is deleted.

**Note**
> The *FinalClusterSnapshotIdentifier* parameter must be specified if *SkipFinalClusterSnapshot* is `false`.

Default: `false`


## `FinalClusterSnapshotIdentifier = ::String`
The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, *SkipFinalClusterSnapshot* must be `false`.

Constraints:

*   Must be 1 to 255 alphanumeric characters.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.




# Returns

`DeleteClusterResult`

# Exceptions

`ClusterNotFoundFault`, `InvalidClusterStateFault`, `ClusterSnapshotAlreadyExistsFault` or `ClusterSnapshotQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteCluster)
"""
@inline delete_cluster(aws::AWSConfig=default_aws_config(); args...) = delete_cluster(aws, args)

@inline delete_cluster(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteCluster", args)

@inline delete_cluster(args) = delete_cluster(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_cluster_parameter_group
    delete_cluster_parameter_group([::AWSConfig], arguments::Dict)
    delete_cluster_parameter_group([::AWSConfig]; ParameterGroupName=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteClusterParameterGroup", arguments::Dict)
    redshift([::AWSConfig], "DeleteClusterParameterGroup", ParameterGroupName=)

# DeleteClusterParameterGroup Operation

Deletes a specified Amazon Redshift parameter group.

**Note**
> You cannot delete a parameter group if it is associated with a cluster.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the parameter group to be deleted.

Constraints:

*   Must be the name of an existing cluster parameter group.

*   Cannot delete a default cluster parameter group.




# Exceptions

`InvalidClusterParameterGroupStateFault` or `ClusterParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterParameterGroup)
"""
@inline delete_cluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_cluster_parameter_group(aws, args)

@inline delete_cluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteClusterParameterGroup", args)

@inline delete_cluster_parameter_group(args) = delete_cluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_cluster_security_group
    delete_cluster_security_group([::AWSConfig], arguments::Dict)
    delete_cluster_security_group([::AWSConfig]; ClusterSecurityGroupName=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteClusterSecurityGroup", arguments::Dict)
    redshift([::AWSConfig], "DeleteClusterSecurityGroup", ClusterSecurityGroupName=)

# DeleteClusterSecurityGroup Operation

Deletes an Amazon Redshift security group.

**Note**
> You cannot delete a security group that is associated with any clusters. You cannot delete the default security group.

For information about managing security groups, go to [Amazon Redshift Cluster Security Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterSecurityGroupName = ::String` -- *Required*
The name of the cluster security group to be deleted.




# Exceptions

`InvalidClusterSecurityGroupStateFault` or `ClusterSecurityGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSecurityGroup)
"""
@inline delete_cluster_security_group(aws::AWSConfig=default_aws_config(); args...) = delete_cluster_security_group(aws, args)

@inline delete_cluster_security_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteClusterSecurityGroup", args)

@inline delete_cluster_security_group(args) = delete_cluster_security_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_cluster_snapshot
    delete_cluster_snapshot([::AWSConfig], arguments::Dict)
    delete_cluster_snapshot([::AWSConfig]; SnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteClusterSnapshot", arguments::Dict)
    redshift([::AWSConfig], "DeleteClusterSnapshot", SnapshotIdentifier=, <keyword arguments>)

# DeleteClusterSnapshot Operation

Deletes the specified manual snapshot. The snapshot must be in the `available` state, with no other users authorized to access the snapshot.

Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.

# Arguments

## `SnapshotIdentifier = ::String` -- *Required*
The unique identifier of the manual snapshot to be deleted.

Constraints: Must be the name of an existing snapshot that is in the `available` state.


## `SnapshotClusterIdentifier = ::String`
The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.

Constraints: Must be the name of valid cluster.




# Returns

`DeleteClusterSnapshotResult`

# Exceptions

`InvalidClusterSnapshotStateFault` or `ClusterSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSnapshot)
"""
@inline delete_cluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_cluster_snapshot(aws, args)

@inline delete_cluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteClusterSnapshot", args)

@inline delete_cluster_snapshot(args) = delete_cluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_cluster_subnet_group
    delete_cluster_subnet_group([::AWSConfig], arguments::Dict)
    delete_cluster_subnet_group([::AWSConfig]; ClusterSubnetGroupName=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteClusterSubnetGroup", arguments::Dict)
    redshift([::AWSConfig], "DeleteClusterSubnetGroup", ClusterSubnetGroupName=)

# DeleteClusterSubnetGroup Operation

Deletes the specified cluster subnet group.

# Arguments

## `ClusterSubnetGroupName = ::String` -- *Required*
The name of the cluster subnet group name to be deleted.




# Exceptions

`InvalidClusterSubnetGroupStateFault`, `InvalidClusterSubnetStateFault` or `ClusterSubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSubnetGroup)
"""
@inline delete_cluster_subnet_group(aws::AWSConfig=default_aws_config(); args...) = delete_cluster_subnet_group(aws, args)

@inline delete_cluster_subnet_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteClusterSubnetGroup", args)

@inline delete_cluster_subnet_group(args) = delete_cluster_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_event_subscription
    delete_event_subscription([::AWSConfig], arguments::Dict)
    delete_event_subscription([::AWSConfig]; SubscriptionName=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteEventSubscription", arguments::Dict)
    redshift([::AWSConfig], "DeleteEventSubscription", SubscriptionName=)

# DeleteEventSubscription Operation

Deletes an Amazon Redshift event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the Amazon Redshift event notification subscription to be deleted.




# Exceptions

`SubscriptionNotFoundFault` or `InvalidSubscriptionStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteEventSubscription)
"""
@inline delete_event_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_event_subscription(aws, args)

@inline delete_event_subscription(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteEventSubscription", args)

@inline delete_event_subscription(args) = delete_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_hsm_client_certificate
    delete_hsm_client_certificate([::AWSConfig], arguments::Dict)
    delete_hsm_client_certificate([::AWSConfig]; HsmClientCertificateIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteHsmClientCertificate", arguments::Dict)
    redshift([::AWSConfig], "DeleteHsmClientCertificate", HsmClientCertificateIdentifier=)

# DeleteHsmClientCertificate Operation

Deletes the specified HSM client certificate.

# Arguments

## `HsmClientCertificateIdentifier = ::String` -- *Required*
The identifier of the HSM client certificate to be deleted.




# Exceptions

`InvalidHsmClientCertificateStateFault` or `HsmClientCertificateNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteHsmClientCertificate)
"""
@inline delete_hsm_client_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_hsm_client_certificate(aws, args)

@inline delete_hsm_client_certificate(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteHsmClientCertificate", args)

@inline delete_hsm_client_certificate(args) = delete_hsm_client_certificate(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_hsm_configuration
    delete_hsm_configuration([::AWSConfig], arguments::Dict)
    delete_hsm_configuration([::AWSConfig]; HsmConfigurationIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteHsmConfiguration", arguments::Dict)
    redshift([::AWSConfig], "DeleteHsmConfiguration", HsmConfigurationIdentifier=)

# DeleteHsmConfiguration Operation

Deletes the specified Amazon Redshift HSM configuration.

# Arguments

## `HsmConfigurationIdentifier = ::String` -- *Required*
The identifier of the Amazon Redshift HSM configuration to be deleted.




# Exceptions

`InvalidHsmConfigurationStateFault` or `HsmConfigurationNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteHsmConfiguration)
"""
@inline delete_hsm_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_hsm_configuration(aws, args)

@inline delete_hsm_configuration(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteHsmConfiguration", args)

@inline delete_hsm_configuration(args) = delete_hsm_configuration(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_snapshot_copy_grant
    delete_snapshot_copy_grant([::AWSConfig], arguments::Dict)
    delete_snapshot_copy_grant([::AWSConfig]; SnapshotCopyGrantName=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteSnapshotCopyGrant", arguments::Dict)
    redshift([::AWSConfig], "DeleteSnapshotCopyGrant", SnapshotCopyGrantName=)

# DeleteSnapshotCopyGrant Operation

Deletes the specified snapshot copy grant.

# Arguments

## `SnapshotCopyGrantName = ::String` -- *Required*
The name of the snapshot copy grant to delete.




# Exceptions

`InvalidSnapshotCopyGrantStateFault` or `SnapshotCopyGrantNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteSnapshotCopyGrant)
"""
@inline delete_snapshot_copy_grant(aws::AWSConfig=default_aws_config(); args...) = delete_snapshot_copy_grant(aws, args)

@inline delete_snapshot_copy_grant(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteSnapshotCopyGrant", args)

@inline delete_snapshot_copy_grant(args) = delete_snapshot_copy_grant(default_aws_config(), args)


"""
    using AWSSDK.Redshift.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; ResourceName=, TagKeys=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DeleteTags", arguments::Dict)
    redshift([::AWSConfig], "DeleteTags", ResourceName=, TagKeys=)

# DeleteTags Operation

Deletes a tag or tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, `arn:aws:redshift:us-east-1:123456789:cluster:t1`.


## `TagKeys = [::String, ...]` -- *Required*
The tag key that you want to delete.




# Exceptions

`ResourceNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_db_revisions
    describe_cluster_db_revisions([::AWSConfig], arguments::Dict)
    describe_cluster_db_revisions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterDbRevisions", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterDbRevisions", <keyword arguments>)

# DescribeClusterDbRevisions Operation

Returns an array of `ClusterDbRevision` objects.

# Arguments

## `ClusterIdentifier = ::String`
A unique identifier for a cluster whose `ClusterDbRevisions` you are requesting. This parameter is case sensitive. All clusters defined for an account are returned by default.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in the `marker` field of the response. You can retrieve the next set of response records by providing the returned `marker` value in the `marker` parameter and retrying the request.

Default: 100

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point for returning a set of response records. When the results of a `DescribeClusterDbRevisions` request exceed the value specified in `MaxRecords`, Amazon Redshift returns a value in the `marker` field of the response. You can retrieve the next set of response records by providing the returned `marker` value in the `marker` parameter and retrying the request.

Constraints: You can specify either the `ClusterIdentifier` parameter, or the `marker` parameter, but not both.




# Returns

`ClusterDbRevisionsMessage`

# Exceptions

`ClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterDbRevisions)
"""
@inline describe_cluster_db_revisions(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_db_revisions(aws, args)

@inline describe_cluster_db_revisions(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterDbRevisions", args)

@inline describe_cluster_db_revisions(args) = describe_cluster_db_revisions(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_parameter_groups
    describe_cluster_parameter_groups([::AWSConfig], arguments::Dict)
    describe_cluster_parameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterParameterGroups", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterParameterGroups", <keyword arguments>)

# DescribeClusterParameterGroups Operation

Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.

For more information about parameters and parameter groups, go to [Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html) in the *Amazon Redshift Cluster Management Guide*.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all parameter groups that have any combination of those values are returned.

If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `ParameterGroupName = ::String`
The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusterParameterGroups](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.




# Returns

`ClusterParameterGroupsMessage`

# Exceptions

`ClusterParameterGroupNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterParameterGroups)
"""
@inline describe_cluster_parameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_parameter_groups(aws, args)

@inline describe_cluster_parameter_groups(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterParameterGroups", args)

@inline describe_cluster_parameter_groups(args) = describe_cluster_parameter_groups(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_parameters
    describe_cluster_parameters([::AWSConfig], arguments::Dict)
    describe_cluster_parameters([::AWSConfig]; ParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterParameters", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterParameters", ParameterGroupName=, <keyword arguments>)

# DescribeClusterParameters Operation

Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on.

You can specify *source* filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from [ModifyClusterParameterGroup](@ref), you can specify *source* equal to *user*.

For more information about parameters and parameter groups, go to [Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of a cluster parameter group for which to return details.


## `Source = ::String`
The parameter types to return. Specify `user` to show parameters that are different form the default. Similarly, specify `engine-default` to show parameters that are the same as the default parameter group.

Default: All parameter types returned.

Valid Values: `user` | `engine-default`


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusterParameters](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`ClusterParameterGroupDetails`

# Exceptions

`ClusterParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterParameters)
"""
@inline describe_cluster_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_parameters(aws, args)

@inline describe_cluster_parameters(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterParameters", args)

@inline describe_cluster_parameters(args) = describe_cluster_parameters(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_security_groups
    describe_cluster_security_groups([::AWSConfig], arguments::Dict)
    describe_cluster_security_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterSecurityGroups", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterSecurityGroups", <keyword arguments>)

# DescribeClusterSecurityGroups Operation

Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.

For information about managing security groups, go to [Amazon Redshift Cluster Security Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html) in the *Amazon Redshift Cluster Management Guide*.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all security groups that have any combination of those values are returned.

If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `ClusterSecurityGroupName = ::String`
The name of a cluster security group for which you are requesting details. You can specify either the **Marker** parameter or a **ClusterSecurityGroupName** parameter, but not both.

Example: `securitygroup1`


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusterSecurityGroups](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.

Constraints: You can specify either the **ClusterSecurityGroupName** parameter or the **Marker** parameter, but not both.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching cluster security groups that are associated with the specified key or keys. For example, suppose that you have security groups that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching cluster security groups that are associated with the specified tag value or values. For example, suppose that you have security groups that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag values associated with them.




# Returns

`ClusterSecurityGroupMessage`

# Exceptions

`ClusterSecurityGroupNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSecurityGroups)
"""
@inline describe_cluster_security_groups(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_security_groups(aws, args)

@inline describe_cluster_security_groups(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterSecurityGroups", args)

@inline describe_cluster_security_groups(args) = describe_cluster_security_groups(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_snapshots
    describe_cluster_snapshots([::AWSConfig], arguments::Dict)
    describe_cluster_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterSnapshots", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterSnapshots", <keyword arguments>)

# DescribeClusterSnapshots Operation

Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters.

If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `ClusterIdentifier = ::String`
The identifier of the cluster for which information about snapshots is requested.


## `SnapshotIdentifier = ::String`
The snapshot identifier of the snapshot about which to return information.


## `SnapshotType = ::String`
The type of snapshots for which you are requesting information. By default, snapshots of all types are returned.

Valid Values: `automated` | `manual`


## `StartTime = timestamp`
A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

Example: `2012-07-16T18:00:00Z`


## `EndTime = timestamp`
A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

Example: `2012-07-16T18:00:00Z`


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusterSnapshots](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.


## `OwnerAccount = ::String`
The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.


## `ClusterExists = ::Bool`
A value that indicates whether to return snapshots only for an existing cluster. Table-level restore can be performed only using a snapshot of an existing cluster, that is, a cluster that has not been deleted. If `ClusterExists` is set to `true`, `ClusterIdentifier` is required.




# Returns

`SnapshotMessage`

# Exceptions

`ClusterNotFoundFault`, `ClusterSnapshotNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSnapshots)
"""
@inline describe_cluster_snapshots(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_snapshots(aws, args)

@inline describe_cluster_snapshots(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterSnapshots", args)

@inline describe_cluster_snapshots(args) = describe_cluster_snapshots(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_subnet_groups
    describe_cluster_subnet_groups([::AWSConfig], arguments::Dict)
    describe_cluster_subnet_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterSubnetGroups", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterSubnetGroups", <keyword arguments>)

# DescribeClusterSubnetGroups Operation

Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all subnet groups that have any combination of those values are returned.

If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `ClusterSubnetGroupName = ::String`
The name of the cluster subnet group for which information is requested.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusterSubnetGroups](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching cluster subnet groups that are associated with the specified key or keys. For example, suppose that you have subnet groups that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching cluster subnet groups that are associated with the specified tag value or values. For example, suppose that you have subnet groups that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag values associated with them.




# Returns

`ClusterSubnetGroupMessage`

# Exceptions

`ClusterSubnetGroupNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSubnetGroups)
"""
@inline describe_cluster_subnet_groups(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_subnet_groups(aws, args)

@inline describe_cluster_subnet_groups(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterSubnetGroups", args)

@inline describe_cluster_subnet_groups(args) = describe_cluster_subnet_groups(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_tracks
    describe_cluster_tracks([::AWSConfig], arguments::Dict)
    describe_cluster_tracks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterTracks", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterTracks", <keyword arguments>)

# DescribeClusterTracks Operation

Returns a list of all the available maintenance tracks.

# Arguments

## `MaintenanceTrackName = ::String`
The name of the maintenance track.


## `MaxRecords = ::Int`
An integer value for the maximum number of maintenance tracks to return.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a `DescribeClusterTracks` request exceed the value specified in `MaxRecords`, Amazon Redshift returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`TrackListMessage`

# Exceptions

`InvalidClusterTrackFault` or `UnauthorizedOperation`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterTracks)
"""
@inline describe_cluster_tracks(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_tracks(aws, args)

@inline describe_cluster_tracks(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterTracks", args)

@inline describe_cluster_tracks(args) = describe_cluster_tracks(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_cluster_versions
    describe_cluster_versions([::AWSConfig], arguments::Dict)
    describe_cluster_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusterVersions", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusterVersions", <keyword arguments>)

# DescribeClusterVersions Operation

Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterVersion = ::String`
The specific cluster version to return.

Example: `1.0`


## `ClusterParameterGroupFamily = ::String`
The name of a specific cluster parameter group family to return details for.

Constraints:

*   Must be 1 to 255 alphanumeric characters

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusterVersions](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`ClusterVersionsMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterVersions)
"""
@inline describe_cluster_versions(aws::AWSConfig=default_aws_config(); args...) = describe_cluster_versions(aws, args)

@inline describe_cluster_versions(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusterVersions", args)

@inline describe_cluster_versions(args) = describe_cluster_versions(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_clusters
    describe_clusters([::AWSConfig], arguments::Dict)
    describe_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeClusters", arguments::Dict)
    redshift([::AWSConfig], "DescribeClusters", <keyword arguments>)

# DescribeClusters Operation

Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all clusters that have any combination of those values are returned.

If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `ClusterIdentifier = ::String`
The unique identifier of a cluster whose properties you are requesting. This parameter is case sensitive.

The default is that all clusters defined for an account are returned.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeClusters](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.

Constraints: You can specify either the **ClusterIdentifier** parameter or the **Marker** parameter, but not both.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching clusters that are associated with the specified key or keys. For example, suppose that you have clusters that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching clusters that are associated with the specified tag value or values. For example, suppose that you have clusters that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag values associated with them.




# Returns

`ClustersMessage`

# Exceptions

`ClusterNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusters)
"""
@inline describe_clusters(aws::AWSConfig=default_aws_config(); args...) = describe_clusters(aws, args)

@inline describe_clusters(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeClusters", args)

@inline describe_clusters(args) = describe_clusters(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_default_cluster_parameters
    describe_default_cluster_parameters([::AWSConfig], arguments::Dict)
    describe_default_cluster_parameters([::AWSConfig]; ParameterGroupFamily=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeDefaultClusterParameters", arguments::Dict)
    redshift([::AWSConfig], "DescribeDefaultClusterParameters", ParameterGroupFamily=, <keyword arguments>)

# DescribeDefaultClusterParameters Operation

Returns a list of parameter settings for the specified parameter group family.

For more information about parameters and parameter groups, go to [Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ParameterGroupFamily = ::String` -- *Required*
The name of the cluster parameter group family.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeDefaultClusterParameters](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`DescribeDefaultClusterParametersResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeDefaultClusterParameters)
"""
@inline describe_default_cluster_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_default_cluster_parameters(aws, args)

@inline describe_default_cluster_parameters(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeDefaultClusterParameters", args)

@inline describe_default_cluster_parameters(args) = describe_default_cluster_parameters(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_event_categories
    describe_event_categories([::AWSConfig], arguments::Dict)
    describe_event_categories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeEventCategories", arguments::Dict)
    redshift([::AWSConfig], "DescribeEventCategories", <keyword arguments>)

# DescribeEventCategories Operation

Displays a list of event categories for all event source types, or for a specified source type. For a list of the event categories and source types, go to [Amazon Redshift Event Notifications](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html).

# Arguments

## `SourceType = ::String`
The source type, such as cluster or parameter group, to which the described event categories apply.

Valid values: cluster, cluster-snapshot, cluster-parameter-group, and cluster-security-group.




# Returns

`EventCategoriesMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventCategories)
"""
@inline describe_event_categories(aws::AWSConfig=default_aws_config(); args...) = describe_event_categories(aws, args)

@inline describe_event_categories(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeEventCategories", args)

@inline describe_event_categories(args) = describe_event_categories(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_event_subscriptions
    describe_event_subscriptions([::AWSConfig], arguments::Dict)
    describe_event_subscriptions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeEventSubscriptions", arguments::Dict)
    redshift([::AWSConfig], "DescribeEventSubscriptions", <keyword arguments>)

# DescribeEventSubscriptions Operation

Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all subscriptions that have any combination of those values are returned.

If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `SubscriptionName = ::String`
The name of the Amazon Redshift event notification subscription to be described.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEventSubscriptions request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching event notification subscriptions that are associated with the specified key or keys. For example, suppose that you have subscriptions that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching event notification subscriptions that are associated with the specified tag value or values. For example, suppose that you have subscriptions that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag values associated with them.




# Returns

`EventSubscriptionsMessage`

# Exceptions

`SubscriptionNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventSubscriptions)
"""
@inline describe_event_subscriptions(aws::AWSConfig=default_aws_config(); args...) = describe_event_subscriptions(aws, args)

@inline describe_event_subscriptions(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeEventSubscriptions", args)

@inline describe_event_subscriptions(args) = describe_event_subscriptions(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeEvents", arguments::Dict)
    redshift([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.

# Arguments

## `SourceIdentifier = ::String`
The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response.

Constraints:

If *SourceIdentifier* is supplied, *SourceType* must also be provided.

*   Specify a cluster identifier when *SourceType* is `cluster`.

*   Specify a cluster security group name when *SourceType* is `cluster-security-group`.

*   Specify a cluster parameter group name when *SourceType* is `cluster-parameter-group`.

*   Specify a cluster snapshot identifier when *SourceType* is `cluster-snapshot`.


## `SourceType = "cluster", "cluster-parameter-group", "cluster-security-group" or "cluster-snapshot"`
The event source to retrieve events for. If no value is specified, all events are returned.

Constraints:

If *SourceType* is supplied, *SourceIdentifier* must also be provided.

*   Specify `cluster` when *SourceIdentifier* is a cluster identifier.

*   Specify `cluster-security-group` when *SourceIdentifier* is a cluster security group name.

*   Specify `cluster-parameter-group` when *SourceIdentifier* is a cluster parameter group name.

*   Specify `cluster-snapshot` when *SourceIdentifier* is a cluster snapshot identifier.


## `StartTime = timestamp`
The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

Example: `2009-07-08T18:00Z`


## `EndTime = timestamp`
The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

Example: `2009-07-08T18:00Z`


## `Duration = ::Int`
The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned.

Default: `60`


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeEvents](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`EventsMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_hsm_client_certificates
    describe_hsm_client_certificates([::AWSConfig], arguments::Dict)
    describe_hsm_client_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeHsmClientCertificates", arguments::Dict)
    redshift([::AWSConfig], "DescribeHsmClientCertificates", <keyword arguments>)

# DescribeHsmClientCertificates Operation

Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all HSM client certificates that have any combination of those values are returned.

If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `HsmClientCertificateIdentifier = ::String`
The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeHsmClientCertificates](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.




# Returns

`HsmClientCertificateMessage`

# Exceptions

`HsmClientCertificateNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeHsmClientCertificates)
"""
@inline describe_hsm_client_certificates(aws::AWSConfig=default_aws_config(); args...) = describe_hsm_client_certificates(aws, args)

@inline describe_hsm_client_certificates(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeHsmClientCertificates", args)

@inline describe_hsm_client_certificates(args) = describe_hsm_client_certificates(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_hsm_configurations
    describe_hsm_configurations([::AWSConfig], arguments::Dict)
    describe_hsm_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeHsmConfigurations", arguments::Dict)
    redshift([::AWSConfig], "DescribeHsmConfigurations", <keyword arguments>)

# DescribeHsmConfigurations Operation

Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all HSM connections that have any combination of those values are returned.

If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `HsmConfigurationIdentifier = ::String`
The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeHsmConfigurations](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.




# Returns

`HsmConfigurationMessage`

# Exceptions

`HsmConfigurationNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeHsmConfigurations)
"""
@inline describe_hsm_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_hsm_configurations(aws, args)

@inline describe_hsm_configurations(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeHsmConfigurations", args)

@inline describe_hsm_configurations(args) = describe_hsm_configurations(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_logging_status
    describe_logging_status([::AWSConfig], arguments::Dict)
    describe_logging_status([::AWSConfig]; ClusterIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeLoggingStatus", arguments::Dict)
    redshift([::AWSConfig], "DescribeLoggingStatus", ClusterIdentifier=)

# DescribeLoggingStatus Operation

Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The identifier of the cluster from which to get the logging status.

Example: `examplecluster`




# Returns

`LoggingStatus`

# Exceptions

`ClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeLoggingStatus)
"""
@inline describe_logging_status(aws::AWSConfig=default_aws_config(); args...) = describe_logging_status(aws, args)

@inline describe_logging_status(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeLoggingStatus", args)

@inline describe_logging_status(args) = describe_logging_status(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_orderable_cluster_options
    describe_orderable_cluster_options([::AWSConfig], arguments::Dict)
    describe_orderable_cluster_options([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeOrderableClusterOptions", arguments::Dict)
    redshift([::AWSConfig], "DescribeOrderableClusterOptions", <keyword arguments>)

# DescribeOrderableClusterOptions Operation

Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterVersion = ::String`
The version filter value. Specify this parameter to show only the available offerings matching the specified version.

Default: All versions.

Constraints: Must be one of the version returned from [DescribeClusterVersions](@ref).


## `NodeType = ::String`
The node type filter value. Specify this parameter to show only the available offerings matching the specified node type.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeOrderableClusterOptions](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`OrderableClusterOptionsMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeOrderableClusterOptions)
"""
@inline describe_orderable_cluster_options(aws::AWSConfig=default_aws_config(); args...) = describe_orderable_cluster_options(aws, args)

@inline describe_orderable_cluster_options(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeOrderableClusterOptions", args)

@inline describe_orderable_cluster_options(args) = describe_orderable_cluster_options(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_reserved_node_offerings
    describe_reserved_node_offerings([::AWSConfig], arguments::Dict)
    describe_reserved_node_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeReservedNodeOfferings", arguments::Dict)
    redshift([::AWSConfig], "DescribeReservedNodeOfferings", <keyword arguments>)

# DescribeReservedNodeOfferings Operation

Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to [PurchaseReservedNodeOffering](@ref) to reserve one or more nodes for your Amazon Redshift cluster.

For more information about reserved node offerings, go to [Purchasing Reserved Nodes](http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ReservedNodeOfferingId = ::String`
The unique identifier for the offering.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeReservedNodeOfferings](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`ReservedNodeOfferingsMessage`

# Exceptions

`ReservedNodeOfferingNotFoundFault`, `UnsupportedOperationFault` or `DependentServiceUnavailableFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeReservedNodeOfferings)
"""
@inline describe_reserved_node_offerings(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_node_offerings(aws, args)

@inline describe_reserved_node_offerings(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeReservedNodeOfferings", args)

@inline describe_reserved_node_offerings(args) = describe_reserved_node_offerings(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_reserved_nodes
    describe_reserved_nodes([::AWSConfig], arguments::Dict)
    describe_reserved_nodes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeReservedNodes", arguments::Dict)
    redshift([::AWSConfig], "DescribeReservedNodes", <keyword arguments>)

# DescribeReservedNodes Operation

Returns the descriptions of the reserved nodes.

# Arguments

## `ReservedNodeId = ::String`
Identifier for the node reservation.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a [DescribeReservedNodes](@ref) request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.




# Returns

`ReservedNodesMessage`

# Exceptions

`ReservedNodeNotFoundFault` or `DependentServiceUnavailableFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeReservedNodes)
"""
@inline describe_reserved_nodes(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_nodes(aws, args)

@inline describe_reserved_nodes(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeReservedNodes", args)

@inline describe_reserved_nodes(args) = describe_reserved_nodes(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_resize
    describe_resize([::AWSConfig], arguments::Dict)
    describe_resize([::AWSConfig]; ClusterIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeResize", arguments::Dict)
    redshift([::AWSConfig], "DescribeResize", ClusterIdentifier=)

# DescribeResize Operation

Returns information about the last resize operation for the specified cluster. If no resize operation has ever been initiated for the specified cluster, a `HTTP 404` error is returned. If a resize operation was initiated and completed, the status of the resize remains as `SUCCEEDED` until the next resize.

A resize operation can be requested using [ModifyCluster](@ref) and specifying a different number or type of nodes for the cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of a cluster whose resize progress you are requesting. This parameter is case-sensitive.

By default, resize operations for all clusters defined for an AWS account are returned.




# Returns

`ResizeProgressMessage`

# Exceptions

`ClusterNotFoundFault` or `ResizeNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeResize)
"""
@inline describe_resize(aws::AWSConfig=default_aws_config(); args...) = describe_resize(aws, args)

@inline describe_resize(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeResize", args)

@inline describe_resize(args) = describe_resize(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_snapshot_copy_grants
    describe_snapshot_copy_grants([::AWSConfig], arguments::Dict)
    describe_snapshot_copy_grants([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeSnapshotCopyGrants", arguments::Dict)
    redshift([::AWSConfig], "DescribeSnapshotCopyGrants", <keyword arguments>)

# DescribeSnapshotCopyGrants Operation

Returns a list of snapshot copy grants owned by the AWS account in the destination region.

For more information about managing snapshot copy grants, go to [Amazon Redshift Database Encryption](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `SnapshotCopyGrantName = ::String`
The name of the snapshot copy grant.


## `MaxRecords = ::Int`
The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.

Default: `100`

Constraints: minimum 20, maximum 100.


## `Marker = ::String`
An optional parameter that specifies the starting point to return a set of response records. When the results of a `DescribeSnapshotCopyGrant` request exceed the value specified in `MaxRecords`, AWS returns a value in the `Marker` field of the response. You can retrieve the next set of response records by providing the returned marker value in the `Marker` parameter and retrying the request.

Constraints: You can specify either the **SnapshotCopyGrantName** parameter or the **Marker** parameter, but not both.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.




# Returns

`SnapshotCopyGrantMessage`

# Exceptions

`SnapshotCopyGrantNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeSnapshotCopyGrants)
"""
@inline describe_snapshot_copy_grants(aws::AWSConfig=default_aws_config(); args...) = describe_snapshot_copy_grants(aws, args)

@inline describe_snapshot_copy_grants(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeSnapshotCopyGrants", args)

@inline describe_snapshot_copy_grants(args) = describe_snapshot_copy_grants(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_table_restore_status
    describe_table_restore_status([::AWSConfig], arguments::Dict)
    describe_table_restore_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeTableRestoreStatus", arguments::Dict)
    redshift([::AWSConfig], "DescribeTableRestoreStatus", <keyword arguments>)

# DescribeTableRestoreStatus Operation

Lists the status of one or more table restore requests made using the [RestoreTableFromClusterSnapshot](@ref) API action. If you don't specify a value for the `TableRestoreRequestId` parameter, then `DescribeTableRestoreStatus` returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise `DescribeTableRestoreStatus` returns the status of the table specified by `TableRestoreRequestId`.

# Arguments

## `ClusterIdentifier = ::String`
The Amazon Redshift cluster that the table is being restored to.


## `TableRestoreRequestId = ::String`
The identifier of the table restore request to return status for. If you don't specify a `TableRestoreRequestId` value, then `DescribeTableRestoreStatus` returns the status of all in-progress table restore requests.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeTableRestoreStatus` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the `MaxRecords` parameter.




# Returns

`TableRestoreStatusMessage`

# Exceptions

`TableRestoreNotFoundFault` or `ClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeTableRestoreStatus)
"""
@inline describe_table_restore_status(aws::AWSConfig=default_aws_config(); args...) = describe_table_restore_status(aws, args)

@inline describe_table_restore_status(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeTableRestoreStatus", args)

@inline describe_table_restore_status(args) = describe_table_restore_status(default_aws_config(), args)


"""
    using AWSSDK.Redshift.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DescribeTags", arguments::Dict)
    redshift([::AWSConfig], "DescribeTags", <keyword arguments>)

# DescribeTags Operation

Returns a list of tags. You can return tags from a specific resource by specifying an ARN, or you can return all tags for a given type of resource, such as clusters, snapshots, and so on.

The following are limitations for `DescribeTags`:

*   You cannot specify an ARN and a resource-type value together in the same request.

*   You cannot use the `MaxRecords` and `Marker` parameters together with the ARN parameter.

*   The `MaxRecords` parameter can be a range from 10 to 50 results to return in a request.

If you specify both tag keys and tag values in the same request, Amazon Redshift returns all resources that match any combination of the specified keys and values. For example, if you have `owner` and `environment` for tag keys, and `admin` and `test` for tag values, all resources that have any combination of those values are returned.

If both tag keys and values are omitted from the request, resources are returned regardless of whether they have tag keys or values associated with them.

# Arguments

## `ResourceName = ::String`
The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For example, `arn:aws:redshift:us-east-1:123456789:cluster:t1`.


## `ResourceType = ::String`
The type of resource with which you want to view tags. Valid resource types are:

*   Cluster

*   CIDR/IP

*   EC2 security group

*   Snapshot

*   Cluster security group

*   Subnet group

*   HSM connection

*   HSM certificate

*   Parameter group

*   Snapshot copy grant

For more information about Amazon Redshift resource types and constructing ARNs, go to [Specifying Policy Elements: Actions, Effects, Resources, and Principals](http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions) in the Amazon Redshift Cluster Management Guide.


## `MaxRecords = ::Int`
The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified `MaxRecords` value, a value is returned in a `marker` field of the response. You can retrieve the next set of records by retrying the command with the returned `marker` value.


## `Marker = ::String`
A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the `marker` parameter and retrying the command. If the `marker` field is empty, all response records have been retrieved for the request.


## `TagKeys = [::String, ...]`
A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called `owner` and `environment`. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.


## `TagValues = [::String, ...]`
A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called `admin` and `test`. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.




# Returns

`TaggedResourceListMessage`

# Exceptions

`ResourceNotFoundFault` or `InvalidTagFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.Redshift.disable_logging
    disable_logging([::AWSConfig], arguments::Dict)
    disable_logging([::AWSConfig]; ClusterIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DisableLogging", arguments::Dict)
    redshift([::AWSConfig], "DisableLogging", ClusterIdentifier=)

# DisableLogging Operation

Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The identifier of the cluster on which logging is to be stopped.

Example: `examplecluster`




# Returns

`LoggingStatus`

# Exceptions

`ClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableLogging)
"""
@inline disable_logging(aws::AWSConfig=default_aws_config(); args...) = disable_logging(aws, args)

@inline disable_logging(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DisableLogging", args)

@inline disable_logging(args) = disable_logging(default_aws_config(), args)


"""
    using AWSSDK.Redshift.disable_snapshot_copy
    disable_snapshot_copy([::AWSConfig], arguments::Dict)
    disable_snapshot_copy([::AWSConfig]; ClusterIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "DisableSnapshotCopy", arguments::Dict)
    redshift([::AWSConfig], "DisableSnapshotCopy", ClusterIdentifier=)

# DisableSnapshotCopy Operation

Disables the automatic copying of snapshots from one region to another region for a specified cluster.

If your cluster and its snapshots are encrypted using a customer master key (CMK) from AWS KMS, use [DeleteSnapshotCopyGrant](@ref) to delete the grant that grants Amazon Redshift permission to the CMK in the destination region.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the source cluster that you want to disable copying of snapshots to a destination region.

Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.




# Returns

`DisableSnapshotCopyResult`

# Exceptions

`ClusterNotFoundFault`, `SnapshotCopyAlreadyDisabledFault`, `InvalidClusterStateFault` or `UnauthorizedOperation`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableSnapshotCopy)
"""
@inline disable_snapshot_copy(aws::AWSConfig=default_aws_config(); args...) = disable_snapshot_copy(aws, args)

@inline disable_snapshot_copy(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "DisableSnapshotCopy", args)

@inline disable_snapshot_copy(args) = disable_snapshot_copy(default_aws_config(), args)


"""
    using AWSSDK.Redshift.enable_logging
    enable_logging([::AWSConfig], arguments::Dict)
    enable_logging([::AWSConfig]; ClusterIdentifier=, BucketName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "EnableLogging", arguments::Dict)
    redshift([::AWSConfig], "EnableLogging", ClusterIdentifier=, BucketName=, <keyword arguments>)

# EnableLogging Operation

Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The identifier of the cluster on which logging is to be started.

Example: `examplecluster`


## `BucketName = ::String` -- *Required*
The name of an existing S3 bucket where the log files are to be stored.

Constraints:

*   Must be in the same region as the cluster

*   The cluster must have read bucket and put object permissions


## `S3KeyPrefix = ::String`
The prefix applied to the log file names.

Constraints:

*   Cannot exceed 512 characters

*   Cannot contain spaces( ), double quotes ("), single quotes ('), a backslash (\\), or control characters. The hexadecimal codes for invalid characters are:

    *   x00 to x20

    *   x22

    *   x27

    *   x5c

    *   x7f or larger




# Returns

`LoggingStatus`

# Exceptions

`ClusterNotFoundFault`, `BucketNotFoundFault`, `InsufficientS3BucketPolicyFault`, `InvalidS3KeyPrefixFault` or `InvalidS3BucketNameFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableLogging)
"""
@inline enable_logging(aws::AWSConfig=default_aws_config(); args...) = enable_logging(aws, args)

@inline enable_logging(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "EnableLogging", args)

@inline enable_logging(args) = enable_logging(default_aws_config(), args)


"""
    using AWSSDK.Redshift.enable_snapshot_copy
    enable_snapshot_copy([::AWSConfig], arguments::Dict)
    enable_snapshot_copy([::AWSConfig]; ClusterIdentifier=, DestinationRegion=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "EnableSnapshotCopy", arguments::Dict)
    redshift([::AWSConfig], "EnableSnapshotCopy", ClusterIdentifier=, DestinationRegion=, <keyword arguments>)

# EnableSnapshotCopy Operation

Enables the automatic copy of snapshots from one region to another region for a specified cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the source cluster to copy snapshots from.

Constraints: Must be the valid name of an existing cluster that does not already have cross-region snapshot copy enabled.


## `DestinationRegion = ::String` -- *Required*
The destination region that you want to copy snapshots to.

Constraints: Must be the name of a valid region. For more information, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region) in the Amazon Web Services General Reference.


## `RetentionPeriod = ::Int`
The number of days to retain automated snapshots in the destination region after they are copied from the source region.

Default: 7.

Constraints: Must be at least 1 and no more than 35.


## `SnapshotCopyGrantName = ::String`
The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.




# Returns

`EnableSnapshotCopyResult`

# Exceptions

`IncompatibleOrderableOptions`, `InvalidClusterStateFault`, `ClusterNotFoundFault`, `CopyToRegionDisabledFault`, `SnapshotCopyAlreadyEnabledFault`, `UnknownSnapshotCopyRegionFault`, `UnauthorizedOperation`, `SnapshotCopyGrantNotFoundFault`, `LimitExceededFault` or `DependentServiceRequestThrottlingFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableSnapshotCopy)
"""
@inline enable_snapshot_copy(aws::AWSConfig=default_aws_config(); args...) = enable_snapshot_copy(aws, args)

@inline enable_snapshot_copy(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "EnableSnapshotCopy", args)

@inline enable_snapshot_copy(args) = enable_snapshot_copy(default_aws_config(), args)


"""
    using AWSSDK.Redshift.get_cluster_credentials
    get_cluster_credentials([::AWSConfig], arguments::Dict)
    get_cluster_credentials([::AWSConfig]; DbUser=, ClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "GetClusterCredentials", arguments::Dict)
    redshift([::AWSConfig], "GetClusterCredentials", DbUser=, ClusterIdentifier=, <keyword arguments>)

# GetClusterCredentials Operation

Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database. The action returns the database user name prefixed with `IAM:` if `AutoCreate` is `False` or `IAMA:` if `AutoCreate` is `True`. You can optionally specify one or more database user groups that the user will join at log on. By default, the temporary credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more information, see [Using IAM Authentication to Generate Database User Credentials](http://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html) in the Amazon Redshift Cluster Management Guide.

The AWS Identity and Access Management (IAM)user or role that executes GetClusterCredentials must have an IAM policy attached that allows access to all necessary actions and resources. For more information about permissions, see [Resource Policies for GetClusterCredentials](http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources) in the Amazon Redshift Cluster Management Guide.

If the `DbGroups` parameter is specified, the IAM policy must allow the `redshift:JoinGroup` action with access to the listed `dbgroups`.

In addition, if the `AutoCreate` parameter is set to `True`, then the policy must include the `redshift:CreateClusterUser` privilege.

If the `DbName` parameter is specified, the IAM policy must allow access to the resource `dbname` for the specified database name.

# Arguments

## `DbUser = ::String` -- *Required*
The name of a database user. If a user name matching `DbUser` exists in the database, the temporary user credentials have the same permissions as the existing user. If `DbUser` doesn't exist in the database and `Autocreate` is `True`, a new user is created using the value for `DbUser` with PUBLIC permissions. If a database user matching the value for `DbUser` doesn't exist and `Autocreate` is `False`, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.

For more information, see [CREATE USER](http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html) in the Amazon Redshift Database Developer Guide.

Constraints:

*   Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be `PUBLIC`.

*   Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.

*   First character must be a letter.

*   Must not contain a colon ( : ) or slash ( / ).

*   Cannot be a reserved word. A list of reserved words can be found in [Reserved Words](http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in the Amazon Redshift Database Developer Guide.


## `DbName = ::String`
The name of a database that `DbUser` is authorized to log on to. If `DbName` is not specified, `DbUser` can log on to any existing database.

Constraints:

*   Must be 1 to 64 alphanumeric characters or hyphens

*   Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.

*   First character must be a letter.

*   Must not contain a colon ( : ) or slash ( / ).

*   Cannot be a reserved word. A list of reserved words can be found in [Reserved Words](http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in the Amazon Redshift Database Developer Guide.


## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the cluster that contains the database for which your are requesting credentials. This parameter is case sensitive.


## `DurationSeconds = ::Int`
The number of seconds until the returned temporary password expires.

Constraint: minimum 900, maximum 3600.

Default: 900


## `AutoCreate = ::Bool`
Create a database user with the name specified for the user named in `DbUser` if one does not exist.


## `DbGroups = [::String, ...]`
A list of the names of existing database groups that the user named in `DbUser` will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to PUBLIC.

Database group name constraints

*   Must be 1 to 64 alphanumeric characters or hyphens

*   Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.

*   First character must be a letter.

*   Must not contain a colon ( : ) or slash ( / ).

*   Cannot be a reserved word. A list of reserved words can be found in [Reserved Words](http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in the Amazon Redshift Database Developer Guide.




# Returns

`ClusterCredentials`

# Exceptions

`ClusterNotFoundFault` or `UnsupportedOperationFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetClusterCredentials)
"""
@inline get_cluster_credentials(aws::AWSConfig=default_aws_config(); args...) = get_cluster_credentials(aws, args)

@inline get_cluster_credentials(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "GetClusterCredentials", args)

@inline get_cluster_credentials(args) = get_cluster_credentials(default_aws_config(), args)


"""
    using AWSSDK.Redshift.get_reserved_node_exchange_offerings
    get_reserved_node_exchange_offerings([::AWSConfig], arguments::Dict)
    get_reserved_node_exchange_offerings([::AWSConfig]; ReservedNodeId=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "GetReservedNodeExchangeOfferings", arguments::Dict)
    redshift([::AWSConfig], "GetReservedNodeExchangeOfferings", ReservedNodeId=, <keyword arguments>)

# GetReservedNodeExchangeOfferings Operation

Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node.

# Arguments

## `ReservedNodeId = ::String` -- *Required*
A string representing the node identifier for the DC1 Reserved Node to be exchanged.


## `MaxRecords = ::Int`
An integer setting the maximum number of ReservedNodeOfferings to retrieve.


## `Marker = ::String`
A value that indicates the starting point for the next set of ReservedNodeOfferings.




# Returns

`GetReservedNodeExchangeOfferingsOutputMessage`

# Exceptions

`ReservedNodeNotFoundFault`, `InvalidReservedNodeStateFault`, `ReservedNodeAlreadyMigratedFault`, `ReservedNodeOfferingNotFoundFault`, `UnsupportedOperationFault` or `DependentServiceUnavailableFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetReservedNodeExchangeOfferings)
"""
@inline get_reserved_node_exchange_offerings(aws::AWSConfig=default_aws_config(); args...) = get_reserved_node_exchange_offerings(aws, args)

@inline get_reserved_node_exchange_offerings(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "GetReservedNodeExchangeOfferings", args)

@inline get_reserved_node_exchange_offerings(args) = get_reserved_node_exchange_offerings(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_cluster
    modify_cluster([::AWSConfig], arguments::Dict)
    modify_cluster([::AWSConfig]; ClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifyCluster", arguments::Dict)
    redshift([::AWSConfig], "ModifyCluster", ClusterIdentifier=, <keyword arguments>)

# ModifyCluster Operation

Modifies the settings for a cluster. For example, you can add another security or parameter group, update the preferred maintenance window, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the cluster to be modified.

Example: `examplecluster`


## `ClusterType = ::String`
The new cluster type.

When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use [DescribeResize](@ref) to track the progress of the resize request.

Valid Values: `multi-node | single-node`


## `NodeType = ::String`
The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter.

When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use [DescribeResize](@ref) to track the progress of the resize request.

Valid Values: `ds2.xlarge` | `ds2.8xlarge` | `dc1.large` | `dc1.8xlarge` | `dc2.large` | `dc2.8xlarge`


## `NumberOfNodes = ::Int`
The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter.

When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use [DescribeResize](@ref) to track the progress of the resize request.

Valid Values: Integer greater than `0`.


## `ClusterSecurityGroups = [::String, ...]`
A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible.

Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster.

Constraints:

*   Must be 1 to 255 alphanumeric characters or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens


## `VpcSecurityGroupIds = [::String, ...]`
A list of virtual private cloud (VPC) security groups to be associated with the cluster. This change is asynchronously applied as soon as possible.


## `MasterUserPassword = ::String`
The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the `MasterUserPassword` element exists in the `PendingModifiedValues` element of the operation response.

**Note**
> Operations never return the password, so this operation provides a way to regain access to the master user account for a cluster if the password is lost.

Default: Uses existing setting.

Constraints:

*   Must be between 8 and 64 characters in length.

*   Must contain at least one uppercase letter.

*   Must contain at least one lowercase letter.

*   Must contain one number.

*   Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \\, /, @, or space.


## `ClusterParameterGroupName = ::String`
The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use [RebootCluster](@ref).

Default: Uses existing setting.

Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.


## `AutomatedSnapshotRetentionPeriod = ::Int`
The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with [CreateClusterSnapshot](@ref).

If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted.

Default: Uses existing setting.

Constraints: Must be a value from 0 to 35.


## `PreferredMaintenanceWindow = ::String`
The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage.

This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied.

Default: Uses existing setting.

Format: ddd:hh24:mi-ddd:hh24:mi, for example `wed:07:30-wed:08:00`.

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes.


## `ClusterVersion = ::String`
The new version number of the Amazon Redshift engine to upgrade to.

For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to [Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html) in the *Amazon Redshift Cluster Management Guide*.

Example: `1.0`


## `AllowVersionUpgrade = ::Bool`
If `true`, major version upgrades will be applied automatically to the cluster during the maintenance window.

Default: `false`


## `HsmClientCertificateIdentifier = ::String`
Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.


## `HsmConfigurationIdentifier = ::String`
Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.


## `NewClusterIdentifier = ::String`
The new identifier for the cluster.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   Alphabetic characters must be lowercase.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

*   Must be unique for all clusters within an AWS account.

Example: `examplecluster`


## `PubliclyAccessible = ::Bool`
If `true`, the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.


## `ElasticIp = ::String`
The Elastic IP (EIP) address for the cluster.

Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to [Supported Platforms to Launch Your Cluster](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms) in the Amazon Redshift Cluster Management Guide.


## `EnhancedVpcRouting = ::Bool`
An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see [Enhanced VPC Routing](http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html) in the Amazon Redshift Cluster Management Guide.

If this option is `true`, enhanced VPC routing is enabled.

Default: false


## `MaintenanceTrackName = ::String`
The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the `PendingModifiedValues` for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.




# Returns

`ModifyClusterResult`

# Exceptions

`InvalidClusterStateFault`, `InvalidClusterSecurityGroupStateFault`, `ClusterNotFoundFault`, `NumberOfNodesQuotaExceededFault`, `NumberOfNodesPerClusterLimitExceededFault`, `ClusterSecurityGroupNotFoundFault`, `ClusterParameterGroupNotFoundFault`, `InsufficientClusterCapacityFault`, `UnsupportedOptionFault`, `UnauthorizedOperation`, `HsmClientCertificateNotFoundFault`, `HsmConfigurationNotFoundFault`, `ClusterAlreadyExistsFault`, `LimitExceededFault`, `DependentServiceRequestThrottlingFault`, `InvalidElasticIpFault`, `TableLimitExceededFault` or `InvalidClusterTrackFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyCluster)
"""
@inline modify_cluster(aws::AWSConfig=default_aws_config(); args...) = modify_cluster(aws, args)

@inline modify_cluster(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifyCluster", args)

@inline modify_cluster(args) = modify_cluster(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_cluster_db_revision
    modify_cluster_db_revision([::AWSConfig], arguments::Dict)
    modify_cluster_db_revision([::AWSConfig]; ClusterIdentifier=, RevisionTarget=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifyClusterDbRevision", arguments::Dict)
    redshift([::AWSConfig], "ModifyClusterDbRevision", ClusterIdentifier=, RevisionTarget=)

# ModifyClusterDbRevision Operation

Modifies the database revision of a cluster. The database revision is a unique revision of the database running in a cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of a cluster whose database revision you want to modify.

Example: `examplecluster`


## `RevisionTarget = ::String` -- *Required*
The identifier of the database revision. You can retrieve this value from the response to the [DescribeClusterDbRevisions](@ref) request.




# Returns

`ModifyClusterDbRevisionResult`

# Exceptions

`ClusterNotFoundFault`, `ClusterOnLatestRevisionFault` or `InvalidClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterDbRevision)
"""
@inline modify_cluster_db_revision(aws::AWSConfig=default_aws_config(); args...) = modify_cluster_db_revision(aws, args)

@inline modify_cluster_db_revision(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifyClusterDbRevision", args)

@inline modify_cluster_db_revision(args) = modify_cluster_db_revision(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_cluster_iam_roles
    modify_cluster_iam_roles([::AWSConfig], arguments::Dict)
    modify_cluster_iam_roles([::AWSConfig]; ClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifyClusterIamRoles", arguments::Dict)
    redshift([::AWSConfig], "ModifyClusterIamRoles", ClusterIdentifier=, <keyword arguments>)

# ModifyClusterIamRoles Operation

Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.

A cluster can have up to 10 IAM roles associated at any time.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the cluster for which you want to associate or disassociate IAM roles.


## `AddIamRoles = [::String, ...]`
Zero or more IAM roles to associate with the cluster. The roles must be in their Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single cluster in a single request.


## `RemoveIamRoles = [::String, ...]`
Zero or more IAM roles in ARN format to disassociate from the cluster. You can disassociate up to 10 IAM roles from a single cluster in a single request.




# Returns

`ModifyClusterIamRolesResult`

# Exceptions

`InvalidClusterStateFault` or `ClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterIamRoles)
"""
@inline modify_cluster_iam_roles(aws::AWSConfig=default_aws_config(); args...) = modify_cluster_iam_roles(aws, args)

@inline modify_cluster_iam_roles(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifyClusterIamRoles", args)

@inline modify_cluster_iam_roles(args) = modify_cluster_iam_roles(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_cluster_parameter_group
    modify_cluster_parameter_group([::AWSConfig], arguments::Dict)
    modify_cluster_parameter_group([::AWSConfig]; ParameterGroupName=, Parameters=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifyClusterParameterGroup", arguments::Dict)
    redshift([::AWSConfig], "ModifyClusterParameterGroup", ParameterGroupName=, Parameters=)

# ModifyClusterParameterGroup Operation

Modifies the parameters of a parameter group.

For more information about parameters and parameter groups, go to [Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the parameter group to be modified.


## `Parameters = [[ ... ], ...]` -- *Required*
An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.

For each parameter to be modified, you must supply at least the parameter name and parameter value; other name-value pairs of the parameter are optional.

For the workload management (WLM) configuration, you must supply all the name-value pairs in the wlm_json_configuration parameter.
```
 Parameters = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String,
        "Description" =>  ::String,
        "Source" =>  ::String,
        "DataType" =>  ::String,
        "AllowedValues" =>  ::String,
        "ApplyType" =>  "static" or "dynamic",
        "IsModifiable" =>  ::Bool,
        "MinimumEngineVersion" =>  ::String
    ], ...]
```



# Returns

`ClusterParameterGroupNameMessage`

# Exceptions

`ClusterParameterGroupNotFoundFault` or `InvalidClusterParameterGroupStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterParameterGroup)
"""
@inline modify_cluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = modify_cluster_parameter_group(aws, args)

@inline modify_cluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifyClusterParameterGroup", args)

@inline modify_cluster_parameter_group(args) = modify_cluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_cluster_subnet_group
    modify_cluster_subnet_group([::AWSConfig], arguments::Dict)
    modify_cluster_subnet_group([::AWSConfig]; ClusterSubnetGroupName=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifyClusterSubnetGroup", arguments::Dict)
    redshift([::AWSConfig], "ModifyClusterSubnetGroup", ClusterSubnetGroupName=, SubnetIds=, <keyword arguments>)

# ModifyClusterSubnetGroup Operation

Modifies a cluster subnet group to include the specified list of VPC subnets. The operation replaces the existing list of subnets with the new list of subnets.

# Arguments

## `ClusterSubnetGroupName = ::String` -- *Required*
The name of the subnet group to be modified.


## `Description = ::String`
A text description of the subnet group to be modified.


## `SubnetIds = [::String, ...]` -- *Required*
An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.




# Returns

`ModifyClusterSubnetGroupResult`

# Exceptions

`ClusterSubnetGroupNotFoundFault`, `ClusterSubnetQuotaExceededFault`, `SubnetAlreadyInUse`, `InvalidSubnet`, `UnauthorizedOperation` or `DependentServiceRequestThrottlingFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterSubnetGroup)
"""
@inline modify_cluster_subnet_group(aws::AWSConfig=default_aws_config(); args...) = modify_cluster_subnet_group(aws, args)

@inline modify_cluster_subnet_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifyClusterSubnetGroup", args)

@inline modify_cluster_subnet_group(args) = modify_cluster_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_event_subscription
    modify_event_subscription([::AWSConfig], arguments::Dict)
    modify_event_subscription([::AWSConfig]; SubscriptionName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifyEventSubscription", arguments::Dict)
    redshift([::AWSConfig], "ModifyEventSubscription", SubscriptionName=, <keyword arguments>)

# ModifyEventSubscription Operation

Modifies an existing Amazon Redshift event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the modified Amazon Redshift event notification subscription.


## `SnsTopicArn = ::String`
The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.


## `SourceType = ::String`
The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.

Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.


## `SourceIds = [::String, ...]`
A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.

Example: my-cluster-1, my-cluster-2

Example: my-snapshot-20131010


## `EventCategories = [::String, ...]`
Specifies the Amazon Redshift event categories to be published by the event notification subscription.

Values: Configuration, Management, Monitoring, Security


## `Severity = ::String`
Specifies the Amazon Redshift event severity to be published by the event notification subscription.

Values: ERROR, INFO


## `Enabled = ::Bool`
A Boolean value indicating if the subscription is enabled. `true` indicates the subscription is enabled




# Returns

`ModifyEventSubscriptionResult`

# Exceptions

`SubscriptionNotFoundFault`, `SNSInvalidTopicFault`, `SNSNoAuthorizationFault`, `SNSTopicArnNotFoundFault`, `SubscriptionEventIdNotFoundFault`, `SubscriptionCategoryNotFoundFault`, `SubscriptionSeverityNotFoundFault`, `SourceNotFoundFault` or `InvalidSubscriptionStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyEventSubscription)
"""
@inline modify_event_subscription(aws::AWSConfig=default_aws_config(); args...) = modify_event_subscription(aws, args)

@inline modify_event_subscription(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifyEventSubscription", args)

@inline modify_event_subscription(args) = modify_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.Redshift.modify_snapshot_copy_retention_period
    modify_snapshot_copy_retention_period([::AWSConfig], arguments::Dict)
    modify_snapshot_copy_retention_period([::AWSConfig]; ClusterIdentifier=, RetentionPeriod=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ModifySnapshotCopyRetentionPeriod", arguments::Dict)
    redshift([::AWSConfig], "ModifySnapshotCopyRetentionPeriod", ClusterIdentifier=, RetentionPeriod=)

# ModifySnapshotCopyRetentionPeriod Operation

Modifies the number of days to retain automated snapshots in the destination region after they are copied from the source region.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the cluster for which you want to change the retention period for automated snapshots that are copied to a destination region.

Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.


## `RetentionPeriod = ::Int` -- *Required*
The number of days to retain automated snapshots in the destination region after they are copied from the source region.

If you decrease the retention period for automated snapshots that are copied to a destination region, Amazon Redshift will delete any existing automated snapshots that were copied to the destination region and that fall outside of the new retention period.

Constraints: Must be at least 1 and no more than 35.




# Returns

`ModifySnapshotCopyRetentionPeriodResult`

# Exceptions

`ClusterNotFoundFault`, `SnapshotCopyDisabledFault`, `UnauthorizedOperation` or `InvalidClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifySnapshotCopyRetentionPeriod)
"""
@inline modify_snapshot_copy_retention_period(aws::AWSConfig=default_aws_config(); args...) = modify_snapshot_copy_retention_period(aws, args)

@inline modify_snapshot_copy_retention_period(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ModifySnapshotCopyRetentionPeriod", args)

@inline modify_snapshot_copy_retention_period(args) = modify_snapshot_copy_retention_period(default_aws_config(), args)


"""
    using AWSSDK.Redshift.purchase_reserved_node_offering
    purchase_reserved_node_offering([::AWSConfig], arguments::Dict)
    purchase_reserved_node_offering([::AWSConfig]; ReservedNodeOfferingId=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "PurchaseReservedNodeOffering", arguments::Dict)
    redshift([::AWSConfig], "PurchaseReservedNodeOffering", ReservedNodeOfferingId=, <keyword arguments>)

# PurchaseReservedNodeOffering Operation

Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of reserved node offerings. You can purchase one or more of the offerings. You can call the [DescribeReservedNodeOfferings](@ref) API to obtain the available reserved node offerings. You can call this API by providing a specific reserved node offering and the number of nodes you want to reserve.

For more information about reserved node offerings, go to [Purchasing Reserved Nodes](http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ReservedNodeOfferingId = ::String` -- *Required*
The unique identifier of the reserved node offering you want to purchase.


## `NodeCount = ::Int`
The number of reserved nodes that you want to purchase.

Default: `1`




# Returns

`PurchaseReservedNodeOfferingResult`

# Exceptions

`ReservedNodeOfferingNotFoundFault`, `ReservedNodeAlreadyExistsFault`, `ReservedNodeQuotaExceededFault` or `UnsupportedOperationFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/PurchaseReservedNodeOffering)
"""
@inline purchase_reserved_node_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_reserved_node_offering(aws, args)

@inline purchase_reserved_node_offering(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "PurchaseReservedNodeOffering", args)

@inline purchase_reserved_node_offering(args) = purchase_reserved_node_offering(default_aws_config(), args)


"""
    using AWSSDK.Redshift.reboot_cluster
    reboot_cluster([::AWSConfig], arguments::Dict)
    reboot_cluster([::AWSConfig]; ClusterIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "RebootCluster", arguments::Dict)
    redshift([::AWSConfig], "RebootCluster", ClusterIdentifier=)

# RebootCluster Operation

Reboots a cluster. This action is taken as soon as possible. It results in a momentary outage to the cluster, during which the cluster status is set to `rebooting`. A cluster event is created when the reboot is completed. Any pending cluster modifications (see [ModifyCluster](@ref)) are applied at this reboot. For more information about managing clusters, go to [Amazon Redshift Clusters](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The cluster identifier.




# Returns

`RebootClusterResult`

# Exceptions

`InvalidClusterStateFault` or `ClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RebootCluster)
"""
@inline reboot_cluster(aws::AWSConfig=default_aws_config(); args...) = reboot_cluster(aws, args)

@inline reboot_cluster(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "RebootCluster", args)

@inline reboot_cluster(args) = reboot_cluster(default_aws_config(), args)


"""
    using AWSSDK.Redshift.reset_cluster_parameter_group
    reset_cluster_parameter_group([::AWSConfig], arguments::Dict)
    reset_cluster_parameter_group([::AWSConfig]; ParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "ResetClusterParameterGroup", arguments::Dict)
    redshift([::AWSConfig], "ResetClusterParameterGroup", ParameterGroupName=, <keyword arguments>)

# ResetClusterParameterGroup Operation

Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default". To reset the entire parameter group specify the *ResetAllParameters* parameter. For parameter changes to take effect you must reboot any associated clusters.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the cluster parameter group to be reset.


## `ResetAllParameters = ::Bool`
If `true`, all parameters in the specified parameter group will be reset to their default values.

Default: `true`


## `Parameters = [[ ... ], ...]`
An array of names of parameters to be reset. If *ResetAllParameters* option is not used, then at least one parameter name must be supplied.

Constraints: A maximum of 20 parameters can be reset in a single request.
```
 Parameters = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String,
        "Description" =>  ::String,
        "Source" =>  ::String,
        "DataType" =>  ::String,
        "AllowedValues" =>  ::String,
        "ApplyType" =>  "static" or "dynamic",
        "IsModifiable" =>  ::Bool,
        "MinimumEngineVersion" =>  ::String
    ], ...]
```



# Returns

`ClusterParameterGroupNameMessage`

# Exceptions

`InvalidClusterParameterGroupStateFault` or `ClusterParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResetClusterParameterGroup)
"""
@inline reset_cluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = reset_cluster_parameter_group(aws, args)

@inline reset_cluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "ResetClusterParameterGroup", args)

@inline reset_cluster_parameter_group(args) = reset_cluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Redshift.restore_from_cluster_snapshot
    restore_from_cluster_snapshot([::AWSConfig], arguments::Dict)
    restore_from_cluster_snapshot([::AWSConfig]; ClusterIdentifier=, SnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "RestoreFromClusterSnapshot", arguments::Dict)
    redshift([::AWSConfig], "RestoreFromClusterSnapshot", ClusterIdentifier=, SnapshotIdentifier=, <keyword arguments>)

# RestoreFromClusterSnapshot Operation

Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the [ModifyCluster](@ref) API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore.

If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.

For more information about working with snapshots, go to [Amazon Redshift Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The identifier of the cluster that will be created from restoring the snapshot.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   Alphabetic characters must be lowercase.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

*   Must be unique for all clusters within an AWS account.


## `SnapshotIdentifier = ::String` -- *Required*
The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.

Example: `my-snapshot-id`


## `SnapshotClusterIdentifier = ::String`
The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.


## `Port = ::Int`
The port number on which the cluster accepts connections.

Default: The same port as the original cluster.

Constraints: Must be between `1115` and `65535`.


## `AvailabilityZone = ::String`
The Amazon EC2 Availability Zone in which to restore the cluster.

Default: A random, system-chosen Availability Zone.

Example: `us-east-1a`


## `AllowVersionUpgrade = ::Bool`
If `true`, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.

Default: `true`


## `ClusterSubnetGroupName = ::String`
The name of the subnet group where you want to cluster restored.

A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.


## `PubliclyAccessible = ::Bool`
If `true`, the cluster can be accessed from a public network.


## `OwnerAccount = ::String`
The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.


## `HsmClientCertificateIdentifier = ::String`
Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.


## `HsmConfigurationIdentifier = ::String`
Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.


## `ElasticIp = ::String`
The elastic IP (EIP) address for the cluster.


## `ClusterParameterGroupName = ::String`
The name of the parameter group to be associated with this cluster.

Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to [Working with Amazon Redshift Parameter Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html).

Constraints:

*   Must be 1 to 255 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `ClusterSecurityGroups = [::String, ...]`
A list of security groups to be associated with this cluster.

Default: The default cluster security group for Amazon Redshift.

Cluster security groups only apply to clusters outside of VPCs.


## `VpcSecurityGroupIds = [::String, ...]`
A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.

Default: The default VPC security group is associated with the cluster.

VPC security groups only apply to clusters in VPCs.


## `PreferredMaintenanceWindow = ::String`
The weekly time range (in UTC) during which automated cluster maintenance can occur.

Format: `ddd:hh24:mi-ddd:hh24:mi`

Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see [Maintenance Windows](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows) in Amazon Redshift Cluster Management Guide.

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Minimum 30-minute window.


## `AutomatedSnapshotRetentionPeriod = ::Int`
The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with [CreateClusterSnapshot](@ref).

Default: The value selected for the cluster from which the snapshot was taken.

Constraints: Must be a value from 0 to 35.


## `KmsKeyId = ::String`
The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.


## `NodeType = ::String`
The node type that the restored cluster will be provisioned with.

Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type or dc2.large instance type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlareg cluster, then resize to a dc2.8large cluster. For more information about node types, see [About Clusters and Nodes](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes) in the *Amazon Redshift Cluster Management Guide*.


## `EnhancedVpcRouting = ::Bool`
An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see [Enhanced VPC Routing](http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html) in the Amazon Redshift Cluster Management Guide.

If this option is `true`, enhanced VPC routing is enabled.

Default: false


## `AdditionalInfo = ::String`
Reserved.


## `IamRoles = [::String, ...]`
A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.

A cluster can have up to 10 IAM roles associated at any time.


## `MaintenanceTrackName = ::String`
The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the `MaintenanceTrack` value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks.




# Returns

`RestoreFromClusterSnapshotResult`

# Exceptions

`AccessToSnapshotDeniedFault`, `ClusterAlreadyExistsFault`, `ClusterSnapshotNotFoundFault`, `ClusterQuotaExceededFault`, `InsufficientClusterCapacityFault`, `InvalidClusterSnapshotStateFault`, `InvalidRestoreFault`, `NumberOfNodesQuotaExceededFault`, `NumberOfNodesPerClusterLimitExceededFault`, `InvalidVPCNetworkStateFault`, `InvalidClusterSubnetGroupStateFault`, `InvalidSubnet`, `ClusterSubnetGroupNotFoundFault`, `UnauthorizedOperation`, `HsmClientCertificateNotFoundFault`, `HsmConfigurationNotFoundFault`, `InvalidElasticIpFault`, `ClusterParameterGroupNotFoundFault`, `ClusterSecurityGroupNotFoundFault`, `LimitExceededFault`, `DependentServiceRequestThrottlingFault` or `InvalidClusterTrackFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreFromClusterSnapshot)
"""
@inline restore_from_cluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = restore_from_cluster_snapshot(aws, args)

@inline restore_from_cluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "RestoreFromClusterSnapshot", args)

@inline restore_from_cluster_snapshot(args) = restore_from_cluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Redshift.restore_table_from_cluster_snapshot
    restore_table_from_cluster_snapshot([::AWSConfig], arguments::Dict)
    restore_table_from_cluster_snapshot([::AWSConfig]; ClusterIdentifier=, SnapshotIdentifier=, SourceDatabaseName=, SourceTableName=, NewTableName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "RestoreTableFromClusterSnapshot", arguments::Dict)
    redshift([::AWSConfig], "RestoreTableFromClusterSnapshot", ClusterIdentifier=, SnapshotIdentifier=, SourceDatabaseName=, SourceTableName=, NewTableName=, <keyword arguments>)

# RestoreTableFromClusterSnapshot Operation

Creates a new table from a table in an Amazon Redshift cluster snapshot. You must create the new table within the Amazon Redshift cluster that the snapshot was taken from.

You cannot use `RestoreTableFromClusterSnapshot` to restore a table with the same name as an existing table in an Amazon Redshift cluster. That is, you cannot overwrite an existing table in a cluster with a restored table. If you want to replace your original table with a new, restored table, then rename or drop your original table before you call `RestoreTableFromClusterSnapshot`. When you have renamed your original table, then you can pass the original name of the table as the `NewTableName` parameter value in the call to `RestoreTableFromClusterSnapshot`. This way, you can replace the original table with the table created from the snapshot.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The identifier of the Amazon Redshift cluster to restore the table to.


## `SnapshotIdentifier = ::String` -- *Required*
The identifier of the snapshot to restore the table from. This snapshot must have been created from the Amazon Redshift cluster specified by the `ClusterIdentifier` parameter.


## `SourceDatabaseName = ::String` -- *Required*
The name of the source database that contains the table to restore from.


## `SourceSchemaName = ::String`
The name of the source schema that contains the table to restore from. If you do not specify a `SourceSchemaName` value, the default is `public`.


## `SourceTableName = ::String` -- *Required*
The name of the source table to restore from.


## `TargetDatabaseName = ::String`
The name of the database to restore the table to.


## `TargetSchemaName = ::String`
The name of the schema to restore the table to.


## `NewTableName = ::String` -- *Required*
The name of the table to create as a result of the current request.




# Returns

`RestoreTableFromClusterSnapshotResult`

# Exceptions

`ClusterSnapshotNotFoundFault`, `InProgressTableRestoreQuotaExceededFault`, `InvalidClusterSnapshotStateFault`, `InvalidTableRestoreArgumentFault`, `ClusterNotFoundFault`, `InvalidClusterStateFault` or `UnsupportedOperationFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreTableFromClusterSnapshot)
"""
@inline restore_table_from_cluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = restore_table_from_cluster_snapshot(aws, args)

@inline restore_table_from_cluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "RestoreTableFromClusterSnapshot", args)

@inline restore_table_from_cluster_snapshot(args) = restore_table_from_cluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Redshift.revoke_cluster_security_group_ingress
    revoke_cluster_security_group_ingress([::AWSConfig], arguments::Dict)
    revoke_cluster_security_group_ingress([::AWSConfig]; ClusterSecurityGroupName=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "RevokeClusterSecurityGroupIngress", arguments::Dict)
    redshift([::AWSConfig], "RevokeClusterSecurityGroupIngress", ClusterSecurityGroupName=, <keyword arguments>)

# RevokeClusterSecurityGroupIngress Operation

Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see [AuthorizeClusterSecurityGroupIngress](@ref). For information about managing security groups, go to [Amazon Redshift Cluster Security Groups](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `ClusterSecurityGroupName = ::String` -- *Required*
The name of the security Group from which to revoke the ingress rule.


## `CIDRIP = ::String`
The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If `CIDRIP` is specified, `EC2SecurityGroupName` and `EC2SecurityGroupOwnerId` cannot be provided.


## `EC2SecurityGroupName = ::String`
The name of the EC2 Security Group whose access is to be revoked. If `EC2SecurityGroupName` is specified, `EC2SecurityGroupOwnerId` must also be provided and `CIDRIP` cannot be provided.


## `EC2SecurityGroupOwnerId = ::String`
The AWS account number of the owner of the security group specified in the `EC2SecurityGroupName` parameter. The AWS access key ID is not an acceptable value. If `EC2SecurityGroupOwnerId` is specified, `EC2SecurityGroupName` must also be provided. and `CIDRIP` cannot be provided.

Example: `111122223333`




# Returns

`RevokeClusterSecurityGroupIngressResult`

# Exceptions

`ClusterSecurityGroupNotFoundFault`, `AuthorizationNotFoundFault` or `InvalidClusterSecurityGroupStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeClusterSecurityGroupIngress)
"""
@inline revoke_cluster_security_group_ingress(aws::AWSConfig=default_aws_config(); args...) = revoke_cluster_security_group_ingress(aws, args)

@inline revoke_cluster_security_group_ingress(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "RevokeClusterSecurityGroupIngress", args)

@inline revoke_cluster_security_group_ingress(args) = revoke_cluster_security_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.Redshift.revoke_snapshot_access
    revoke_snapshot_access([::AWSConfig], arguments::Dict)
    revoke_snapshot_access([::AWSConfig]; SnapshotIdentifier=, AccountWithRestoreAccess=, <keyword arguments>)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "RevokeSnapshotAccess", arguments::Dict)
    redshift([::AWSConfig], "RevokeSnapshotAccess", SnapshotIdentifier=, AccountWithRestoreAccess=, <keyword arguments>)

# RevokeSnapshotAccess Operation

Removes the ability of the specified AWS customer account to restore the specified snapshot. If the account is currently restoring the snapshot, the restore will run to completion.

For more information about working with snapshots, go to [Amazon Redshift Snapshots](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html) in the *Amazon Redshift Cluster Management Guide*.

# Arguments

## `SnapshotIdentifier = ::String` -- *Required*
The identifier of the snapshot that the account can no longer access.


## `SnapshotClusterIdentifier = ::String`
The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.


## `AccountWithRestoreAccess = ::String` -- *Required*
The identifier of the AWS customer account that can no longer restore the specified snapshot.




# Returns

`RevokeSnapshotAccessResult`

# Exceptions

`AccessToSnapshotDeniedFault`, `AuthorizationNotFoundFault` or `ClusterSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeSnapshotAccess)
"""
@inline revoke_snapshot_access(aws::AWSConfig=default_aws_config(); args...) = revoke_snapshot_access(aws, args)

@inline revoke_snapshot_access(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "RevokeSnapshotAccess", args)

@inline revoke_snapshot_access(args) = revoke_snapshot_access(default_aws_config(), args)


"""
    using AWSSDK.Redshift.rotate_encryption_key
    rotate_encryption_key([::AWSConfig], arguments::Dict)
    rotate_encryption_key([::AWSConfig]; ClusterIdentifier=)

    using AWSCore.Services.redshift
    redshift([::AWSConfig], "RotateEncryptionKey", arguments::Dict)
    redshift([::AWSConfig], "RotateEncryptionKey", ClusterIdentifier=)

# RotateEncryptionKey Operation

Rotates the encryption keys for a cluster.

# Arguments

## `ClusterIdentifier = ::String` -- *Required*
The unique identifier of the cluster that you want to rotate the encryption keys for.

Constraints: Must be the name of valid cluster that has encryption enabled.




# Returns

`RotateEncryptionKeyResult`

# Exceptions

`ClusterNotFoundFault`, `InvalidClusterStateFault` or `DependentServiceRequestThrottlingFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RotateEncryptionKey)
"""
@inline rotate_encryption_key(aws::AWSConfig=default_aws_config(); args...) = rotate_encryption_key(aws, args)

@inline rotate_encryption_key(aws::AWSConfig, args) = AWSCore.Services.redshift(aws, "RotateEncryptionKey", args)

@inline rotate_encryption_key(args) = rotate_encryption_key(default_aws_config(), args)




end # module Redshift


#==============================================================================#
# End of file
#==============================================================================#
