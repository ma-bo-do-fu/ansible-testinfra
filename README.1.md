# ansible-test

```
$ansible-galaxy install -r roles.yml -p roles/galaxy
$docker-compose up -d
$ansible-playbook site.yml -i docker -c docker -v
#$bundle exec rake spec
$pytest --hosts='docker://web' spec/test_app.py  -v
$pytest --hosts='docker://web' spec/test_web.py  -v
```
