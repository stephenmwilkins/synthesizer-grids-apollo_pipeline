

# sps
incident_grid='bpass-2.2.1-bin_chabrier03-0.1,300.0-ages:6.,7.,8.'

# default parameter file
default_param='cloudy-c23.01-sps'

# tests
test_params=( "default" "no_grains" "grains:ISM" "depletion_model:None" "alpha" "constant_pressure" "depletion_scale" "hydrogen_density" "ionisation_parameter" "no_abundance_scalings" "reference_abundance:Asplund2009")

for i in "${!test_params[@]}"; do
    test_param=${test_params[$i]}
    model=$incident_grid\_$default_param-$test_param
    echo $model
    # cd $model
    # tail run.sh
    # # sh run.sh
    # cd ..
done