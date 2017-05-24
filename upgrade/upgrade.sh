#!/bin/bash

# script to update the virtual machine to 2.1 version

if [[ `id -u` -ne 0 ]]
  then echo "Este script de debe de ejecutar con sudo ..."
  exit
fi

echo "Upgrading ..."

pip install -U pandas
pip install openpyxl
pip install xlrd

riak-admin bucket-type create maps '{"props":{"datatype":"map"}}'
riak-admin bucket-type create sets '{"props":{"datatype":"set"}}'
riak-admin bucket-type create counters '{"props":{"datatype":"counter"}}'
riak-admin bucket-type create hlls  '{"props":{"datatype":"hll"}}'

riak-admin bucket-type activate maps
riak-admin bucket-type activate sets
riak-admin bucket-type activate counters

echo "All good ;-)"
