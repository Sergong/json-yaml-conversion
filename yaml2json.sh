#!/usr/bin/env python

import yaml, json, sys


yaml_in = sys.argv[1]
json_out = sys.argv[1].split('.')[0] + '.json'

with open(yaml_in, "r") as yaml_input, open(json_out, "w") as json_output:
  yaml_object = yaml.safe_load(yaml_input)
  json.dump(yaml_object, json_output, indent=2)


