%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Redshift
%%
%% Overview
%%
%% This is an interface reference for Amazon Redshift.
%%
%% It contains documentation for one of the programming or command line
%% interfaces you can use to manage Amazon Redshift clusters. Note that
%% Amazon Redshift is asynchronous, which means that some interfaces may
%% require techniques, such as polling or asynchronous callback handlers, to
%% determine when a command has been applied. In this reference, the
%% parameter descriptions indicate whether a change is applied immediately,
%% on the next instance reboot, or during the next maintenance window. For a
%% summary of the Amazon Redshift cluster management interfaces, go to Using
%% the Amazon Redshift Management Interfaces.
%%
%% Amazon Redshift manages all the work of setting up, operating, and scaling
%% a data warehouse: provisioning capacity, monitoring and backing up the
%% cluster, and applying patches and upgrades to the Amazon Redshift engine.
%% You can focus on using your data to acquire new insights for your business
%% and customers.
%%
%% If you are a first-time user of Amazon Redshift, we recommend that you
%% begin by reading the Amazon Redshift Getting Started Guide.
%%
%% If you are a database developer, the Amazon Redshift Database Developer
%% Guide explains how to design, build, query, and maintain the databases
%% that make up your data warehouse.
-module(aws_redshift).

-export([accept_reserved_node_exchange/2,
         accept_reserved_node_exchange/3,
         add_partner/2,
         add_partner/3,
         associate_data_share_consumer/2,
         associate_data_share_consumer/3,
         authorize_cluster_security_group_ingress/2,
         authorize_cluster_security_group_ingress/3,
         authorize_data_share/2,
         authorize_data_share/3,
         authorize_endpoint_access/2,
         authorize_endpoint_access/3,
         authorize_snapshot_access/2,
         authorize_snapshot_access/3,
         batch_delete_cluster_snapshots/2,
         batch_delete_cluster_snapshots/3,
         batch_modify_cluster_snapshots/2,
         batch_modify_cluster_snapshots/3,
         cancel_resize/2,
         cancel_resize/3,
         copy_cluster_snapshot/2,
         copy_cluster_snapshot/3,
         create_authentication_profile/2,
         create_authentication_profile/3,
         create_cluster/2,
         create_cluster/3,
         create_cluster_parameter_group/2,
         create_cluster_parameter_group/3,
         create_cluster_security_group/2,
         create_cluster_security_group/3,
         create_cluster_snapshot/2,
         create_cluster_snapshot/3,
         create_cluster_subnet_group/2,
         create_cluster_subnet_group/3,
         create_endpoint_access/2,
         create_endpoint_access/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_hsm_client_certificate/2,
         create_hsm_client_certificate/3,
         create_hsm_configuration/2,
         create_hsm_configuration/3,
         create_scheduled_action/2,
         create_scheduled_action/3,
         create_snapshot_copy_grant/2,
         create_snapshot_copy_grant/3,
         create_snapshot_schedule/2,
         create_snapshot_schedule/3,
         create_tags/2,
         create_tags/3,
         create_usage_limit/2,
         create_usage_limit/3,
         deauthorize_data_share/2,
         deauthorize_data_share/3,
         delete_authentication_profile/2,
         delete_authentication_profile/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_cluster_parameter_group/2,
         delete_cluster_parameter_group/3,
         delete_cluster_security_group/2,
         delete_cluster_security_group/3,
         delete_cluster_snapshot/2,
         delete_cluster_snapshot/3,
         delete_cluster_subnet_group/2,
         delete_cluster_subnet_group/3,
         delete_endpoint_access/2,
         delete_endpoint_access/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_hsm_client_certificate/2,
         delete_hsm_client_certificate/3,
         delete_hsm_configuration/2,
         delete_hsm_configuration/3,
         delete_partner/2,
         delete_partner/3,
         delete_scheduled_action/2,
         delete_scheduled_action/3,
         delete_snapshot_copy_grant/2,
         delete_snapshot_copy_grant/3,
         delete_snapshot_schedule/2,
         delete_snapshot_schedule/3,
         delete_tags/2,
         delete_tags/3,
         delete_usage_limit/2,
         delete_usage_limit/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_authentication_profiles/2,
         describe_authentication_profiles/3,
         describe_cluster_db_revisions/2,
         describe_cluster_db_revisions/3,
         describe_cluster_parameter_groups/2,
         describe_cluster_parameter_groups/3,
         describe_cluster_parameters/2,
         describe_cluster_parameters/3,
         describe_cluster_security_groups/2,
         describe_cluster_security_groups/3,
         describe_cluster_snapshots/2,
         describe_cluster_snapshots/3,
         describe_cluster_subnet_groups/2,
         describe_cluster_subnet_groups/3,
         describe_cluster_tracks/2,
         describe_cluster_tracks/3,
         describe_cluster_versions/2,
         describe_cluster_versions/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_data_shares/2,
         describe_data_shares/3,
         describe_data_shares_for_consumer/2,
         describe_data_shares_for_consumer/3,
         describe_data_shares_for_producer/2,
         describe_data_shares_for_producer/3,
         describe_default_cluster_parameters/2,
         describe_default_cluster_parameters/3,
         describe_endpoint_access/2,
         describe_endpoint_access/3,
         describe_endpoint_authorization/2,
         describe_endpoint_authorization/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_hsm_client_certificates/2,
         describe_hsm_client_certificates/3,
         describe_hsm_configurations/2,
         describe_hsm_configurations/3,
         describe_logging_status/2,
         describe_logging_status/3,
         describe_node_configuration_options/2,
         describe_node_configuration_options/3,
         describe_orderable_cluster_options/2,
         describe_orderable_cluster_options/3,
         describe_partners/2,
         describe_partners/3,
         describe_reserved_node_exchange_status/2,
         describe_reserved_node_exchange_status/3,
         describe_reserved_node_offerings/2,
         describe_reserved_node_offerings/3,
         describe_reserved_nodes/2,
         describe_reserved_nodes/3,
         describe_resize/2,
         describe_resize/3,
         describe_scheduled_actions/2,
         describe_scheduled_actions/3,
         describe_snapshot_copy_grants/2,
         describe_snapshot_copy_grants/3,
         describe_snapshot_schedules/2,
         describe_snapshot_schedules/3,
         describe_storage/2,
         describe_storage/3,
         describe_table_restore_status/2,
         describe_table_restore_status/3,
         describe_tags/2,
         describe_tags/3,
         describe_usage_limits/2,
         describe_usage_limits/3,
         disable_logging/2,
         disable_logging/3,
         disable_snapshot_copy/2,
         disable_snapshot_copy/3,
         disassociate_data_share_consumer/2,
         disassociate_data_share_consumer/3,
         enable_logging/2,
         enable_logging/3,
         enable_snapshot_copy/2,
         enable_snapshot_copy/3,
         get_cluster_credentials/2,
         get_cluster_credentials/3,
         get_cluster_credentials_with_iam/2,
         get_cluster_credentials_with_iam/3,
         get_reserved_node_exchange_configuration_options/2,
         get_reserved_node_exchange_configuration_options/3,
         get_reserved_node_exchange_offerings/2,
         get_reserved_node_exchange_offerings/3,
         modify_aqua_configuration/2,
         modify_aqua_configuration/3,
         modify_authentication_profile/2,
         modify_authentication_profile/3,
         modify_cluster/2,
         modify_cluster/3,
         modify_cluster_db_revision/2,
         modify_cluster_db_revision/3,
         modify_cluster_iam_roles/2,
         modify_cluster_iam_roles/3,
         modify_cluster_maintenance/2,
         modify_cluster_maintenance/3,
         modify_cluster_parameter_group/2,
         modify_cluster_parameter_group/3,
         modify_cluster_snapshot/2,
         modify_cluster_snapshot/3,
         modify_cluster_snapshot_schedule/2,
         modify_cluster_snapshot_schedule/3,
         modify_cluster_subnet_group/2,
         modify_cluster_subnet_group/3,
         modify_endpoint_access/2,
         modify_endpoint_access/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_scheduled_action/2,
         modify_scheduled_action/3,
         modify_snapshot_copy_retention_period/2,
         modify_snapshot_copy_retention_period/3,
         modify_snapshot_schedule/2,
         modify_snapshot_schedule/3,
         modify_usage_limit/2,
         modify_usage_limit/3,
         pause_cluster/2,
         pause_cluster/3,
         purchase_reserved_node_offering/2,
         purchase_reserved_node_offering/3,
         reboot_cluster/2,
         reboot_cluster/3,
         reject_data_share/2,
         reject_data_share/3,
         reset_cluster_parameter_group/2,
         reset_cluster_parameter_group/3,
         resize_cluster/2,
         resize_cluster/3,
         restore_from_cluster_snapshot/2,
         restore_from_cluster_snapshot/3,
         restore_table_from_cluster_snapshot/2,
         restore_table_from_cluster_snapshot/3,
         resume_cluster/2,
         resume_cluster/3,
         revoke_cluster_security_group_ingress/2,
         revoke_cluster_security_group_ingress/3,
         revoke_endpoint_access/2,
         revoke_endpoint_access/3,
         revoke_snapshot_access/2,
         revoke_snapshot_access/3,
         rotate_encryption_key/2,
         rotate_encryption_key/3,
         update_partner_status/2,
         update_partner_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes
%% to the configuration (term, payment type, or number of nodes) and no
%% additional costs.
accept_reserved_node_exchange(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_reserved_node_exchange(Client, Input, []).
accept_reserved_node_exchange(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptReservedNodeExchange">>, Input, Options).

%% @doc Adds a partner integration to a cluster.
%%
%% This operation authorizes a partner to push status updates for the
%% specified database. To complete the integration, you also set up the
%% integration on the partner website.
add_partner(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_partner(Client, Input, []).
add_partner(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPartner">>, Input, Options).

%% @doc From a datashare consumer account, associates a datashare with the
%% account (AssociateEntireAccount) or the specified namespace (ConsumerArn).
%%
%% If you make this association, the consumer can consume the datashare.
associate_data_share_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_data_share_consumer(Client, Input, []).
associate_data_share_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDataShareConsumer">>, Input, Options).

%% @doc Adds an inbound (ingress) rule to an Amazon Redshift security group.
%%
%% Depending on whether the application accessing your cluster is running on
%% the Internet or an Amazon EC2 instance, you can authorize inbound access
%% to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP)
%% range or to an Amazon EC2 security group. You can add as many as 20
%% ingress rules to an Amazon Redshift security group.
%%
%% If you authorize access to an Amazon EC2 security group, specify
%% EC2SecurityGroupName and EC2SecurityGroupOwnerId. The Amazon EC2 security
%% group and Amazon Redshift cluster must be in the same Amazon Web Services
%% Region.
%%
%% If you authorize access to a CIDR/IP address range, specify CIDRIP. For an
%% overview of CIDR blocks, see the Wikipedia article on Classless
%% Inter-Domain Routing.
%%
%% You must also associate the security group with a cluster so that clients
%% running on these IP addresses or the EC2 instance are authorized to
%% connect to the cluster. For information about managing security groups, go
%% to Working with Security Groups in the Amazon Redshift Cluster Management
%% Guide.
authorize_cluster_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_cluster_security_group_ingress(Client, Input, []).
authorize_cluster_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeClusterSecurityGroupIngress">>, Input, Options).

%% @doc From a data producer account, authorizes the sharing of a datashare
%% with one or more consumer accounts or managing entities.
%%
%% To authorize a datashare for a data consumer, the producer account must
%% have the correct access permissions.
authorize_data_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_data_share(Client, Input, []).
authorize_data_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeDataShare">>, Input, Options).

%% @doc Grants access to a cluster.
authorize_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_endpoint_access(Client, Input, []).
authorize_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeEndpointAccess">>, Input, Options).

%% @doc Authorizes the specified Amazon Web Services account to restore the
%% specified snapshot.
%%
%% For more information about working with snapshots, go to Amazon Redshift
%% Snapshots in the Amazon Redshift Cluster Management Guide.
authorize_snapshot_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_snapshot_access(Client, Input, []).
authorize_snapshot_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeSnapshotAccess">>, Input, Options).

%% @doc Deletes a set of cluster snapshots.
batch_delete_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_cluster_snapshots(Client, Input, []).
batch_delete_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteClusterSnapshots">>, Input, Options).

%% @doc Modifies the settings for a set of cluster snapshots.
batch_modify_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_modify_cluster_snapshots(Client, Input, []).
batch_modify_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchModifyClusterSnapshots">>, Input, Options).

%% @doc Cancels a resize operation for a cluster.
cancel_resize(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_resize(Client, Input, []).
cancel_resize(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelResize">>, Input, Options).

%% @doc Copies the specified automated cluster snapshot to a new manual
%% cluster snapshot.
%%
%% The source must be an automated snapshot and it must be in the available
%% state.
%%
%% When you delete a cluster, Amazon Redshift deletes any automated snapshots
%% of the cluster. Also, when the retention period of the snapshot expires,
%% Amazon Redshift automatically deletes it. If you want to keep an automated
%% snapshot for a longer period, you can make a manual copy of the snapshot.
%% Manual snapshots are retained until you delete them.
%%
%% For more information about working with snapshots, go to Amazon Redshift
%% Snapshots in the Amazon Redshift Cluster Management Guide.
copy_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_cluster_snapshot(Client, Input, []).
copy_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyClusterSnapshot">>, Input, Options).

%% @doc Creates an authentication profile with the specified parameters.
create_authentication_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_authentication_profile(Client, Input, []).
create_authentication_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAuthenticationProfile">>, Input, Options).

%% @doc Creates a new cluster with the specified parameters.
%%
%% To create a cluster in Virtual Private Cloud (VPC), you must provide a
%% cluster subnet group name. The cluster subnet group identifies the subnets
%% of your VPC that Amazon Redshift uses when creating the cluster. For more
%% information about managing clusters, go to Amazon Redshift Clusters in the
%% Amazon Redshift Cluster Management Guide.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates an Amazon Redshift parameter group.
%%
%% Creating parameter groups is independent of creating clusters. You can
%% associate a cluster with a parameter group when you create the cluster.
%% You can also associate an existing cluster with a parameter group after
%% the cluster is created by using `ModifyCluster'.
%%
%% Parameters in the parameter group define specific behavior that applies to
%% the databases you create on the cluster. For more information about
%% parameters and parameter groups, go to Amazon Redshift Parameter Groups in
%% the Amazon Redshift Cluster Management Guide.
create_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_parameter_group(Client, Input, []).
create_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterParameterGroup">>, Input, Options).

%% @doc Creates a new Amazon Redshift security group.
%%
%% You use security groups to control access to non-VPC clusters.
%%
%% For information about managing security groups, go to Amazon Redshift
%% Cluster Security Groups in the Amazon Redshift Cluster Management Guide.
create_cluster_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_security_group(Client, Input, []).
create_cluster_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSecurityGroup">>, Input, Options).

%% @doc Creates a manual snapshot of the specified cluster.
%%
%% The cluster must be in the `available' state.
%%
%% For more information about working with snapshots, go to Amazon Redshift
%% Snapshots in the Amazon Redshift Cluster Management Guide.
create_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_snapshot(Client, Input, []).
create_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSnapshot">>, Input, Options).

%% @doc Creates a new Amazon Redshift subnet group.
%%
%% You must provide a list of one or more subnets in your existing Amazon
%% Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet
%% group.
%%
%% For information about subnet groups, go to Amazon Redshift Cluster Subnet
%% Groups in the Amazon Redshift Cluster Management Guide.
create_cluster_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_subnet_group(Client, Input, []).
create_cluster_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSubnetGroup">>, Input, Options).

%% @doc Creates a Redshift-managed VPC endpoint.
create_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_access(Client, Input, []).
create_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointAccess">>, Input, Options).

%% @doc Creates an Amazon Redshift event notification subscription.
%%
%% This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic
%% created by either the Amazon Redshift console, the Amazon SNS console, or
%% the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a
%% topic in Amazon SNS and subscribe to the topic. The ARN is displayed in
%% the SNS console.
%%
%% You can specify the source type, and lists of Amazon Redshift source IDs,
%% event categories, and event severities. Notifications will be sent for all
%% events you want that match those criteria. For example, you can specify
%% source type = cluster, source ID = my-cluster-1 and mycluster2, event
%% categories = Availability, Backup, and severity = ERROR. The subscription
%% will only send notifications for those ERROR events in the Availability
%% and Backup categories for the specified clusters.
%%
%% If you specify both the source type and source IDs, such as source type =
%% cluster and source identifier = my-cluster-1, notifications will be sent
%% for all the cluster events for my-cluster-1. If you specify a source type
%% but do not specify a source identifier, you will receive notice of the
%% events for the objects of that type in your Amazon Web Services account.
%% If you do not specify either the SourceType nor the SourceIdentifier, you
%% will be notified of events generated from all Amazon Redshift sources
%% belonging to your Amazon Web Services account. You must specify a source
%% type if you specify a source ID.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates an HSM client certificate that an Amazon Redshift cluster
%% will use to connect to the client's HSM in order to store and retrieve the
%% keys used to encrypt the cluster databases.
%%
%% The command returns a public key, which you must store in the HSM. In
%% addition to creating the HSM certificate, you must create an Amazon
%% Redshift HSM configuration that provides a cluster the information needed
%% to store and use encryption keys in the HSM. For more information, go to
%% Hardware Security Modules in the Amazon Redshift Cluster Management Guide.
create_hsm_client_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm_client_certificate(Client, Input, []).
create_hsm_client_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsmClientCertificate">>, Input, Options).

%% @doc Creates an HSM configuration that contains the information required
%% by an Amazon Redshift cluster to store and use database encryption keys in
%% a Hardware Security Module (HSM).
%%
%% After creating the HSM configuration, you can specify it as a parameter
%% when creating a cluster. The cluster will then store its encryption keys
%% in the HSM.
%%
%% In addition to creating an HSM configuration, you must also create an HSM
%% client certificate. For more information, go to Hardware Security Modules
%% in the Amazon Redshift Cluster Management Guide.
create_hsm_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm_configuration(Client, Input, []).
create_hsm_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsmConfiguration">>, Input, Options).

%% @doc Creates a scheduled action.
%%
%% A scheduled action contains a schedule and an Amazon Redshift API action.
%% For example, you can create a schedule of when to run the `ResizeCluster'
%% API operation.
create_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_action(Client, Input, []).
create_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledAction">>, Input, Options).

%% @doc Creates a snapshot copy grant that permits Amazon Redshift to use an
%% encrypted symmetric key from Key Management Service (KMS) to encrypt
%% copied snapshots in a destination region.
%%
%% For more information about managing snapshot copy grants, go to Amazon
%% Redshift Database Encryption in the Amazon Redshift Cluster Management
%% Guide.
create_snapshot_copy_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_copy_grant(Client, Input, []).
create_snapshot_copy_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotCopyGrant">>, Input, Options).

%% @doc Create a snapshot schedule that can be associated to a cluster and
%% which overrides the default system backup schedule.
create_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_schedule(Client, Input, []).
create_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotSchedule">>, Input, Options).

%% @doc Adds tags to a cluster.
%%
%% A resource can have up to 50 tags. If you try to create more than 50 tags
%% for a resource, you will receive an error and the attempt will fail.
%%
%% If you specify a key that already exists for the resource, the value for
%% that key will be updated with the new value.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Creates a usage limit for a specified Amazon Redshift feature on a
%% cluster.
%%
%% The usage limit is identified by the returned usage limit identifier.
create_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_limit(Client, Input, []).
create_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageLimit">>, Input, Options).

%% @doc From a datashare producer account, removes authorization from the
%% specified datashare.
deauthorize_data_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    deauthorize_data_share(Client, Input, []).
deauthorize_data_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeauthorizeDataShare">>, Input, Options).

%% @doc Deletes an authentication profile.
delete_authentication_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_authentication_profile(Client, Input, []).
delete_authentication_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAuthenticationProfile">>, Input, Options).

%% @doc Deletes a previously provisioned cluster without its final snapshot
%% being created.
%%
%% A successful response from the web service indicates that the request was
%% received correctly. Use `DescribeClusters' to monitor the status of the
%% deletion. The delete operation cannot be canceled or reverted once
%% submitted. For more information about managing clusters, go to Amazon
%% Redshift Clusters in the Amazon Redshift Cluster Management Guide.
%%
%% If you want to shut down the cluster and retain it for future use, set
%% SkipFinalClusterSnapshot to `false' and specify a name for
%% FinalClusterSnapshotIdentifier. You can later restore this snapshot to
%% resume using the cluster. If a final cluster snapshot is requested, the
%% status of the cluster will be "final-snapshot" while the snapshot is being
%% taken, then it's "deleting" once Amazon Redshift begins deleting the
%% cluster.
%%
%% For more information about managing clusters, go to Amazon Redshift
%% Clusters in the Amazon Redshift Cluster Management Guide.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a specified Amazon Redshift parameter group.
%%
%% You cannot delete a parameter group if it is associated with a cluster.
delete_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_parameter_group(Client, Input, []).
delete_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterParameterGroup">>, Input, Options).

%% @doc Deletes an Amazon Redshift security group.
%%
%% You cannot delete a security group that is associated with any clusters.
%% You cannot delete the default security group.
%%
%% For information about managing security groups, go to Amazon Redshift
%% Cluster Security Groups in the Amazon Redshift Cluster Management Guide.
delete_cluster_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_security_group(Client, Input, []).
delete_cluster_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSecurityGroup">>, Input, Options).

%% @doc Deletes the specified manual snapshot.
%%
%% The snapshot must be in the `available' state, with no other users
%% authorized to access the snapshot.
%%
%% Unlike automated snapshots, manual snapshots are retained even after you
%% delete your cluster. Amazon Redshift does not delete your manual
%% snapshots. You must delete manual snapshot explicitly to avoid getting
%% charged. If other accounts are authorized to access the snapshot, you must
%% revoke all of the authorizations before you can delete the snapshot.
delete_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_snapshot(Client, Input, []).
delete_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSnapshot">>, Input, Options).

%% @doc Deletes the specified cluster subnet group.
delete_cluster_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_subnet_group(Client, Input, []).
delete_cluster_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSubnetGroup">>, Input, Options).

%% @doc Deletes a Redshift-managed VPC endpoint.
delete_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_access(Client, Input, []).
delete_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointAccess">>, Input, Options).

%% @doc Deletes an Amazon Redshift event notification subscription.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Deletes the specified HSM client certificate.
delete_hsm_client_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm_client_certificate(Client, Input, []).
delete_hsm_client_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsmClientCertificate">>, Input, Options).

%% @doc Deletes the specified Amazon Redshift HSM configuration.
delete_hsm_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm_configuration(Client, Input, []).
delete_hsm_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsmConfiguration">>, Input, Options).

%% @doc Deletes a partner integration from a cluster.
%%
%% Data can still flow to the cluster until the integration is deleted at the
%% partner's website.
delete_partner(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partner(Client, Input, []).
delete_partner(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartner">>, Input, Options).

%% @doc Deletes a scheduled action.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deletes the specified snapshot copy grant.
delete_snapshot_copy_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_copy_grant(Client, Input, []).
delete_snapshot_copy_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotCopyGrant">>, Input, Options).

%% @doc Deletes a snapshot schedule.
delete_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_schedule(Client, Input, []).
delete_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotSchedule">>, Input, Options).

%% @doc Deletes tags from a resource.
%%
%% You must provide the ARN of the resource from which you want to delete the
%% tag or tags.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes a usage limit from a cluster.
delete_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_limit(Client, Input, []).
delete_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageLimit">>, Input, Options).

%% @doc Returns a list of attributes attached to an account
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes an authentication profile.
describe_authentication_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_authentication_profiles(Client, Input, []).
describe_authentication_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAuthenticationProfiles">>, Input, Options).

%% @doc Returns an array of `ClusterDbRevision' objects.
describe_cluster_db_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_db_revisions(Client, Input, []).
describe_cluster_db_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterDbRevisions">>, Input, Options).

%% @doc Returns a list of Amazon Redshift parameter groups, including
%% parameter groups you created and the default parameter group.
%%
%% For each parameter group, the response includes the parameter group name,
%% description, and parameter group family name. You can optionally specify a
%% name to retrieve the description of a specific parameter group.
%%
%% For more information about parameters and parameter groups, go to Amazon
%% Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all parameter groups that match any combination of the
%% specified keys and values. For example, if you have `owner' and
%% `environment' for tag keys, and `admin' and `test' for tag values, all
%% parameter groups that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, parameter groups
%% are returned regardless of whether they have tag keys or values associated
%% with them.
describe_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_parameter_groups(Client, Input, []).
describe_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterParameterGroups">>, Input, Options).

%% @doc Returns a detailed list of parameters contained within the specified
%% Amazon Redshift parameter group.
%%
%% For each parameter the response includes information such as parameter
%% name, description, data type, value, whether the parameter value is
%% modifiable, and so on.
%%
%% You can specify source filter to retrieve parameters of only specific
%% type. For example, to retrieve parameters that were modified by a user
%% action such as from `ModifyClusterParameterGroup', you can specify source
%% equal to user.
%%
%% For more information about parameters and parameter groups, go to Amazon
%% Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.
describe_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_parameters(Client, Input, []).
describe_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterParameters">>, Input, Options).

%% @doc Returns information about Amazon Redshift security groups.
%%
%% If the name of a security group is specified, the response will contain
%% only information about only that security group.
%%
%% For information about managing security groups, go to Amazon Redshift
%% Cluster Security Groups in the Amazon Redshift Cluster Management Guide.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all security groups that match any combination of the
%% specified keys and values. For example, if you have `owner' and
%% `environment' for tag keys, and `admin' and `test' for tag values, all
%% security groups that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, security groups
%% are returned regardless of whether they have tag keys or values associated
%% with them.
describe_cluster_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_security_groups(Client, Input, []).
describe_cluster_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSecurityGroups">>, Input, Options).

%% @doc Returns one or more snapshot objects, which contain metadata about
%% your cluster snapshots.
%%
%% By default, this operation returns information about all snapshots of all
%% clusters that are owned by your Amazon Web Services account. No
%% information is returned for snapshots owned by inactive Amazon Web
%% Services accounts.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all snapshots that match any combination of the specified
%% keys and values. For example, if you have `owner' and `environment' for
%% tag keys, and `admin' and `test' for tag values, all snapshots that have
%% any combination of those values are returned. Only snapshots that you own
%% are returned in the response; shared snapshots are not returned with the
%% tag key and tag value request parameters.
%%
%% If both tag keys and values are omitted from the request, snapshots are
%% returned regardless of whether they have tag keys or values associated
%% with them.
describe_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_snapshots(Client, Input, []).
describe_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSnapshots">>, Input, Options).

%% @doc Returns one or more cluster subnet group objects, which contain
%% metadata about your cluster subnet groups.
%%
%% By default, this operation returns information about all cluster subnet
%% groups that are defined in your Amazon Web Services account.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all subnet groups that match any combination of the
%% specified keys and values. For example, if you have `owner' and
%% `environment' for tag keys, and `admin' and `test' for tag values, all
%% subnet groups that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, subnet groups
%% are returned regardless of whether they have tag keys or values associated
%% with them.
describe_cluster_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_subnet_groups(Client, Input, []).
describe_cluster_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSubnetGroups">>, Input, Options).

%% @doc Returns a list of all the available maintenance tracks.
describe_cluster_tracks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_tracks(Client, Input, []).
describe_cluster_tracks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterTracks">>, Input, Options).

%% @doc Returns descriptions of the available Amazon Redshift cluster
%% versions.
%%
%% You can call this operation even before creating any clusters to learn
%% more about the Amazon Redshift versions. For more information about
%% managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift
%% Cluster Management Guide.
describe_cluster_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_versions(Client, Input, []).
describe_cluster_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterVersions">>, Input, Options).

%% @doc Returns properties of provisioned clusters including general cluster
%% properties, cluster database properties, maintenance and backup
%% properties, and security and access properties.
%%
%% This operation supports pagination. For more information about managing
%% clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster
%% Management Guide.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all clusters that match any combination of the specified
%% keys and values. For example, if you have `owner' and `environment' for
%% tag keys, and `admin' and `test' for tag values, all clusters that have
%% any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, clusters are
%% returned regardless of whether they have tag keys or values associated
%% with them.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Shows the status of any inbound or outbound datashares available in
%% the specified account.
describe_data_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_shares(Client, Input, []).
describe_data_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataShares">>, Input, Options).

%% @doc Returns a list of datashares where the account identifier being
%% called is a consumer account identifier.
describe_data_shares_for_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_shares_for_consumer(Client, Input, []).
describe_data_shares_for_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSharesForConsumer">>, Input, Options).

%% @doc Returns a list of datashares when the account identifier being called
%% is a producer account identifier.
describe_data_shares_for_producer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_shares_for_producer(Client, Input, []).
describe_data_shares_for_producer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSharesForProducer">>, Input, Options).

%% @doc Returns a list of parameter settings for the specified parameter
%% group family.
%%
%% For more information about parameters and parameter groups, go to Amazon
%% Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.
describe_default_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_default_cluster_parameters(Client, Input, []).
describe_default_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDefaultClusterParameters">>, Input, Options).

%% @doc Describes a Redshift-managed VPC endpoint.
describe_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_access(Client, Input, []).
describe_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointAccess">>, Input, Options).

%% @doc Describes an endpoint authorization.
describe_endpoint_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_authorization(Client, Input, []).
describe_endpoint_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointAuthorization">>, Input, Options).

%% @doc Displays a list of event categories for all event source types, or
%% for a specified source type.
%%
%% For a list of the event categories and source types, go to Amazon Redshift
%% Event Notifications.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists descriptions of all the Amazon Redshift event notification
%% subscriptions for a customer account.
%%
%% If you specify a subscription name, lists the description for that
%% subscription.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all event notification subscriptions that match any
%% combination of the specified keys and values. For example, if you have
%% `owner' and `environment' for tag keys, and `admin' and `test' for tag
%% values, all subscriptions that have any combination of those values are
%% returned.
%%
%% If both tag keys and values are omitted from the request, subscriptions
%% are returned regardless of whether they have tag keys or values associated
%% with them.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Returns events related to clusters, security groups, snapshots, and
%% parameter groups for the past 14 days.
%%
%% Events specific to a particular cluster, security group, snapshot or
%% parameter group can be obtained by providing the name as a parameter. By
%% default, the past hour of events are returned.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about the specified HSM client certificate.
%%
%% If no certificate ID is specified, returns information about all the HSM
%% certificates owned by your Amazon Web Services account.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all HSM client certificates that match any combination of
%% the specified keys and values. For example, if you have `owner' and
%% `environment' for tag keys, and `admin' and `test' for tag values, all HSM
%% client certificates that have any combination of those values are
%% returned.
%%
%% If both tag keys and values are omitted from the request, HSM client
%% certificates are returned regardless of whether they have tag keys or
%% values associated with them.
describe_hsm_client_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm_client_certificates(Client, Input, []).
describe_hsm_client_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsmClientCertificates">>, Input, Options).

%% @doc Returns information about the specified Amazon Redshift HSM
%% configuration.
%%
%% If no configuration ID is specified, returns information about all the HSM
%% configurations owned by your Amazon Web Services account.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns all HSM connections that match any combination of the
%% specified keys and values. For example, if you have `owner' and
%% `environment' for tag keys, and `admin' and `test' for tag values, all HSM
%% connections that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, HSM connections
%% are returned regardless of whether they have tag keys or values associated
%% with them.
describe_hsm_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm_configurations(Client, Input, []).
describe_hsm_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsmConfigurations">>, Input, Options).

%% @doc Describes whether information, such as queries and connection
%% attempts, is being logged for the specified Amazon Redshift cluster.
describe_logging_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_logging_status(Client, Input, []).
describe_logging_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoggingStatus">>, Input, Options).

%% @doc Returns properties of possible node configurations such as node type,
%% number of nodes, and disk usage for the specified action type.
describe_node_configuration_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_node_configuration_options(Client, Input, []).
describe_node_configuration_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNodeConfigurationOptions">>, Input, Options).

%% @doc Returns a list of orderable cluster options.
%%
%% Before you create a new cluster you can use this operation to find what
%% options are available, such as the EC2 Availability Zones (AZ) in the
%% specific Amazon Web Services Region that you can specify, and the node
%% types you can request. The node types differ by available storage, memory,
%% CPU and price. With the cost involved you might want to obtain a list of
%% cluster options in the specific region and specify values when creating a
%% cluster. For more information about managing clusters, go to Amazon
%% Redshift Clusters in the Amazon Redshift Cluster Management Guide.
describe_orderable_cluster_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_cluster_options(Client, Input, []).
describe_orderable_cluster_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableClusterOptions">>, Input, Options).

%% @doc Returns information about the partner integrations defined for a
%% cluster.
describe_partners(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_partners(Client, Input, []).
describe_partners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePartners">>, Input, Options).

%% @doc Returns exchange status details and associated metadata for a
%% reserved-node exchange.
%%
%% Statuses include such values as in progress and requested.
describe_reserved_node_exchange_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_node_exchange_status(Client, Input, []).
describe_reserved_node_exchange_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodeExchangeStatus">>, Input, Options).

%% @doc Returns a list of the available reserved node offerings by Amazon
%% Redshift with their descriptions including the node type, the fixed and
%% recurring costs of reserving the node and duration the node will be
%% reserved for you.
%%
%% These descriptions help you determine which reserve node offering you want
%% to purchase. You then use the unique offering ID in you call to
%% `PurchaseReservedNodeOffering' to reserve one or more nodes for your
%% Amazon Redshift cluster.
%%
%% For more information about reserved node offerings, go to Purchasing
%% Reserved Nodes in the Amazon Redshift Cluster Management Guide.
describe_reserved_node_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_node_offerings(Client, Input, []).
describe_reserved_node_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodeOfferings">>, Input, Options).

%% @doc Returns the descriptions of the reserved nodes.
describe_reserved_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_nodes(Client, Input, []).
describe_reserved_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodes">>, Input, Options).

%% @doc Returns information about the last resize operation for the specified
%% cluster.
%%
%% If no resize operation has ever been initiated for the specified cluster,
%% a `HTTP 404' error is returned. If a resize operation was initiated and
%% completed, the status of the resize remains as `SUCCEEDED' until the next
%% resize.
%%
%% A resize operation can be requested using `ModifyCluster' and specifying a
%% different number or type of nodes for the cluster.
describe_resize(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resize(Client, Input, []).
describe_resize(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResize">>, Input, Options).

%% @doc Describes properties of scheduled actions.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

%% @doc Returns a list of snapshot copy grants owned by the Amazon Web
%% Services account in the destination region.
%%
%% For more information about managing snapshot copy grants, go to Amazon
%% Redshift Database Encryption in the Amazon Redshift Cluster Management
%% Guide.
describe_snapshot_copy_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_copy_grants(Client, Input, []).
describe_snapshot_copy_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotCopyGrants">>, Input, Options).

%% @doc Returns a list of snapshot schedules.
describe_snapshot_schedules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_schedules(Client, Input, []).
describe_snapshot_schedules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotSchedules">>, Input, Options).

%% @doc Returns account level backups storage size and provisional storage.
describe_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage(Client, Input, []).
describe_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorage">>, Input, Options).

%% @doc Lists the status of one or more table restore requests made using the
%% `RestoreTableFromClusterSnapshot' API action.
%%
%% If you don't specify a value for the `TableRestoreRequestId' parameter,
%% then `DescribeTableRestoreStatus' returns the status of all table restore
%% requests ordered by the date and time of the request in ascending order.
%% Otherwise `DescribeTableRestoreStatus' returns the status of the table
%% specified by `TableRestoreRequestId'.
describe_table_restore_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_restore_status(Client, Input, []).
describe_table_restore_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableRestoreStatus">>, Input, Options).

%% @doc Returns a list of tags.
%%
%% You can return tags from a specific resource by specifying an ARN, or you
%% can return all tags for a given type of resource, such as clusters,
%% snapshots, and so on.
%%
%% The following are limitations for `DescribeTags':
%%
%% <ul> <li> You cannot specify an ARN and a resource-type value together in
%% the same request.
%%
%% </li> <li> You cannot use the `MaxRecords' and `Marker' parameters
%% together with the ARN parameter.
%%
%% </li> <li> The `MaxRecords' parameter can be a range from 10 to 50 results
%% to return in a request.
%%
%% </li> </ul> If you specify both tag keys and tag values in the same
%% request, Amazon Redshift returns all resources that match any combination
%% of the specified keys and values. For example, if you have `owner' and
%% `environment' for tag keys, and `admin' and `test' for tag values, all
%% resources that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, resources are
%% returned regardless of whether they have tag keys or values associated
%% with them.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Shows usage limits on a cluster.
%%
%% Results are filtered based on the combination of input usage limit
%% identifier, cluster identifier, and feature type parameters:
%%
%% <ul> <li> If usage limit identifier, cluster identifier, and feature type
%% are not provided, then all usage limit objects for the current account in
%% the current region are returned.
%%
%% </li> <li> If usage limit identifier is provided, then the corresponding
%% usage limit object is returned.
%%
%% </li> <li> If cluster identifier is provided, then all usage limit objects
%% for the specified cluster are returned.
%%
%% </li> <li> If cluster identifier and feature type are provided, then all
%% usage limit objects for the combination of cluster and feature are
%% returned.
%%
%% </li> </ul>
describe_usage_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_usage_limits(Client, Input, []).
describe_usage_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsageLimits">>, Input, Options).

%% @doc Stops logging information, such as queries and connection attempts,
%% for the specified Amazon Redshift cluster.
disable_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_logging(Client, Input, []).
disable_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableLogging">>, Input, Options).

%% @doc Disables the automatic copying of snapshots from one region to
%% another region for a specified cluster.
%%
%% If your cluster and its snapshots are encrypted using an encrypted
%% symmetric key from Key Management Service, use `DeleteSnapshotCopyGrant'
%% to delete the grant that grants Amazon Redshift permission to the key in
%% the destination region.
disable_snapshot_copy(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_snapshot_copy(Client, Input, []).
disable_snapshot_copy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSnapshotCopy">>, Input, Options).

%% @doc From a datashare consumer account, remove association for the
%% specified datashare.
disassociate_data_share_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_data_share_consumer(Client, Input, []).
disassociate_data_share_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDataShareConsumer">>, Input, Options).

%% @doc Starts logging information, such as queries and connection attempts,
%% for the specified Amazon Redshift cluster.
enable_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_logging(Client, Input, []).
enable_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableLogging">>, Input, Options).

%% @doc Enables the automatic copy of snapshots from one region to another
%% region for a specified cluster.
enable_snapshot_copy(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_snapshot_copy(Client, Input, []).
enable_snapshot_copy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSnapshotCopy">>, Input, Options).

%% @doc Returns a database user name and temporary password with temporary
%% authorization to log on to an Amazon Redshift database.
%%
%% The action returns the database user name prefixed with `IAM:' if
%% `AutoCreate' is `False' or `IAMA:' if `AutoCreate' is `True'. You can
%% optionally specify one or more database user groups that the user will
%% join at log on. By default, the temporary credentials expire in 900
%% seconds. You can optionally specify a duration between 900 seconds (15
%% minutes) and 3600 seconds (60 minutes). For more information, see Using
%% IAM Authentication to Generate Database User Credentials in the Amazon
%% Redshift Cluster Management Guide.
%%
%% The Identity and Access Management (IAM) user or role that runs
%% GetClusterCredentials must have an IAM policy attached that allows access
%% to all necessary actions and resources. For more information about
%% permissions, see Resource Policies for GetClusterCredentials in the Amazon
%% Redshift Cluster Management Guide.
%%
%% If the `DbGroups' parameter is specified, the IAM policy must allow the
%% `redshift:JoinGroup' action with access to the listed `dbgroups'.
%%
%% In addition, if the `AutoCreate' parameter is set to `True', then the
%% policy must include the `redshift:CreateClusterUser' permission.
%%
%% If the `DbName' parameter is specified, the IAM policy must allow access
%% to the resource `dbname' for the specified database name.
get_cluster_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster_credentials(Client, Input, []).
get_cluster_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClusterCredentials">>, Input, Options).

%% @doc Returns a database user name and temporary password with temporary
%% authorization to log in to an Amazon Redshift database.
%%
%% The database user is mapped 1:1 to the source Identity and Access
%% Management (IAM) identity. For more information about IAM identities, see
%% IAM Identities (users, user groups, and roles) in the Amazon Web Services
%% Identity and Access Management User Guide.
%%
%% The Identity and Access Management (IAM) identity that runs this operation
%% must have an IAM policy attached that allows access to all necessary
%% actions and resources. For more information about permissions, see Using
%% identity-based policies (IAM policies) in the Amazon Redshift Cluster
%% Management Guide.
get_cluster_credentials_with_iam(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster_credentials_with_iam(Client, Input, []).
get_cluster_credentials_with_iam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClusterCredentialsWithIAM">>, Input, Options).

%% @doc Gets the configuration options for the reserved-node exchange.
%%
%% These options include information about the source reserved node and
%% target reserved node offering. Details include the node type, the price,
%% the node count, and the offering type.
get_reserved_node_exchange_configuration_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reserved_node_exchange_configuration_options(Client, Input, []).
get_reserved_node_exchange_configuration_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservedNodeExchangeConfigurationOptions">>, Input, Options).

%% @doc Returns an array of DC2 ReservedNodeOfferings that matches the
%% payment type, term, and usage price of the given DC1 reserved node.
get_reserved_node_exchange_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reserved_node_exchange_offerings(Client, Input, []).
get_reserved_node_exchange_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservedNodeExchangeOfferings">>, Input, Options).

%% @doc This operation is retired.
%%
%% Calling this operation does not change AQUA configuration. Amazon Redshift
%% automatically determines whether to use AQUA (Advanced Query Accelerator).
modify_aqua_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_aqua_configuration(Client, Input, []).
modify_aqua_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAquaConfiguration">>, Input, Options).

%% @doc Modifies an authentication profile.
modify_authentication_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_authentication_profile(Client, Input, []).
modify_authentication_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAuthenticationProfile">>, Input, Options).

%% @doc Modifies the settings for a cluster.
%%
%% You can also change node type and the number of nodes to scale up or down
%% the cluster. When resizing a cluster, you must specify both the number of
%% nodes and the node type even if one of the parameters does not change.
%%
%% You can add another security or parameter group, or change the admin user
%% password. Resetting a cluster password or modifying the security groups
%% associated with a cluster do not need a reboot. However, modifying a
%% parameter group requires a reboot for parameters to take effect. For more
%% information about managing clusters, go to Amazon Redshift Clusters in the
%% Amazon Redshift Cluster Management Guide.
modify_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster(Client, Input, []).
modify_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCluster">>, Input, Options).

%% @doc Modifies the database revision of a cluster.
%%
%% The database revision is a unique revision of the database running in a
%% cluster.
modify_cluster_db_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_db_revision(Client, Input, []).
modify_cluster_db_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterDbRevision">>, Input, Options).

%% @doc Modifies the list of Identity and Access Management (IAM) roles that
%% can be used by the cluster to access other Amazon Web Services services.
%%
%% The maximum number of IAM roles that you can associate is subject to a
%% quota. For more information, go to Quotas and limits in the Amazon
%% Redshift Cluster Management Guide.
modify_cluster_iam_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_iam_roles(Client, Input, []).
modify_cluster_iam_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterIamRoles">>, Input, Options).

%% @doc Modifies the maintenance settings of a cluster.
modify_cluster_maintenance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_maintenance(Client, Input, []).
modify_cluster_maintenance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterMaintenance">>, Input, Options).

%% @doc Modifies the parameters of a parameter group.
%%
%% For the parameters parameter, it can't contain ASCII characters.
%%
%% For more information about parameters and parameter groups, go to Amazon
%% Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.
modify_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_parameter_group(Client, Input, []).
modify_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterParameterGroup">>, Input, Options).

%% @doc Modifies the settings for a snapshot.
%%
%% This exanmple modifies the manual retention period setting for a cluster
%% snapshot.
modify_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_snapshot(Client, Input, []).
modify_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterSnapshot">>, Input, Options).

%% @doc Modifies a snapshot schedule for a cluster.
modify_cluster_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_snapshot_schedule(Client, Input, []).
modify_cluster_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterSnapshotSchedule">>, Input, Options).

%% @doc Modifies a cluster subnet group to include the specified list of VPC
%% subnets.
%%
%% The operation replaces the existing list of subnets with the new list of
%% subnets.
modify_cluster_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_subnet_group(Client, Input, []).
modify_cluster_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterSubnetGroup">>, Input, Options).

%% @doc Modifies a Redshift-managed VPC endpoint.
modify_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint_access(Client, Input, []).
modify_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpointAccess">>, Input, Options).

%% @doc Modifies an existing Amazon Redshift event notification subscription.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modifies a scheduled action.
modify_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_scheduled_action(Client, Input, []).
modify_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyScheduledAction">>, Input, Options).

%% @doc Modifies the number of days to retain snapshots in the destination
%% Amazon Web Services Region after they are copied from the source Amazon
%% Web Services Region.
%%
%% By default, this operation only changes the retention period of copied
%% automated snapshots. The retention periods for both new and existing
%% copied automated snapshots are updated with the new retention period. You
%% can set the manual option to change only the retention periods of copied
%% manual snapshots. If you set this option, only newly copied manual
%% snapshots have the new retention period.
modify_snapshot_copy_retention_period(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_snapshot_copy_retention_period(Client, Input, []).
modify_snapshot_copy_retention_period(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySnapshotCopyRetentionPeriod">>, Input, Options).

%% @doc Modifies a snapshot schedule.
%%
%% Any schedule associated with a cluster is modified asynchronously.
modify_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_snapshot_schedule(Client, Input, []).
modify_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySnapshotSchedule">>, Input, Options).

%% @doc Modifies a usage limit in a cluster.
%%
%% You can't modify the feature type or period of a usage limit.
modify_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_usage_limit(Client, Input, []).
modify_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyUsageLimit">>, Input, Options).

%% @doc Pauses a cluster.
pause_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    pause_cluster(Client, Input, []).
pause_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PauseCluster">>, Input, Options).

%% @doc Allows you to purchase reserved nodes.
%%
%% Amazon Redshift offers a predefined set of reserved node offerings. You
%% can purchase one or more of the offerings. You can call the
%% `DescribeReservedNodeOfferings' API to obtain the available reserved node
%% offerings. You can call this API by providing a specific reserved node
%% offering and the number of nodes you want to reserve.
%%
%% For more information about reserved node offerings, go to Purchasing
%% Reserved Nodes in the Amazon Redshift Cluster Management Guide.
purchase_reserved_node_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_node_offering(Client, Input, []).
purchase_reserved_node_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedNodeOffering">>, Input, Options).

%% @doc Reboots a cluster.
%%
%% This action is taken as soon as possible. It results in a momentary outage
%% to the cluster, during which the cluster status is set to `rebooting'. A
%% cluster event is created when the reboot is completed. Any pending cluster
%% modifications (see `ModifyCluster') are applied at this reboot. For more
%% information about managing clusters, go to Amazon Redshift Clusters in the
%% Amazon Redshift Cluster Management Guide.
reboot_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_cluster(Client, Input, []).
reboot_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootCluster">>, Input, Options).

%% @doc From a datashare consumer account, rejects the specified datashare.
reject_data_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_data_share(Client, Input, []).
reject_data_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectDataShare">>, Input, Options).

%% @doc Sets one or more parameters of the specified parameter group to their
%% default values and sets the source values of the parameters to
%% "engine-default".
%%
%% To reset the entire parameter group specify the ResetAllParameters
%% parameter. For parameter changes to take effect you must reboot any
%% associated clusters.
reset_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_cluster_parameter_group(Client, Input, []).
reset_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetClusterParameterGroup">>, Input, Options).

%% @doc Changes the size of the cluster.
%%
%% You can change the cluster's type, or change the number or type of nodes.
%% The default behavior is to use the elastic resize method. With an elastic
%% resize, your cluster is available for read and write operations more
%% quickly than with the classic resize method.
%%
%% Elastic resize operations have the following restrictions:
%%
%% <ul> <li> You can only resize clusters of the following types:
%%
%% <ul> <li> dc1.large (if your cluster is in a VPC)
%%
%% </li> <li> dc1.8xlarge (if your cluster is in a VPC)
%%
%% </li> <li> dc2.large
%%
%% </li> <li> dc2.8xlarge
%%
%% </li> <li> ds2.xlarge
%%
%% </li> <li> ds2.8xlarge
%%
%% </li> <li> ra3.xlplus
%%
%% </li> <li> ra3.4xlarge
%%
%% </li> <li> ra3.16xlarge
%%
%% </li> </ul> </li> <li> The type of nodes that you add must match the node
%% type for the cluster.
%%
%% </li> </ul>
resize_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    resize_cluster(Client, Input, []).
resize_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResizeCluster">>, Input, Options).

%% @doc Creates a new cluster from a snapshot.
%%
%% By default, Amazon Redshift creates the resulting cluster with the same
%% configuration as the original cluster from which the snapshot was created,
%% except that the new cluster is created with the default cluster security
%% and parameter groups. After Amazon Redshift creates the cluster, you can
%% use the `ModifyCluster' API to associate a different security group and
%% different parameter group with the restored cluster. If you are using a DS
%% node type, you can also choose to change to another DS node type of the
%% same size during restore.
%%
%% If you restore a cluster into a VPC, you must provide a cluster subnet
%% group where you want the cluster restored.
%%
%% For more information about working with snapshots, go to Amazon Redshift
%% Snapshots in the Amazon Redshift Cluster Management Guide.
restore_from_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_cluster_snapshot(Client, Input, []).
restore_from_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromClusterSnapshot">>, Input, Options).

%% @doc Creates a new table from a table in an Amazon Redshift cluster
%% snapshot.
%%
%% You must create the new table within the Amazon Redshift cluster that the
%% snapshot was taken from.
%%
%% You cannot use `RestoreTableFromClusterSnapshot' to restore a table with
%% the same name as an existing table in an Amazon Redshift cluster. That is,
%% you cannot overwrite an existing table in a cluster with a restored table.
%% If you want to replace your original table with a new, restored table,
%% then rename or drop your original table before you call
%% `RestoreTableFromClusterSnapshot'. When you have renamed your original
%% table, then you can pass the original name of the table as the
%% `NewTableName' parameter value in the call to
%% `RestoreTableFromClusterSnapshot'. This way, you can replace the original
%% table with the table created from the snapshot.
restore_table_from_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_cluster_snapshot(Client, Input, []).
restore_table_from_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromClusterSnapshot">>, Input, Options).

%% @doc Resumes a paused cluster.
resume_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_cluster(Client, Input, []).
resume_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeCluster">>, Input, Options).

%% @doc Revokes an ingress rule in an Amazon Redshift security group for a
%% previously authorized IP range or Amazon EC2 security group.
%%
%% To add an ingress rule, see `AuthorizeClusterSecurityGroupIngress'. For
%% information about managing security groups, go to Amazon Redshift Cluster
%% Security Groups in the Amazon Redshift Cluster Management Guide.
revoke_cluster_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_cluster_security_group_ingress(Client, Input, []).
revoke_cluster_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeClusterSecurityGroupIngress">>, Input, Options).

%% @doc Revokes access to a cluster.
revoke_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_endpoint_access(Client, Input, []).
revoke_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeEndpointAccess">>, Input, Options).

%% @doc Removes the ability of the specified Amazon Web Services account to
%% restore the specified snapshot.
%%
%% If the account is currently restoring the snapshot, the restore will run
%% to completion.
%%
%% For more information about working with snapshots, go to Amazon Redshift
%% Snapshots in the Amazon Redshift Cluster Management Guide.
revoke_snapshot_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_snapshot_access(Client, Input, []).
revoke_snapshot_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeSnapshotAccess">>, Input, Options).

%% @doc Rotates the encryption keys for a cluster.
rotate_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    rotate_encryption_key(Client, Input, []).
rotate_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RotateEncryptionKey">>, Input, Options).

%% @doc Updates the status of a partner integration.
update_partner_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partner_status(Client, Input, []).
update_partner_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartnerStatus">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"redshift">>},
    Host = build_host(<<"redshift">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2012-12-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
