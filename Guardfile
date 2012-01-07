# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', :cucumber => false, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('spec/spec_helper.rb')
end

# guard 'coffeescript', :input => 'app/coffeescripts', :output => 'public/javascripts'

# rspec_options = {
#   :version => 2,
#   :all_on_start => false,
#   :all_after_pass => false,
#   :cli => '-f documentation --drb -t ~@slow',
# }
# guard 'rspec', rspec_options do
  # watch(%r{^spec/controllers/(.+)_spec\.rb$}) { |m| "spec/controllers/#{m[1]}_spec.rb" }

  # watch(%r{^spec/controllers/(.+)_spec\.rb$}) { |m| "spec/controllers/#{m[1]}_spec.rb" }
  # watch(%r{^spec/helpers/(.+)_spec\.rb$})     { |m| "spec/helpers/#{m[1]}_spec.rb" }
  # watch(%r{^spec/models/(.+)_spec\.rb$})      { |m| "spec/models/#{m[1]}_spec.rb" }

  # watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  # watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  # watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  # watch('spec/spec_helper.rb')                        { "spec" }
  # # watch('config/routes.rb')                           { "spec/routing" }
  # watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  # # Capybara request specs
  # # watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }
# end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end
