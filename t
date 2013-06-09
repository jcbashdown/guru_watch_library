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
