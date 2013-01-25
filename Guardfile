group :build do
  # HTML
  guard 'haml',
    :output => 'public',
    :input => 'src/haml',
    :all_on_start => true do
    watch %r{^src/haml/.+\.html\.haml}
  end
end

group :test do
  guard 'rspec', :version => 2 do
    watch(%r{^spec/.+_spec\.rb$})
    watch('spec/spec_helper.rb')  { "spec" }
    watch('spec/acceptance/acceptance_helper.rb')  { "spec" }

    watch(%r{^src/(.*)(\.erb|\.haml)$}) { "spec/acceptance" }
  end

   # Run JS and CoffeeScript files in a typical Rails 3.1 fashion, placing Underscore templates in app/views/*.jst
  # Your spec files end with _spec.{js,coffee}.

  spec_location = "spec/javascripts/%s_spec"

  # uncomment if you use NerdCapsSpec.js
  # spec_location = "spec/javascripts/%sSpec"

  guard 'jasmine-headless-webkit' do
    watch(%r{^app/views/.*\.jst$})
    watch(%r{^public/javascripts/(.*)\.js$}) { |m| newest_js_file(spec_location % m[1]) }
    watch(%r{^app/assets/javascripts/(.*)\.(js|coffee)$}) { |m| newest_js_file(spec_location % m[1]) }
    watch(%r{^spec/javascripts/(.*)_spec\..*}) { |m| newest_js_file(spec_location % m[1]) }
  end
end

guard 'livereload' do
  watch(%r{src/haml/(.+)\.haml}) { |m| "/#{m[1]}" }
  watch(%r{src/js/.+\.js}){ |m| "/assets/application.js" }
  watch(%r{src/scss/(.+)\.scss}) { |m| "/assets/#{m[1]}" }
  watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html)).*})  { |m| "/assets/#{m[2]}" }
end
