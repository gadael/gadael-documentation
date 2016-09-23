# gadael-documentation

Markdown documentation with mutiple versions generated from git tags or branchs

Link beetween files from differents languages will be created from the first
3 characters of the filenames.

## Build screenshots and indexes


```bash
./build.sh
```

The build script require the gadael repository cloned on the same level, screenshots
will be created on a gadael server using phantomjs as client and copied back to this
repository.

Indexes in languages folders will be updated automatically.
