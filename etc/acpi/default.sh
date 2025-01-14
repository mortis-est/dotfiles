case "$group" in
    button)
        case "$action" in
            lid) case "$id" in
                close) /etc/acpi/actions/lid_sleep.sh ;;
                *) log_unhandled $* ;;
        esac ;;
