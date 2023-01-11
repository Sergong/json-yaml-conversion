#!/usr/bin/env python

import yaml, json, sys

json_in = sys.argv[1]
yaml_out = sys.argv[1].split('.')[0] + '.yaml'

with open(json_in, "r") as json_input, open(yaml_out, "w") as yaml_output:
  json_object = json.load(json_input)
  yaml.safe_dump(json_object, yaml_output, default_flow_style=False)

# yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)

