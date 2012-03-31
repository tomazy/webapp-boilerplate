# More info at https://github.com/guard/guard#readme

group :build do
  # HTML
  guard 'haml',
    :output => 'public',
    :input => 'src/haml',
    :all_on_start => true do
    watch %r{^src/haml/.+\.html\.haml}
  end

  # CSS
  guard 'sass',
    :input => 'src/scss',
    :output => 'public/css',
    :extension => '',
    :all_on_start => true

  # JavaScript
  guard 'shell',
    :all_on_start => true do
    watch(%r{^src/js/(.+.js)}) {|m| `mkdir -p public/js && cp -v #{m[0]} public/js/#{m[1]}` }
  end
end

group :test do
  guard 'rspec', :version => 2 do
    watch(%r{^spec/.+_spec\.rb$})
    watch('spec/spec_helper.rb')  { "spec" }
    watch('spec/acceptance/acceptance_helper.rb')  { "spec" }

    watch(%r{^src/(.*)(\.erb|\.haml)$}) { "spec/acceptance" }
  end
end
