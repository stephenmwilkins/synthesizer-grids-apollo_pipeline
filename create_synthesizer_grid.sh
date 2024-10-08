#!/bin/bash

# path to directory containing grid files
grid_dir="/research/astrodata/highz/synthesizer/grids" 

# path to directory to save cloudy runs
cloudy_dir="/research/astrodata/highz/synthesizer/cloudy"

# machine
machine="apollo"

cd ..
while IFS="" read -r p || [ -n "$p" ]
do
  arrIN=(${p// / })
  incident=${arrIN[0]}
  params=${arrIN[1]}
  printf '%s\n' "$sps"
  printf '%s\n' "$params"
  com=create_synthesizer_grid.py -grid_dir $grid_dir -cloudy_dir $cloudy_dir -machine $machine -incident_grid $incident -cloudy_params $params
  echo $com
  python $com
done < synthesizer-grids-apollo_pipeline/create_synthesizer_grid.txt
