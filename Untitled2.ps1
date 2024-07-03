# Check if the Kafka, Zookeeper, Schema Registry, and Kafka Connect containers are running
$containers = docker ps --filter "name=kafka" --filter "name=zookeeper" --filter "name=schema-registry" --filter "name=connect"

if ($containers -match "Up") {
    Write-Output "Kafka, Zookeeper, Schema Registry, and Kafka Connect containers are running."
} else {
    Write-Output "One or more required containers are not running. Please check Docker."
    exit 1
}