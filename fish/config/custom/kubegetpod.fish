function kubegetpod
    if test (count $argv) -ne 1
        return
    end
    kubectl get pods | grep -Eo "$argv[1]-[0-9a-z]+-[0-9a-z]+ " | string trim
end
