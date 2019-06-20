# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/algoliasearch/all/algoliasearch.rbi
#
# algoliasearch-1.26.0
module Algolia
  def self.add_api_key(object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def self.add_user_key(object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def self.batch!(requests, request_options = nil); end
  def self.batch(requests, request_options = nil); end
  def self.client; end
  def self.copy_index!(src_index, dst_index, scope = nil, request_options = nil); end
  def self.copy_index(src_index, dst_index, scope = nil, request_options = nil); end
  def self.copy_rules!(src_index, dst_index, request_options = nil); end
  def self.copy_rules(src_index, dst_index, request_options = nil); end
  def self.copy_settings!(src_index, dst_index, request_options = nil); end
  def self.copy_settings(src_index, dst_index, request_options = nil); end
  def self.copy_synonyms!(src_index, dst_index, request_options = nil); end
  def self.copy_synonyms(src_index, dst_index, request_options = nil); end
  def self.delete_api_key(key, request_options = nil); end
  def self.delete_index!(name, request_options = nil); end
  def self.delete_index(name, request_options = nil); end
  def self.delete_user_key(key, request_options = nil); end
  def self.destroy; end
  def self.disable_rate_limit_forward; end
  def self.enable_rate_limit_forward(admin_api_key, end_user_ip, rate_limit_api_key); end
  def self.generate_secured_api_key(private_api_key, tag_filters_or_params, user_token = nil); end
  def self.get_api_key(key, request_options = nil); end
  def self.get_logs(options = nil, length = nil, type = nil); end
  def self.get_task_status(index_name, taskID, request_options = nil); end
  def self.get_user_key(key, request_options = nil); end
  def self.init(options = nil); end
  def self.list_api_keys(request_options = nil); end
  def self.list_indexes(request_options = nil); end
  def self.list_user_keys(request_options = nil); end
  def self.move_index!(src_index, dst_index, request_options = nil); end
  def self.move_index(src_index, dst_index, request_options = nil); end
  def self.multiple_get_objects(requests, request_options = nil); end
  def self.multiple_queries(queries, options = nil, strategy = nil); end
  def self.restore_api_key(key, request_options = nil); end
  def self.set_extra_header(key, value); end
  def self.update_api_key(key, object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def self.update_user_key(key, object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def self.wait_task(index_name, taskID, time_before_retry = nil, request_options = nil); end
  def self.with_rate_limits(end_user_ip, rate_limit_api_key, &block); end
end
module Algolia::Protocol
  def self.ab_tests_stop_uri(ab_test); end
  def self.ab_tests_uri(ab_test = nil); end
  def self.batch_rules_uri(index); end
  def self.batch_synonyms_uri(index); end
  def self.batch_uri(index = nil); end
  def self.browse_uri(index, params = nil); end
  def self.clear_rules_uri(index); end
  def self.clear_synonyms_uri(index); end
  def self.clear_uri(index); end
  def self.cluster_mapping_uri(user_id = nil); end
  def self.cluster_top_user_uri; end
  def self.clusters_uri; end
  def self.delete_by_uri(index); end
  def self.index_key_uri(index, key); end
  def self.index_keys_uri(index); end
  def self.index_operation_uri(index); end
  def self.index_uri(index); end
  def self.indexes_uri; end
  def self.key_uri(key); end
  def self.keys_uri; end
  def self.list_ids_uri(page, hits_per_page); end
  def self.logs(offset, length, type); end
  def self.multiple_queries_uri(strategy = nil); end
  def self.object_uri(index, object_id, params = nil); end
  def self.objects_uri; end
  def self.partial_object_uri(index, object_id, create_if_not_exits = nil); end
  def self.personalization_strategy_uri; end
  def self.restore_key_uri(key); end
  def self.rule_uri(index, object_id); end
  def self.rules_uri(index); end
  def self.search_facet_uri(index, facet); end
  def self.search_post_uri(index); end
  def self.search_rules_uri(index); end
  def self.search_synonyms_uri(index); end
  def self.search_uri(index, query, params = nil); end
  def self.search_user_id_uri; end
  def self.settings_uri(index, params = nil); end
  def self.synonym_uri(index, object_id); end
  def self.synonyms_uri(index); end
  def self.task_uri(index, task_id); end
  def self.to_query(params); end
end
class Algolia::AlgoliaError < StandardError
end
class Algolia::AlgoliaProtocolError < Algolia::AlgoliaError
  def code; end
  def code=(arg0); end
  def initialize(code, message); end
  def message; end
  def message=(arg0); end
end
class Algolia::Client
  def add_api_key(object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def add_header_to_request_options(request_options, headers_to_add); end
  def add_user_key(object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def api_key; end
  def application_id; end
  def assign_user_id(user_id, cluster_name, request_options = nil); end
  def batch!(operations, request_options = nil); end
  def batch(operations, request_options = nil); end
  def batch_timeout; end
  def connect_timeout; end
  def copy_index!(src_index, dst_index, scope = nil, request_options = nil); end
  def copy_index(src_index, dst_index, scope = nil, request_options = nil); end
  def copy_rules!(src_index, dst_index, request_options = nil); end
  def copy_rules(src_index, dst_index, request_options = nil); end
  def copy_settings!(src_index, dst_index, request_options = nil); end
  def copy_settings(src_index, dst_index, request_options = nil); end
  def copy_synonyms!(src_index, dst_index, request_options = nil); end
  def copy_synonyms(src_index, dst_index, request_options = nil); end
  def delete(uri, type = nil, request_options = nil); end
  def delete_api_key(key, request_options = nil); end
  def delete_index!(name, request_options = nil); end
  def delete_index(name, request_options = nil); end
  def delete_user_key(key, request_options = nil); end
  def destroy; end
  def disable_rate_limit_forward; end
  def enable_rate_limit_forward(admin_api_key, end_user_ip, rate_limit_api_key); end
  def get(uri, type = nil, request_options = nil); end
  def get_api_key(key, request_options = nil); end
  def get_logs(options = nil, length = nil, type = nil); end
  def get_personalization_strategy(request_options = nil); end
  def get_task_status(index_name, taskID, request_options = nil); end
  def get_top_user_ids(request_options = nil); end
  def get_user_id(user_id, request_options = nil); end
  def get_user_key(key, request_options = nil); end
  def headers; end
  def hosts; end
  def init_analytics; end
  def init_index(name); end
  def initialize(data = nil); end
  def list_api_keys(request_options = nil); end
  def list_clusters(request_options = nil); end
  def list_indexes(request_options = nil); end
  def list_user_ids(page = nil, hits_per_page = nil, request_options = nil); end
  def list_user_keys(request_options = nil); end
  def move_index!(src_index, dst_index, request_options = nil); end
  def move_index(src_index, dst_index, request_options = nil); end
  def multiple_get_objects(requests, request_options = nil); end
  def multiple_queries(queries, options = nil, strategy = nil); end
  def perform_request(session, url, method, data, request_options); end
  def post(uri, body = nil, type = nil, request_options = nil); end
  def put(uri, body = nil, type = nil, request_options = nil); end
  def receive_timeout; end
  def remove_user_id(user_id, request_options = nil); end
  def request(uri, method, data = nil, type = nil, request_options = nil); end
  def restore_api_key(key, request_options = nil); end
  def search_hosts; end
  def search_timeout; end
  def search_user_id(query, cluster_name = nil, page = nil, hits_per_page = nil, request_options = nil); end
  def send_timeout; end
  def set_extra_header(key, value); end
  def set_personalization_strategy(strategy, request_options = nil); end
  def ssl; end
  def ssl_version; end
  def thread_local_hosts(read); end
  def update_api_key(key, object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def update_user_key(key, object, request_options = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, indexes = nil); end
  def wait_task(index_name, taskID, time_before_retry = nil, request_options = nil); end
  def with_rate_limits(end_user_ip, rate_limit_api_key, &block); end
end
class Algolia::Index
  def add_api_key(object, validity = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, request_options = nil); end
  def add_object!(object, objectID = nil, request_options = nil); end
  def add_object(object, objectID = nil, request_options = nil); end
  def add_objects!(objects, request_options = nil); end
  def add_objects(objects, request_options = nil); end
  def add_user_key(object, validity = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, request_options = nil); end
  def batch!(request, request_options = nil); end
  def batch(request, request_options = nil); end
  def batch_rules!(rules, forward_to_replicas = nil, clear_existing_rules = nil, request_options = nil); end
  def batch_rules(rules, forward_to_replicas = nil, clear_existing_rules = nil, request_options = nil); end
  def batch_synonyms!(synonyms, forward_to_replicas = nil, replace_existing_synonyms = nil, request_options = nil); end
  def batch_synonyms(synonyms, forward_to_replicas = nil, replace_existing_synonyms = nil, request_options = nil); end
  def browse(page_or_query_parameters = nil, hits_per_page = nil, request_options = nil, &block); end
  def browse_from(cursor, hits_per_page = nil, request_options = nil); end
  def build_batch(action, objects, with_object_id = nil); end
  def check_array(object); end
  def check_object(object, in_array = nil); end
  def clear!(request_options = nil); end
  def clear(request_options = nil); end
  def clear_index!(request_options = nil); end
  def clear_index(request_options = nil); end
  def clear_rules!(forward_to_replicas = nil, request_options = nil); end
  def clear_rules(forward_to_replicas = nil, request_options = nil); end
  def clear_synonyms!(forward_to_replicas = nil, request_options = nil); end
  def clear_synonyms(forward_to_replicas = nil, request_options = nil); end
  def client; end
  def client=(arg0); end
  def delete!(request_options = nil); end
  def delete(request_options = nil); end
  def delete_api_key(key, request_options = nil); end
  def delete_by!(params, request_options = nil); end
  def delete_by(params, request_options = nil); end
  def delete_by_query!(query, params = nil, request_options = nil); end
  def delete_by_query(query, params = nil, request_options = nil); end
  def delete_index!(request_options = nil); end
  def delete_index(request_options = nil); end
  def delete_object!(objectID, request_options = nil); end
  def delete_object(objectID, request_options = nil); end
  def delete_objects!(objects, request_options = nil); end
  def delete_objects(objects, request_options = nil); end
  def delete_rule!(objectID, forward_to_replicas = nil, request_options = nil); end
  def delete_rule(objectID, forward_to_replicas = nil, request_options = nil); end
  def delete_synonym!(objectID, forward_to_replicas = nil, request_options = nil); end
  def delete_synonym(objectID, forward_to_replicas = nil, request_options = nil); end
  def delete_user_key(key, request_options = nil); end
  def export_rules(hits_per_page = nil, request_options = nil, &_block); end
  def export_synonyms(hits_per_page = nil, request_options = nil, &_block); end
  def get_api_key(key, request_options = nil); end
  def get_object(objectID, attributes_to_retrieve = nil, request_options = nil); end
  def get_objectID(object, objectID = nil); end
  def get_objects(objectIDs, attributes_to_retrieve = nil, request_options = nil); end
  def get_rule(objectID, request_options = nil); end
  def get_settings(options = nil, request_options = nil); end
  def get_synonym(objectID, request_options = nil); end
  def get_task_status(taskID, request_options = nil); end
  def get_user_key(key, request_options = nil); end
  def initialize(name, client = nil); end
  def list_api_keys(request_options = nil); end
  def list_user_keys(request_options = nil); end
  def name; end
  def name=(arg0); end
  def partial_update_object!(object, objectID = nil, create_if_not_exits = nil, request_options = nil); end
  def partial_update_object(object, objectID = nil, create_if_not_exits = nil, request_options = nil); end
  def partial_update_objects!(objects, create_if_not_exits = nil, request_options = nil); end
  def partial_update_objects(objects, create_if_not_exits = nil, request_options = nil); end
  def replace_all_objects!(objects, request_options = nil); end
  def replace_all_objects(objects, request_options = nil); end
  def replace_all_rules!(rules, request_options = nil); end
  def replace_all_rules(rules, request_options = nil); end
  def replace_all_synonyms!(synonyms, request_options = nil); end
  def replace_all_synonyms(synonyms, request_options = nil); end
  def sanitized_delete_by_query_params(params); end
  def save_object!(object, objectID = nil, request_options = nil); end
  def save_object(object, objectID = nil, request_options = nil); end
  def save_objects!(objects, request_options = nil); end
  def save_objects(objects, request_options = nil); end
  def save_rule!(objectID, rule, forward_to_replicas = nil, request_options = nil); end
  def save_rule(objectID, rule, forward_to_replicas = nil, request_options = nil); end
  def save_synonym!(objectID, synonym, forward_to_replicas = nil, request_options = nil); end
  def save_synonym(objectID, synonym, forward_to_replicas = nil, request_options = nil); end
  def search(query, params = nil, request_options = nil); end
  def search_disjunctive_faceting(query, disjunctive_facets, params = nil, refinements = nil, request_options = nil); end
  def search_facet(facet_name, facet_query, search_parameters = nil, request_options = nil); end
  def search_for_facet_values(facet_name, facet_query, search_parameters = nil, request_options = nil); end
  def search_rules(query, params = nil, request_options = nil); end
  def search_synonyms(query, params = nil, request_options = nil); end
  def self.all(request_options = nil); end
  def set_settings!(new_settings, options = nil, request_options = nil); end
  def set_settings(new_settings, options = nil, request_options = nil); end
  def update_api_key(key, object, validity = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, request_options = nil); end
  def update_user_key(key, object, validity = nil, max_queries_per_IP_per_hour = nil, max_hits_per_query = nil, request_options = nil); end
  def wait_task(taskID, time_before_retry = nil, request_options = nil); end
end
class Algolia::Index::IndexBrowser
  def browse(request_options = nil, &block); end
  def initialize(client, name, params); end
end
class Algolia::Analytics
  def add_ab_test(ab_test); end
  def delete_ab_test(ab_test_id); end
  def get_ab_test(ab_test_id); end
  def get_ab_tests(params = nil); end
  def headers; end
  def initialize(client, params); end
  def perform_request(method, url, params = nil, data = nil); end
  def ssl; end
  def ssl_version; end
  def stop_ab_test(ab_test_id); end
  def wait_task(index_name, taskID, time_before_retry = nil, request_options = nil); end
end
class Algolia::Insights
  def initialize(app_id, api_key, region = nil, params = nil); end
  def perform_request(method, path, params = nil, data = nil); end
  def send_event(event); end
  def send_events(events); end
  def user(user_token); end
end
class Algolia::UserInsights
  def clicked(event, event_name, index_name, request_options = nil); end
  def clicked_filters(event_name, index_name, filters, request_options = nil); end
  def clicked_object_ids(event_name, index_name, object_ids, request_options = nil); end
  def clicked_object_ids_after_search(event_name, index_name, object_ids, positions, query_id, request_options = nil); end
  def converted(event, event_name, index_name, request_options = nil); end
  def converted_filters(event_name, index_name, filters, request_options = nil); end
  def converted_object_ids(event_name, index_name, object_ids, request_options = nil); end
  def converted_object_ids_after_search(event_name, index_name, object_ids, query_id, request_options = nil); end
  def initialize(insights, user_token); end
  def send_event(event); end
  def viewed(event, event_name, index_name, request_options = nil); end
  def viewed_filters(event_name, index_name, filters, request_options = nil); end
  def viewed_object_ids(event_name, index_name, object_ids, request_options = nil); end
end
class Algolia::AccountClient
  def self.copy_index!(source_index, destination_index, request_options = nil); end
  def self.copy_index(source_index, destination_index, request_options = nil); end
end
