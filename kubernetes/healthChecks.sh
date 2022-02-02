echo "Show exmmaple configuration of liveness probe"
yq -Y .spec.containers[].livenessProbe  pods/healthy-monolith.yaml
echo "*********************************************"

echo "Show exmmaple configuration of readiness probe"
yq -Y .spec.containers[].readinessProbe  pods/healthy-monolith.yaml
echo "*********************************************"
