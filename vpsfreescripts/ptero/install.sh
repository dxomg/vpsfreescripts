if warp h foo >/dev/null 2>&1; then
    echo "##############################"
    echo ""
    echo "Warp detected, Proceeding in 10 seconds"
    echo ""
    echo "For help contact vincyxirt#1098v or open Ticket"
    echo ""
    echo "##############################"
    sleep 10
    apt update -y && apt install curl -y
    bash <(curl -s https://pterodactyl-installer.se)



else
    echo "##############################"
    echo ""
    echo "Install warp first"
    echo ""
    echo "For help contact vincyxirt#1098"
    echo ""
    echo "##############################"