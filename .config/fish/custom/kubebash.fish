function kubebash
    set -l PODNAME (kubegetpod $argv)
    if test -n "$PODNAME"
        kubectl exec -it $PODNAME -- bash
    end
end
