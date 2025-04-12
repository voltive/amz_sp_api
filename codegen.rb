#!/usr/bin/env ruby

require 'fileutils'
require 'json'

MODELS_ROOT = '../selling-partner-api-models/models'
CONFIG_TEMPLATE = 'config.json'
OUTPUT_BASE = 'lib'

# Iterate over each subdirectory in the models folder
Dir.glob("#{MODELS_ROOT}/*").each do |model_dir|
  next unless File.directory?(model_dir)

  # Extract API_NAME from directory name (remove -api-model)
  top_level_name = File.basename(model_dir).sub(/-api-model$/, '')
  api_base_snake = top_level_name.gsub(/([a-z])([A-Z])/, '\1_\2').tr('-', '_').downcase
  module_base_name = top_level_name.split('-').map(&:capitalize).join

  # Process each JSON file inside the subdirectory
  Dir.glob("#{model_dir}/*.json").each do |file|
    filename = File.basename(file, '.json')

    match = filename.match(/^([a-zA-Z]+)(V[0-9]+)?_?([0-9]{4}-[0-9]{2}-[0-9]{2})?$/)
    unless match
      puts "Could not parse: #{filename}"
      next
    end

    raw_v_legacy = match[2]
    raw_v_date = match[3]

    # Build version suffix
    version_suffix = if raw_v_legacy
      "_#{raw_v_legacy.downcase}"
    elsif raw_v_date
      "_#{raw_v_date.tr('-', '_')}"
    else
      ""
    end

    # Final file name (snake_case)
    api_file_name = "#{api_base_snake}#{version_suffix}.rb"
    api_folder = api_file_name.sub('.rb', '')

    # Final module name (CamelCase + version)
    version_class = if raw_v_legacy
      raw_v_legacy.capitalize
    elsif raw_v_date
      raw_v_date.delete('-')
    else
      ""
    end

    module_name = "#{module_base_name}#{version_class}"

    puts "API_NAME: #{api_file_name}"
    puts "MODULE_NAME: #{module_name}"

    # Output paths
    output_dir = "#{OUTPUT_BASE}/#{api_folder}"
    FileUtils.rm_rf(output_dir) if Dir.exist?(output_dir)
    FileUtils.mkdir_p(output_dir)

    # Copy and customize config.json
    FileUtils.cp(CONFIG_TEMPLATE, "#{output_dir}/config.json")
    config_content = File.read("#{output_dir}/config.json")
    config_content.gsub!('GEMNAME', api_folder)
    config_content.gsub!('MODULENAME', module_name)
    File.write("#{output_dir}/config.json", config_content)

    # Generate using Swagger Codegen
    system("swagger-codegen generate -i #{file} -l ruby -c #{output_dir}/config.json -o #{output_dir}")

    # Rearrange generated files
    main_file = "#{output_dir}/lib/#{api_folder}.rb"
    if File.exist?(main_file)
      FileUtils.mv(main_file, "#{OUTPUT_BASE}/", force: true)
    end

    inner_dir = "#{output_dir}/lib/#{api_folder}"
    if Dir.exist?(inner_dir)
      FileUtils.mv(Dir.glob("#{inner_dir}/*"), output_dir, force: true)
    end

    FileUtils.rm_rf("#{output_dir}/lib")
    FileUtils.rm_rf(Dir.glob("#{output_dir}/*.gemspec"))
  end
end
