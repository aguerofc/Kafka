# Define the Kafka Connect REST API URL
$connectUrl = "http://localhost:8083"

# Get the list of connectors
$connectors = Invoke-RestMethod -Uri "$connectUrl/connectors" -Method Get

if ($connectors) {
    Write-Output "Connectors: $connectors"
} else {
    Write-Output "Failed to get the list of connectors."
    exit 1
}
