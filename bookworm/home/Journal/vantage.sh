#!/bin/sh

main() {
    printf "1" | sudo tee /sys/devices/pci0000:00/0000:00:1f.0/PNP0C09:00/VPC2004:00/conservation_mode
    printf "1" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004\:00/conservation_mode

    cat /sys/devices/pci0000:00/0000:00:1f.0/PNP0C09:00/VPC2004:00/conservation_mode
    cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004\:00/conservation_mode
}

main "$@"
