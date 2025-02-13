%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This API reference provides descriptions, syntax, and other details
%% about each of the actions and data types for AWS Migration Hub
%% Orchestrator.
%%
%% he topic for each action shows the API request parameters and the
%% response. Alternatively, you can use one of the AWS SDKs to access an API
%% that is tailored to the programming language or platform that you're
%% using.
-module(aws_migrationhuborchestrator).

-export([create_workflow/2,
         create_workflow/3,
         create_workflow_step/2,
         create_workflow_step/3,
         create_workflow_step_group/2,
         create_workflow_step_group/3,
         delete_workflow/3,
         delete_workflow/4,
         delete_workflow_step/3,
         delete_workflow_step/4,
         delete_workflow_step_group/3,
         delete_workflow_step_group/4,
         get_template/2,
         get_template/4,
         get_template/5,
         get_template_step/4,
         get_template_step/6,
         get_template_step/7,
         get_template_step_group/3,
         get_template_step_group/5,
         get_template_step_group/6,
         get_workflow/2,
         get_workflow/4,
         get_workflow/5,
         get_workflow_step/4,
         get_workflow_step/6,
         get_workflow_step/7,
         get_workflow_step_group/3,
         get_workflow_step_group/5,
         get_workflow_step_group/6,
         list_plugins/1,
         list_plugins/3,
         list_plugins/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_step_groups/2,
         list_template_step_groups/4,
         list_template_step_groups/5,
         list_template_steps/3,
         list_template_steps/5,
         list_template_steps/6,
         list_templates/1,
         list_templates/3,
         list_templates/4,
         list_workflow_step_groups/2,
         list_workflow_step_groups/4,
         list_workflow_step_groups/5,
         list_workflow_steps/3,
         list_workflow_steps/5,
         list_workflow_steps/6,
         list_workflows/1,
         list_workflows/3,
         list_workflows/4,
         retry_workflow_step/3,
         retry_workflow_step/4,
         start_workflow/3,
         start_workflow/4,
         stop_workflow/3,
         stop_workflow/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_workflow/3,
         update_workflow/4,
         update_workflow_step/3,
         update_workflow_step/4,
         update_workflow_step_group/3,
         update_workflow_step_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a workflow to orchestrate your migrations.
create_workflow(Client, Input) ->
    create_workflow(Client, Input, []).
create_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a step in the migration workflow.
create_workflow_step(Client, Input) ->
    create_workflow_step(Client, Input, []).
create_workflow_step(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstep"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a step group in a migration workflow.
create_workflow_step_group(Client, Input) ->
    create_workflow_step_group(Client, Input, []).
create_workflow_step_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstepgroups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a migration workflow.
%%
%% You must pause a running workflow in Migration Hub Orchestrator console to
%% delete it.
delete_workflow(Client, Id, Input) ->
    delete_workflow(Client, Id, Input, []).
delete_workflow(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a step in a migration workflow.
%%
%% Pause the workflow to delete a running step.
delete_workflow_step(Client, Id, Input) ->
    delete_workflow_step(Client, Id, Input, []).
delete_workflow_step(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/workflowstep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"stepGroupId">>, <<"stepGroupId">>},
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a step group in a migration workflow.
delete_workflow_step_group(Client, Id, Input) ->
    delete_workflow_step_group(Client, Id, Input, []).
delete_workflow_step_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/workflowstepgroup/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get the template you want to use for creating a migration workflow.
get_template(Client, Id)
  when is_map(Client) ->
    get_template(Client, Id, #{}, #{}).

get_template(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template(Client, Id, QueryMap, HeadersMap, []).

get_template(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflowtemplate/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a specific step in a template.
get_template_step(Client, Id, StepGroupId, TemplateId)
  when is_map(Client) ->
    get_template_step(Client, Id, StepGroupId, TemplateId, #{}, #{}).

get_template_step(Client, Id, StepGroupId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template_step(Client, Id, StepGroupId, TemplateId, QueryMap, HeadersMap, []).

get_template_step(Client, Id, StepGroupId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templatestep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"stepGroupId">>, StepGroupId},
        {<<"templateId">>, TemplateId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a step group in a template.
get_template_step_group(Client, Id, TemplateId)
  when is_map(Client) ->
    get_template_step_group(Client, Id, TemplateId, #{}, #{}).

get_template_step_group(Client, Id, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template_step_group(Client, Id, TemplateId, QueryMap, HeadersMap, []).

get_template_step_group(Client, Id, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateId), "/stepgroups/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get migration workflow.
get_workflow(Client, Id)
  when is_map(Client) ->
    get_workflow(Client, Id, #{}, #{}).

get_workflow(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, Id, QueryMap, HeadersMap, []).

get_workflow(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a step in the migration workflow.
get_workflow_step(Client, Id, StepGroupId, WorkflowId)
  when is_map(Client) ->
    get_workflow_step(Client, Id, StepGroupId, WorkflowId, #{}, #{}).

get_workflow_step(Client, Id, StepGroupId, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_step(Client, Id, StepGroupId, WorkflowId, QueryMap, HeadersMap, []).

get_workflow_step(Client, Id, StepGroupId, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflowstep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"stepGroupId">>, StepGroupId},
        {<<"workflowId">>, WorkflowId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the step group of a migration workflow.
get_workflow_step_group(Client, Id, WorkflowId)
  when is_map(Client) ->
    get_workflow_step_group(Client, Id, WorkflowId, #{}, #{}).

get_workflow_step_group(Client, Id, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_step_group(Client, Id, WorkflowId, QueryMap, HeadersMap, []).

get_workflow_step_group(Client, Id, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflowstepgroup/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"workflowId">>, WorkflowId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List AWS Migration Hub Orchestrator plugins.
list_plugins(Client)
  when is_map(Client) ->
    list_plugins(Client, #{}, #{}).

list_plugins(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugins(Client, QueryMap, HeadersMap, []).

list_plugins(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/plugins"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags added to a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the step groups in a template.
list_template_step_groups(Client, TemplateId)
  when is_map(Client) ->
    list_template_step_groups(Client, TemplateId, #{}, #{}).

list_template_step_groups(Client, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_step_groups(Client, TemplateId, QueryMap, HeadersMap, []).

list_template_step_groups(Client, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templatestepgroups/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the steps in a template.
list_template_steps(Client, StepGroupId, TemplateId)
  when is_map(Client) ->
    list_template_steps(Client, StepGroupId, TemplateId, #{}, #{}).

list_template_steps(Client, StepGroupId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_steps(Client, StepGroupId, TemplateId, QueryMap, HeadersMap, []).

list_template_steps(Client, StepGroupId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templatesteps"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"stepGroupId">>, StepGroupId},
        {<<"templateId">>, TemplateId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the templates available in Migration Hub Orchestrator to create
%% a migration workflow.
list_templates(Client)
  when is_map(Client) ->
    list_templates(Client, #{}, #{}).

list_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, QueryMap, HeadersMap, []).

list_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflowtemplates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the step groups in a migration workflow.
list_workflow_step_groups(Client, WorkflowId)
  when is_map(Client) ->
    list_workflow_step_groups(Client, WorkflowId, #{}, #{}).

list_workflow_step_groups(Client, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflow_step_groups(Client, WorkflowId, QueryMap, HeadersMap, []).

list_workflow_step_groups(Client, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflowstepgroups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"workflowId">>, WorkflowId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the steps in a workflow.
list_workflow_steps(Client, StepGroupId, WorkflowId)
  when is_map(Client) ->
    list_workflow_steps(Client, StepGroupId, WorkflowId, #{}, #{}).

list_workflow_steps(Client, StepGroupId, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflow_steps(Client, StepGroupId, WorkflowId, QueryMap, HeadersMap, []).

list_workflow_steps(Client, StepGroupId, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow/", aws_util:encode_uri(WorkflowId), "/workflowstepgroups/", aws_util:encode_uri(StepGroupId), "/workflowsteps"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the migration workflows.
list_workflows(Client)
  when is_map(Client) ->
    list_workflows(Client, #{}, #{}).

list_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflows(Client, QueryMap, HeadersMap, []).

list_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflows"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"adsApplicationConfigurationName">>, maps:get(<<"adsApplicationConfigurationName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"templateId">>, maps:get(<<"templateId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retry a failed step in a migration workflow.
retry_workflow_step(Client, Id, Input) ->
    retry_workflow_step(Client, Id, Input, []).
retry_workflow_step(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/retryworkflowstep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"stepGroupId">>, <<"stepGroupId">>},
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Start a migration workflow.
start_workflow(Client, Id, Input) ->
    start_workflow(Client, Id, Input, []).
start_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), "/start"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stop an ongoing migration workflow.
stop_workflow(Client, Id, Input) ->
    stop_workflow(Client, Id, Input, []).
stop_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), "/stop"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tag a resource by specifying its Amazon Resource Name (ARN).
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the tags for a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a migration workflow.
update_workflow(Client, Id, Input) ->
    update_workflow(Client, Id, Input, []).
update_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a step in a migration workflow.
update_workflow_step(Client, Id, Input) ->
    update_workflow_step(Client, Id, Input, []).
update_workflow_step(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the step group in a migration workflow.
update_workflow_step_group(Client, Id, Input) ->
    update_workflow_step_group(Client, Id, Input, []).
update_workflow_step_group(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstepgroup/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"migrationhub-orchestrator">>},
    Host = build_host(<<"migrationhub-orchestrator">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
