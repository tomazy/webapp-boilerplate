# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'haml',
  :output => 'public',
  :input => 'src/haml' do
  watch %r{^src/haml/.+(\.html\.haml)}
end

guard 'sass',
  :input => 'src/scss',
  :output => 'public/css',
  :extension => '',
  :all_on_start => true
