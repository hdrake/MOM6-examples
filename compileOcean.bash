#!/bin/bash

conda activate mommy
 
mkdir -p build/ocean_only/
(cd build/ocean_only/; rm -f path_names; \
../../src/mkmf/bin/list_paths -l ./ ../../src/MOM6/{config_src/infra/FMS1,config_src/memory/dynamic_symmetric,config_src/drivers/solo_driver,config_src/external,src/{*,*/*}}/ ; \
../../src/mkmf/bin/mkmf -t ../../src/mkmf/templates/osx-gcc10.mk -o '-I../fms' -p MOM6 -l '-L../fms -lfms' path_names)
 
(cd build/ocean_only/; source ../env; make REPRO=1 MOM6 -j)
