# gadael-documentation

The documentation is available online at https://www.gadael.com/

Markdown documentation with mutiple versions generated from git tags or branchs

Link between files from differents languages using the contentId attribute.

## Build screenshots and indexes


```bash
./build.sh
```

The build script require the gadael repository cloned on the same level, screenshots
will be created on a gadael server using phantomjs as client and copied back to this
repository.

Indexes in languages folders will be updated automatically.
