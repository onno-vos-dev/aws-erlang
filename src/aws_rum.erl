%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Amazon CloudWatch RUM, you can perform real-user monitoring to
%% collect client-side data about your web application performance from
%% actual user sessions in real time.
%%
%% The data collected includes page load times, client-side errors, and user
%% behavior. When you view this data, you can see it all aggregated together
%% and also see breakdowns by the browsers and devices that your customers
%% use.
%%
%% You can use the collected data to quickly identify and debug client-side
%% performance issues. CloudWatch RUM helps you visualize anomalies in your
%% application performance and find relevant debugging data such as error
%% messages, stack traces, and user sessions. You can also use RUM to
%% understand the range of end-user impact including the number of users,
%% geolocations, and browsers used.
-module(aws_rum).

-export([batch_create_rum_metric_definitions/3,
         batch_create_rum_metric_definitions/4,
         batch_delete_rum_metric_definitions/3,
         batch_delete_rum_metric_definitions/4,
         batch_get_rum_metric_definitions/3,
         batch_get_rum_metric_definitions/5,
         batch_get_rum_metric_definitions/6,
         create_app_monitor/2,
         create_app_monitor/3,
         delete_app_monitor/3,
         delete_app_monitor/4,
         delete_rum_metrics_destination/3,
         delete_rum_metrics_destination/4,
         get_app_monitor/2,
         get_app_monitor/4,
         get_app_monitor/5,
         get_app_monitor_data/3,
         get_app_monitor_data/4,
         list_app_monitors/2,
         list_app_monitors/3,
         list_rum_metrics_destinations/2,
         list_rum_metrics_destinations/4,
         list_rum_metrics_destinations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_rum_events/3,
         put_rum_events/4,
         put_rum_metrics_destination/3,
         put_rum_metrics_destination/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app_monitor/3,
         update_app_monitor/4,
         update_rum_metric_definition/3,
         update_rum_metric_definition/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Specifies the extended metrics that you want a CloudWatch RUM app
%% monitor to send to a destination.
%%
%% Valid destinations include CloudWatch and Evidently.
%%
%% By default, RUM app monitors send some metrics to CloudWatch. These
%% default metrics are listed in CloudWatch metrics that you can collect with
%% CloudWatch RUM.
%%
%% If you also send extended metrics, you can send metrics to Evidently as
%% well as CloudWatch, and you can also optionally send the metrics with
%% additional dimensions. The valid dimension names for the additional
%% dimensions are `BrowserName', `CountryCode', `DeviceType', `FileType',
%% `OSName', and `PageId'. For more information, see Extended metrics that
%% you can send to CloudWatch and CloudWatch Evidently.
%%
%% The maximum number of metric definitions that you can specify in one
%% `BatchCreateRumMetricDefinitions' operation is 200.
%%
%% The maximum number of metric definitions that one destination can contain
%% is 2000.
%%
%% Extended metrics sent are charged as CloudWatch custom metrics. Each
%% combination of additional dimension name and dimension value counts as a
%% custom metric. For more information, see Amazon CloudWatch Pricing.
%%
%% You must have already created a destination for the metrics before you
%% send them. For more information, see PutRumMetricsDestination.
%%
%% If some metric definitions specified in a
%% `BatchCreateRumMetricDefinitions' operations are not valid, those metric
%% definitions fail and return errors, but all valid metric definitions in
%% the same operation still succeed.
batch_create_rum_metric_definitions(Client, AppMonitorName, Input) ->
    batch_create_rum_metric_definitions(Client, AppMonitorName, Input, []).
batch_create_rum_metric_definitions(Client, AppMonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
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

%% @doc Removes the specified metrics from being sent to an extended metrics
%% destination.
%%
%% If some metric definition IDs specified in a
%% `BatchDeleteRumMetricDefinitions' operations are not valid, those metric
%% definitions fail and return errors, but all valid metric definition IDs in
%% the same operation are still deleted.
%%
%% The maximum number of metric definitions that you can specify in one
%% `BatchDeleteRumMetricDefinitions' operation is 200.
batch_delete_rum_metric_definitions(Client, AppMonitorName, Input) ->
    batch_delete_rum_metric_definitions(Client, AppMonitorName, Input, []).
batch_delete_rum_metric_definitions(Client, AppMonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"destination">>, <<"Destination">>},
                     {<<"destinationArn">>, <<"DestinationArn">>},
                     {<<"metricDefinitionIds">>, <<"MetricDefinitionIds">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the list of metrics and dimensions that a RUM app monitor
%% is sending to a single destination.
batch_get_rum_metric_definitions(Client, AppMonitorName, Destination)
  when is_map(Client) ->
    batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, #{}, #{}).

batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, QueryMap, HeadersMap, []).

batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"destination">>, Destination},
        {<<"destinationArn">>, maps:get(<<"destinationArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
%% data from your application and sends that data to RUM.
%%
%% The data includes performance and reliability information such as page
%% load time, client-side errors, and user behavior.
%%
%% You use this operation only to create a new app monitor. To update an
%% existing app monitor, use UpdateAppMonitor instead.
%%
%% After you create an app monitor, sign in to the CloudWatch RUM console to
%% get the JavaScript code snippet to add to your web application. For more
%% information, see How do I find a code snippet that I've already generated?
create_app_monitor(Client, Input) ->
    create_app_monitor(Client, Input, []).
create_app_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitor"],
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

%% @doc Deletes an existing app monitor.
%%
%% This immediately stops the collection of data.
delete_app_monitor(Client, Name, Input) ->
    delete_app_monitor(Client, Name, Input, []).
delete_app_monitor(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a destination for CloudWatch RUM extended metrics, so that
%% the specified app monitor stops sending extended metrics to that
%% destination.
delete_rum_metrics_destination(Client, AppMonitorName, Input) ->
    delete_rum_metrics_destination(Client, AppMonitorName, Input, []).
delete_rum_metrics_destination(Client, AppMonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metricsdestination"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"destination">>, <<"Destination">>},
                     {<<"destinationArn">>, <<"DestinationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the complete configuration information for one app monitor.
get_app_monitor(Client, Name)
  when is_map(Client) ->
    get_app_monitor(Client, Name, #{}, #{}).

get_app_monitor(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_monitor(Client, Name, QueryMap, HeadersMap, []).

get_app_monitor(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appmonitor/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the raw performance events that RUM has collected from your
%% web application, so that you can do your own processing or analysis of
%% this data.
get_app_monitor_data(Client, Name, Input) ->
    get_app_monitor_data(Client, Name, Input, []).
get_app_monitor_data(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), "/data"],
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

%% @doc Returns a list of the Amazon CloudWatch RUM app monitors in the
%% account.
list_app_monitors(Client, Input) ->
    list_app_monitors(Client, Input, []).
list_app_monitors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitors"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of destinations that you have created to receive RUM
%% extended metrics, for the specified app monitor.
%%
%% For more information about extended metrics, see AddRumMetrics.
list_rum_metrics_destinations(Client, AppMonitorName)
  when is_map(Client) ->
    list_rum_metrics_destinations(Client, AppMonitorName, #{}, #{}).

list_rum_metrics_destinations(Client, AppMonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rum_metrics_destinations(Client, AppMonitorName, QueryMap, HeadersMap, []).

list_rum_metrics_destinations(Client, AppMonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metricsdestination"],
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

%% @doc Displays the tags associated with a CloudWatch RUM resource.
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

%% @doc Sends telemetry events about your application performance and user
%% behavior to CloudWatch RUM.
%%
%% The code snippet that RUM generates for you to add to your application
%% includes `PutRumEvents' operations to send this data to RUM.
%%
%% Each `PutRumEvents' operation can send a batch of events from one user
%% session.
put_rum_events(Client, Id, Input) ->
    put_rum_events(Client, Id, Input, []).
put_rum_events(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitors/", aws_util:encode_uri(Id), "/"],
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

%% @doc Creates or updates a destination to receive extended metrics from
%% CloudWatch RUM.
%%
%% You can send extended metrics to CloudWatch or to a CloudWatch Evidently
%% experiment.
%%
%% For more information about extended metrics, see AddRumMetrics.
put_rum_metrics_destination(Client, AppMonitorName, Input) ->
    put_rum_metrics_destination(Client, AppMonitorName, Input, []).
put_rum_metrics_destination(Client, AppMonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metricsdestination"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch RUM resource.
%%
%% Currently, the only resources that can be tagged app monitors.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the resource, this tag is appended
%% to the list of tags associated with the alarm. If you specify a tag key
%% that is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
%%
%% For more information, see Tagging Amazon Web Services resources.
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

%% @doc Removes one or more tags from the specified resource.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing app monitor.
%%
%% When you use this operation, only the parts of the app monitor
%% configuration that you specify in this operation are changed. For any
%% parameters that you omit, the existing values are kept.
%%
%% You can't use this operation to change the tags of an existing app
%% monitor. To change the tags of an existing app monitor, use TagResource.
%%
%% To create a new app monitor, use CreateAppMonitor.
%%
%% After you update an app monitor, sign in to the CloudWatch RUM console to
%% get the updated JavaScript code snippet to add to your web application.
%% For more information, see How do I find a code snippet that I've already
%% generated?
update_app_monitor(Client, Name, Input) ->
    update_app_monitor(Client, Name, Input, []).
update_app_monitor(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies one existing metric definition for CloudWatch RUM extended
%% metrics.
%%
%% For more information about extended metrics, see
%% BatchCreateRumMetricsDefinitions.
update_rum_metric_definition(Client, AppMonitorName, Input) ->
    update_rum_metric_definition(Client, AppMonitorName, Input, []).
update_rum_metric_definition(Client, AppMonitorName, Input0, Options0) ->
    Method = patch,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
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
    Client1 = Client#{service => <<"rum">>},
    Host = build_host(<<"rum">>, Client1),
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
