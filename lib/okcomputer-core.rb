require "okcomputer-core/configuration"
require "okcomputer-core/check"
require "okcomputer-core/check_collection"
require "okcomputer-core/registry"

# and the built-in checks
require "okcomputer-core/built_in_checks/size_threshold_check"
require "okcomputer-core/built_in_checks/active_record_check"
require "okcomputer-core/built_in_checks/default_check"
require "okcomputer-core/built_in_checks/mongoid_check"
require "okcomputer-core/built_in_checks/resque_backed_up_check"
require "okcomputer-core/built_in_checks/resque_down_check"
require "okcomputer-core/built_in_checks/delayed_job_backed_up_check"
require "okcomputer-core/built_in_checks/ruby_version_check"

module OKComputer
end

OKComputer::Registry.register "default", OKComputer::DefaultCheck.new
OKComputer::Registry.register "database", OKComputer::ActiveRecordCheck.new

