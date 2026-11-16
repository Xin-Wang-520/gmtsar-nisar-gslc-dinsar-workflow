#!/bin/csh -f
# GSLC run4: unwrap A/B; see WORKFLOW_GSLC.md.
set script_dir = "$0:h"
if ("$script_dir" == "$0") set script_dir = "."
exec "$script_dir/gslc_workflow.csh" unwrap $argv:q
