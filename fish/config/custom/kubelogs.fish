function kubelogs
    set -l PODNAME (kubegetpod $argv)
    if test -n "$PODNAME"
        kubectl logs -f $PODNAME
    end
end