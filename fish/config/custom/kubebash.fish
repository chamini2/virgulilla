function kubebash
    if test (count $argv) -ne 1
        echo "Must provide 1 arg"
    end
    set -l PODNAME (kubectl get pods | grep -Eo "$argv[1]-[0-9a-z]+-[0-9a-z]+\b")
    kubectl exec -it $PODNAME -- bash
end
