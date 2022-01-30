# recipe-app-api

> Recipe app api source code

## Create an alias for running tests

```shell
# add to .zshenv
alias testme='docker-compose run --rm app sh -c "python manage.py test && flake8"'
```
