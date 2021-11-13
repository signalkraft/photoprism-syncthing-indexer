# Photoprism Index Autoupdate with Syncthing Events

This Docker Compose setup of [PhotoPrism](https://photoprism.app/) uses [terminalnetwork/syncthing-hooks](https://github.com/terminalnetwork/syncthing-hooks) to update the library whenever the files in a Syncthing folder change.

1. Update `services.photoprism.volumes` in [docker-compose.yml](docker-compose.yml) to mount your Syncthing folders into PhotoPrism's originals
1. Update `services.watcher.environment` in [docker-compose.yml](docker-compose.yml) with API keys and the URL for Syncthing. You can leave `PHOTOPRISM_INDEX_URL` as is
1. Copy [watcher/syncthing-hooks/example-5s](watcher/syncthing-hooks/example-5s) to `watcher/syncthing-hooks/<syncthing-folder-id>-<interval>`. Interval needs to be compatible with [vercel/ms](https://github.com/vercel/ms)
1. Start with `docker-compose up -d`