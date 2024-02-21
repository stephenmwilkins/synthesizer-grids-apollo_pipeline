#!/bin/bash
grid_dir="/research/astrodata/highz/synthesizer/grids" # apollo
cloudy_dir="/research/astrodata/highz/synthesizer/cloudy"
cd ..
while IFS="" read -r p || [ -n "$p" ]
do
  arrIN=(${p// / })
  grid=${arrIN[0]}
  echo $grid
  python3 create_synthesizer_grid.py -grid_name $grid -grid_dir $grid_dir -cloudy_dir $cloudy_dir -line_calc_method linelist
done < synthesizer-grids-apollo_pipeline/grids.txt



