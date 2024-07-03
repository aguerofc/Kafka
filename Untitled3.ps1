# List Kafka topics
$topics = docker exec kafka kafka-topics --list --bootstrap-server kafka:9092

if ($topics) {
    Write-Output "Kafka topics: $topics"
} else {
    Write-Output "Failed to list Kafka topics."
    exit 1
}
