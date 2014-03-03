#!/bin/bash
set -e
if [[ ! -e /opt/couchdb/var/lib/couchdb/_replicator.couch ]]; then
  echo "Configuring npmjs replication"

  setuser couchdb /opt/couchdb/bin/couchdb -o /tmp/couchdb.stdout -e /tmp/couchdb.stderr -b;

  curl -X POST http://localhost:5984/_replicator \
    -d '{"_id":"fullfatdb","source":"https://skimdb.npmjs.com/registry","target":"registry","continuous":true,"user_ctx":{"name":"admin","roles":["_admin"]}}' \
    -H "Content-Type: application/json"

  setuser couchdb /opt/couchdb/bin/couchdb -d;
fi
