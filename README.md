# big-tome

This project exists to test Tome's performance for very large static sites.

Currently, there are 10,000 nodes on this site, each with their own page.

You can run `./install.sh` to install the site, `./static.sh` to build the
static site, and `./lunr.sh` to build the search index.

## Un-scientific findings

On my 2015 MacBook Pro, my recent times are:

- `./install.sh`: 4.5 minutes
- `./static.sh`: 6 minutes
- `./lunr.sh`: 4 minutes

What makes consistent performance testing hard with Tome is that different PHP
configurations, Drupal sites, and machines can all affect numbers.

To get the best performance with this project or any large Tome site, it's up
to you to tweak the `--process-count`, `--path-count`, and `--entity-count`
options to match what your environment can handle.
