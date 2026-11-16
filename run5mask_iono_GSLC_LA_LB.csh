#!/bin/csh -f
# Optional masked run5: 1 previews, 2 estimates with the saved preview selection.
set script_dir = "$0:h"
if ("$script_dir" == "$0") set script_dir = "."
if ($#argv == 0) then
    echo "Usage: $0 1 --mask-polygon E1 N1 E2 N2 E3 N3 E4 N4 --mask-mode exclude|keep"
    echo "       $0 2"
    echo "Outputs: iono_correction_mask/preview/ and iono_correction_mask/result/"
    exit 2
endif
exec "$script_dir/gslc_workflow.csh" mask $argv:q
