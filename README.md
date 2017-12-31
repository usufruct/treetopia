### Notes

Use `foreman` to load the environment vars when using `rake`. For example:

```
bundle exec foreman run rake <rake_command>
```


```
pg_dump --dbname=postgresql://mandible:mandible@localhost:5432/treetopia
```


SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
  AND table_schema = 'public'
  AND table_name != 'ar_internal_metadata'
  AND table_name != 'schema_migrations'
ORDER BY table_name;