echo
echo
echo 'Library / Entities API'
echo '-------------------------------------------------------------------------------------'
bundle exec rake test:lib:entities_api

echo
echo
echo 'Library / Use Cases API'
echo '-------------------------------------------------------------------------------------'
bundle exec rake test:lib:use_cases_api

echo
echo
echo 'Library / Ruby Persistence API with ActiveMemory Backend'
echo '-------------------------------------------------------------------------------------'
bundle exec rake test:lib:ruby_persistence_api BACKEND=active_memory

echo
echo
echo 'Library / Ruby Persistence API with ActiveRecord Backend'
echo '-------------------------------------------------------------------------------------'
bundle exec rake test:lib:ruby_persistence_api BACKEND=active_record
