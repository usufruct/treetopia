### Notes

Use `foreman` to load the environment vars when using `rake`. For example:

```
bundle exec foreman run rake <rake_command>
```

```
be foreman run -e .env,.env_local,.env_test rspec
```