# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/pry-stack_explorer/all/pry-stack_explorer.rbi
#
# pry-stack_explorer-0.4.9.3
module PryStackExplorer
  def self.bindings_equal?(b1, b2); end
  def self.clear_frame_managers(_pry_); end
  def self.create_and_push_frame_manager(bindings, _pry_, options = nil); end
  def self.delete_frame_managers(_pry_); end
  def self.frame_hash; end
  def self.frame_manager(_pry_); end
  def self.frame_managers(_pry_); end
  def self.pop_frame_manager(_pry_); end
  def self.pop_helper(popped_fm, _pry_); end
  def self.push_helper(fm, options = nil); end
end
module PryStackExplorer::FrameHelpers
  def find_frame_by_block(up_or_down); end
  def find_frame_by_object_regex(class_regex, method_regex, up_or_down); end
  def find_frame_by_regex(regex, up_or_down); end
  def frame_description(b); end
  def frame_info(b, verbose = nil); end
  def frame_manager; end
  def frame_managers; end
  def prior_context_exists?; end
  def signature_with_owner(meth_obj); end
end
class PryStackExplorer::FrameManager
  def binding_index; end
  def binding_index=(arg0); end
  def bindings; end
  def bindings=(arg0); end
  def change_frame_to(index, run_whereami = nil); end
  def current_frame; end
  def each(&block); end
  def initialize(bindings, _pry_); end
  def prior_backtrace; end
  def prior_binding; end
  def refresh_frame(run_whereami = nil); end
  def set_binding_index_safely(index); end
  def user; end
  include Enumerable
end
class PryStackExplorer::WhenStartedHook
  def call(target, options, _pry_); end
  def caller_bindings(target); end
  def internal_frames_with_indices(bindings); end
  def nested_session?(bindings); end
  def pry_method_frame?(binding); end
  def remove_debugger_frames(bindings); end
  def remove_internal_frames(bindings); end
  def valid_call_stack?(bindings); end
  include Pry::Helpers::BaseHelpers
end
