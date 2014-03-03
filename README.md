# Easily replicate the full npmjs registry in a Docker-friendly container

> Build on the backs of [docker-npmjs](https://github.com/terinjokes/docker-npmjs), [docker-couchdb](https://github.com/terinjokes/docker-couchdb), and [baseimage-docker](https://github.com/phusion/baseimage-docker), docker-npmjs-skim is an easy to use container that replicates the entire public npmjs registry, excluding attachments.

This container is available for pulling from [the Docker registry](https://index.docker.io/u/terinjokes/npmjs-skim)!

---

## What's Inside?

In addition to what [docker-npmjs](https://github.com/terinjokes/docker-npmjs#whats-inside) provides, this container contains:

- Configuration of CouchDB's replication to automatically replicate the `skim` registry.

## Saving the database outside the container
You can save the databases outside the container by mapping it to a directory on your host:

```
docker run -v /path/on/host/couchdb:/opt/couchdb/var/lib/couchdb/:rw terinjokes/npmjs-skim
```

For more information, see the Docker documentation on [mounting a host directory](http://docs.docker.io/en/latest/use/working_with_volumes/#mount-a-host-directory-as-a-container-volume).

## Related Projects

- Looking to create a private npmjs registry? [docker-npmjs](https://github.com/terinjokes/docker-npmjs).
- Want a mirror of the public npmjs registry with the attachments? [skim](https://github.com/terinjokes/docker-npmjs-fullfat).
- Private registry with delegation to a public registry more your taste? [docker-npmjs-delegate](https://github.com/terinjokes/docker-npmjs-delegate).
