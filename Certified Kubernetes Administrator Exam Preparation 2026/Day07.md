<img width="1227" height="802" alt="image" src="https://github.com/user-attachments/assets/ff9e51a4-8224-4fd6-ae63-19051ab161d4" />

<img width="1227" height="805" alt="image" src="https://github.com/user-attachments/assets/8b1ebdcd-04fe-44bb-96c3-fb94c5ec8c83" />
<img width="1537" height="161" alt="image" src="https://github.com/user-attachments/assets/aad9a69b-efc7-43e4-bf3b-e87fa3634288" />
<img width="1460" height="108" alt="image" src="https://github.com/user-attachments/assets/a007e5f4-1f36-4ec5-9c2d-e4bbe10a5968" />
<img width="1603" height="191" alt="image" src="https://github.com/user-attachments/assets/d25d3303-d261-42de-8597-d8f504f98cb1" />

### Configure kubectl for the administrative user:
first make the directory mkdir -p $ HOME/.kube

Then copy the cluster administrator configuration file created by cube adm to the standard location

the change the ownership so the current nonroot user can securely interact with the cluster using the cube 

<img width="1770" height="322" alt="image" src="https://github.com/user-attachments/assets/dfc0dc00-d130-4739-8f72-3874631f53f6" />


some errors:
```sh
╰─ $ kubectl taint nodes -all node-role.kubernetes.io/control-plane:NoSchedule-
error: unknown shorthand flag: 'a' in -all
See 'kubectl taint --help' for usage.

╭─   pran779  ~                                              609ms   12:08:13 
╰─ $ kubectl taint nodes --all node-role.kubernetes.io/control-plane:NoSchedule-
E0404 12:08:25.099989    7665 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https:///<ip:port>/api?timeout=32s\": dial tcp /<ip:port>: connect: connection refused"
E0404 12:08:25.100503    7665 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https:///<ip:port>/api?timeout=32s\": dial tcp /<ip:port>: connect: connection refused"
The connection to the server 172.23.55.169:6443 was refused - did you specify the right host or port?

╭─   pran779  ~                                                         12:08:25 
╰─ $ sudo kubeadm reset
[sudo] password for pran779:
[reset] Reading configuration from the "kubeadm-config" ConfigMap in namespace "kube-system"...
[reset] Use 'kubeadm init phase upload-config kubeadm --config your-config-file' to re-upload it.
W0404 12:08:59.682305    7754 reset.go:141] [reset] Unable to fetch the kubeadm-config ConfigMap from cluster: failed to get config map: Get "https://<ip:port>/api/v1/namespaces/kube-system/configmaps/kubeadm-config?timeout=10s": dial tcp /<ip:port>: connect: connection refused
W0404 12:08:59.684419    7754 preflight.go:55] [reset] WARNING: Changes made to this host by 'kubeadm init' or 'kubeadm join' will be reverted.
[reset] Are you sure you want to proceed? [y/N]: N
error: error execution phase preflight: won't proceed; the user didn't answer (Y|y) in order to continue
To see the stack trace of this error execute with --v=5 or higher

╭─   pran779  ~                                            29.054s   12:09:24 
╰─ $ sudo kubeadm init --pod-network-cidr=10.244.0.0/16
[init] Using Kubernetes version: v1.35.3
[preflight] Running pre-flight checks
        [WARNING ContainerRuntimeVersion]: You must update your container runtime to a version that supports the CRI method RuntimeConfig. Falling back to using cgroupDriver from kubelet config will be removed in 1.36. For more information, see https://git.k8s.io/enhancements/keps/sig-node/4033-group-driver-detection-over-cri
        [WARNING Swap]: swap is supported for cgroup v2 only. The kubelet must be properly configured to use swap. Please refer to https://kubernetes.io/docs/concepts/architecture/nodes/#swap-memory, or disable swap on the node
[preflight] Some fatal errors occurred:
        [ERROR FileAvailable--etc-kubernetes-manifests-kube-apiserver.yaml]: /etc/kubernetes/manifests/kube-apiserver.yaml already exists
        [ERROR FileAvailable--etc-kubernetes-manifests-kube-controller-manager.yaml]: /etc/kubernetes/manifests/kube-controller-manager.yaml already exists
        [ERROR FileAvailable--etc-kubernetes-manifests-kube-scheduler.yaml]: /etc/kubernetes/manifests/kube-scheduler.yaml already exists
        [ERROR FileAvailable--etc-kubernetes-manifests-etcd.yaml]: /etc/kubernetes/manifests/etcd.yaml already exists
        [ERROR DirAvailable--var-lib-etcd]: /var/lib/etcd is not empty
[preflight] If you know what you are doing, you can make a check non-fatal with `--ignore-preflight-errors=...`
error: error execution phase preflight: preflight checks failed
To see the stack trace of this error execute with --v=5 or higher

╭─   pran779  ~                                              954ms   12:10:21 
╰─ $


```

<img width="2548" height="748" alt="image" src="https://github.com/user-attachments/assets/64b5b996-c351-40a1-875a-41f610b75a23" />


```sh
╰─ $ sudo kubeadm reset
[reset] Reading configuration from the "kubeadm-config" ConfigMap in namespace "kube-system"...
[reset] Use 'kubeadm init phase upload-config kubeadm --config your-config-file' to re-upload it.
W0404 12:23:42.022669    9372 reset.go:141] [reset] Unable to fetch the kubeadm-config ConfigMap from cluster: failed to get config map: Get "https://172.23.55.169:6443/api/v1/namespaces/kube-system/configmaps/kubeadm-config?timeout=10s": dial tcp 172.23.55.169:6443: connect: connection refused
W0404 12:23:42.022818    9372 preflight.go:55] [reset] WARNING: Changes made to this host by 'kubeadm init' or 'kubeadm join' will be reverted.
[reset] Are you sure you want to proceed? [y/N]: y
[preflight] Running pre-flight checks
W0404 12:23:44.220077    9372 removeetcdmember.go:105] [reset] No kubeadm config, using etcd pod spec to get data directory
[reset] Deleted contents of the etcd data directory: /var/lib/etcd
[reset] Stopping the kubelet service
[reset] Unmounting mounted directories in "/var/lib/kubelet"
[reset] Deleting contents of directories: [/etc/kubernetes/manifests /var/lib/kubelet /etc/kubernetes/pki]
[reset] Deleting files: [/etc/kubernetes/admin.conf /etc/kubernetes/super-admin.conf /etc/kubernetes/kubelet.conf /etc/kubernetes/bootstrap-kubelet.conf /etc/kubernetes/controller-manager.conf /etc/kubernetes/scheduler.conf]

The reset process does not perform cleanup of CNI plugin configuration,
network filtering rules and kubeconfig files.

For information on how to perform this cleanup manually, please see:
    https://k8s.io/docs/reference/setup-tools/kubeadm/kubeadm-reset/


╭─   pran779  ~                                             2.881s   12:23:44 
╰─ $
```

```sh
╭─   pran779  ~                                             2.881s   12:23:44 
╰─ $ sudo rm -rf /etc/kubernetes/

╭─   pran779  ~                                                         12:25:05 
╰─ $ sudo rm -rf /var/lib/etcd

╭─   pran779  ~                                                         12:25:16 
╰─ $ sudo systemctl restart containerd
[sudo] password for pran779:

╭─   pran779  ~                                             6.411s   12:45:50 
╰─ $ sudo systemctl status containerd
● containerd.service - containerd container runtime
     Loaded: loaded (/lib/systemd/system/containerd.service; enabled; vendor preset: en>
     Active: active (running) since Sat 2026-04-04 12:45:50 IST; 15s ago
       Docs: https://containerd.io
    Process: 9521 ExecStartPre=/sbin/modprobe overlay (code=exited, status=0/SUCCESS)
   Main PID: 9522 (containerd)
      Tasks: 18
     Memory: 24.3M
        CPU: 359ms
     CGroup: /system.slice/containerd.service
             └─9522 /usr/bin/containerd

Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.886570875+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.886940424+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.886950166+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.887012667+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.920875376+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.921001342+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.921019387+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.921026423+05:30">
Apr 04 12:45:50 Pranjal779 containerd[9522]: time="2026-04-04T12:45:50.921151453+05:30">
Apr 04 12:45:50 Pranjal779 systemd[1]: Started containerd container runtime.
lines 1-22/22 (END)
```

<img width="1260" height="961" alt="image" src="https://github.com/user-attachments/assets/c638c074-a979-4a13-ba85-4f21de45419c" />

```sh
╭─   pran779  ~                                                                                                                                                                       28.68s   12:46:35 
╰─ $ sudo kubeadm init --pod-network-cidr=10.244.0.0/16
[init] Using Kubernetes version: v1.35.3
[preflight] Running pre-flight checks
        [WARNING ContainerRuntimeVersion]: You must update your container runtime to a version that supports the CRI method RuntimeConfig. Falling back to using cgroupDriver from kubelet config will be removed in 1.36. For more information, see https://git.k8s.io/enhancements/keps/sig-node/4033-group-driver-detection-over-cri
        [WARNING Swap]: swap is supported for cgroup v2 only. The kubelet must be properly configured to use swap. Please refer to https://kubernetes.io/docs/concepts/architecture/nodes/#swap-memory, or disable swap on the node
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action beforehand using 'kubeadm config images pull'
W0404 12:47:46.255445    9605 checks.go:906] detected that the sandbox image "registry.k8s.io/pause:3.8" of the container runtime is inconsistent with that used by kubeadm. It is recommended to use "registry.k8s.io/pause:3.10.1" as the CRI sandbox image.
[certs] Using certificateDir folder "/etc/kubernetes/pki"
[certs] Generating "ca" certificate and key
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local pranjal779] and IPs [/REDACTED /REDACTED]
[certs] Generating "apiserver-kubelet-client" certificate and key
[certs] Generating "front-proxy-ca" certificate and key
[certs] Generating "front-proxy-client" certificate and key
[certs] Generating "etcd/ca" certificate and key
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [localhost pranjal779] and IPs [/REDACTED /REDACTED ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [localhost pranjal779] and IPs [/REDACTED /REDACTED ::1]
[certs] Generating "etcd/healthcheck-client" certificate and key
[certs] Generating "apiserver-etcd-client" certificate and key
[certs] Generating "sa" key and public key
[kubeconfig] Using kubeconfig folder "/etc/kubernetes"
[kubeconfig] Writing "admin.conf" kubeconfig file
[kubeconfig] Writing "super-admin.conf" kubeconfig file
[kubeconfig] Writing "kubelet.conf" kubeconfig file
[kubeconfig] Writing "controller-manager.conf" kubeconfig file
[kubeconfig] Writing "scheduler.conf" kubeconfig file
[etcd] Creating static Pod manifest for local etcd in "/etc/kubernetes/manifests"
[control-plane] Using manifest folder "/etc/kubernetes/manifests"
[control-plane] Creating static Pod manifest for "kube-apiserver"
[control-plane] Creating static Pod manifest for "kube-controller-manager"
[control-plane] Creating static Pod manifest for "kube-scheduler"
[kubelet-start] Writing kubelet environment file with flags to file "/var/lib/kubelet/kubeadm-flags.env"
[kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/instance-config.yaml"
[patches] Applied patch of type "application/strategic-merge-patch+json" to target "kubeletconfiguration"
[kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/config.yaml"
[kubelet-start] Starting the kubelet
[wait-control-plane] Waiting for the kubelet to boot up the control plane as static Pods from directory "/etc/kubernetes/manifests"
[kubelet-check] Waiting for a healthy kubelet at http:///REDACTEDhealthz. This can take up to 4m0s
[kubelet-check] The kubelet is not healthy after 4m0.000771671s

Unfortunately, an error has occurred, likely caused by:
        - The kubelet is not running
        - The kubelet is unhealthy due to a misconfiguration of the node in some way (required cgroups disabled)

If you are on a systemd-powered system, you can try to troubleshoot the error with the following commands:
        - 'systemctl status kubelet'
        - 'journalctl -xeu kubelet'

error: error execution phase wait-control-plane: failed while waiting for the kubelet to start: The HTTP call equal to 'curl -sSL http://127.0.0.1:10248/healthz' returned error: Get "http://REDACTED/healthz": context deadline exceeded

To see the stack trace of this error execute with --v=5 or higher

╭─   pran779  ~                                                                                                                                                                   4m 17.521s   12:52:03 
╰─ $

╭─   pran779  ~                                                                                                                                                                   4m 17.521s   12:52:03 
╰─ $ sudo systemctl status kubelet
[sudo] password for pran779:
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 13:19:09 IST; 13s ago
       Docs: https://kubernetes.io/docs/
    Process: 12673 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
   Main PID: 12673 (code=exited, status=1/FAILURE)
        CPU: 141ms

╭─   pran779  ~                                                                                                                                                                       4.061s   13:19:23 
╰─ $ sudo systemctl restart kubelet

╭─   pran779  ~                                                                                                                                                                                   13:19:35 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 13:19:35 IST; 1s ago
       Docs: https://kubernetes.io/docs/
    Process: 12766 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
   Main PID: 12766 (code=exited, status=1/FAILURE)
        CPU: 136ms

╭─   pran779  ~                                                                                                                                                                                   13:19:36 
╰─ $ sudo systemctl enable kubelet

╭─   pran779  ~                                                                                                                                                                       1.251s   13:19:45 
╰─ $ sudo systemctl restart kubelet

╭─   pran779  ~                                                                                                                                                                                   13:19:50 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 13:19:50 IST; 2s ago
       Docs: https://kubernetes.io/docs/
    Process: 12915 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
   Main PID: 12915 (code=exited, status=1/FAILURE)
        CPU: 150ms

╭─   pran779  ~                                                                                                                                                                                   13:19:52 
╰─ $ sudo systemctl start kubelet

╭─   pran779  ~                                                                                                                                                                       2.903s   13:20:01 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 13:20:01 IST; 1s ago
       Docs: https://kubernetes.io/docs/
    Process: 12997 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
   Main PID: 12997 (code=exited, status=1/FAILURE)
        CPU: 143ms

╭─   pran779  ~                                                                                                                                                                                   13:20:02 
╰─ $

╭─   pran779  ~                                                                                                                                                                                   13:20:02 
╰─ $


╭─   pran779  ~/k8practice                                 4m 8.8s   13:35:53 
╰─ $ mkdir -p $HOME/.kube

╭─   pran779  ~/k8practice                                              13:36:43 
╰─ $ sudo cp -i /etc/kubernetes/admin.conf $HOME/.config

╭─   pran779  ~/k8practice                                              13:37:11 
╰─ $ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
cp: overwrite '/home/pran779/.kube/config'? y

╭─   pran779  ~/k8practice                                  4.335s   13:37:27 
╰─ $ sudo chown $(id -u):$(id -g) $HOME/.kube/config

╭─   pran779  ~/k8practice                                              13:38:23 
╰─ $ kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
error: error validating "https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml": error validating data: failed to download openapi: Get "https://172.23.55.169:6443/openapi/v2?timeout=32s": dial tcp 172.23.55.169:6443: connect: connection refused; if you choose to ignore these errors, turn validation off with --validate=false

╭─   pran779  ~/k8practice                                  1.797s   13:38:33 
╰─ $ kubectl get nodes
E0404 13:47:28.034393   17638 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:47:28.034864   17638 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:47:28.036577   17638 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:47:28.036997   17638 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:47:28.038597   17638 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
The connection to the server 172.23.55.169:6443 was refused - did you specify the right host or port?

╭─   pran779  ~/k8practice                                              13:47:28 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabl>
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 13:48:0>
       Docs: https://kubernetes.io/docs/
    Process: 17722 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_>
   Main PID: 17722 (code=exited, status=1/FAILURE)
        CPU: 146ms

╭─   pran779  ~/k8practice                                 10.511s   13:48:22 
╰─ $ sudo systemctl restart containerd
sudo systemctl restart kubelet

╭─   pran779  ~/k8practice                                              13:48:46 
╰─ $

╭─   pran779  ~/k8practice                                              13:50:00 
╰─ $ kubectl get nodes
E0404 13:50:08.392618   18070 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:50:08.393226   18070 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:50:08.395345   18070 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:50:08.395902   18070 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
E0404 13:50:08.397600   18070 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"https://172.23.55.169:6443/api?timeout=32s\": dial tcp 172.23.55.169:6443: connect: connection refused"
The connection to the server 172.23.55.169:6443 was refused - did you specify the right host or port?

╭─   pran779  ~/k8practice                                              13:50:08 
╰─ $ sudo kubeadm reset -f
sudo rm -rf /etc/kubernetes/
sudo rm -rf /var/lib/etcd^C

╭─   pran779  ~/k8practice                                              13:50:26 
╰─ $ sudo kubeadm reset -f
[reset] Reading configuration from the "kubeadm-config" ConfigMap in namespace "kube-system"...
[reset] Use 'kubeadm init phase upload-config kubeadm --config your-config-file' to re-upload it.
W0404 13:50:36.239878   18172 reset.go:141] [reset] Unable to fetch the kubeadm-config ConfigMap from cluster: failed to get config map: Get "https://172.23.55.169:6443/api/v1/namespaces/kube-system/configmaps/kubeadm-config?timeout=10s": dial tcp 172.23.55.169:6443: connect: connection refused
[preflight] Running pre-flight checks
W0404 13:50:36.240055   18172 removeetcdmember.go:105] [reset] No kubeadm config, using etcd pod spec to get data directory
[reset] Stopping the kubelet service
[reset] Unmounting mounted directories in "/var/lib/kubelet"
[reset] Deleting contents of directories: [/etc/kubernetes/manifests /var/lib/kubelet /etc/kubernetes/pki]
[reset] Deleting files: [/etc/kubernetes/admin.conf /etc/kubernetes/super-admin.conf /etc/kubernetes/kubelet.conf /etc/kubernetes/bootstrap-kubelet.conf /etc/kubernetes/controller-manager.conf /etc/kubernetes/scheduler.conf]

The reset process does not perform cleanup of CNI plugin configuration,
network filtering rules and kubeconfig files.

For information on how to perform this cleanup manually, please see:
    https://k8s.io/docs/reference/setup-tools/kubeadm/kubeadm-reset/


╭─   pran779  ~/k8practice                                              13:50:36 
╰─ $

╭─   pran779  ~/k8practice                                                                14:25:37 
╰─ $ sudo swapoff -a
[sudo] password for pran779:

╭─   pran779  ~/k8practice                                                   17.145s   14:25:56 
╰─ $ sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

╭─   pran779  ~/k8practice                                                                14:26:26 
╰─ $ free -h
               total        used        free      shared  buff/cache   available
Mem:           6.7Gi       886Mi       5.1Gi       4.0Mi       768Mi       5.7Gi
Swap:             0B          0B          0B

╭─   pran779  ~/k8practice                                                                14:27:06 
╰─ $

`````````````

<img width="1312" height="802" alt="image" src="https://github.com/user-attachments/assets/e0f0af8f-9fe8-4604-a710-2e2e725a11cc" />

```sh

╭─   pran779  ~/k8practice                                                                14:25:37 
╰─ $ sudo swapoff -a
[sudo] password for pran779:

╭─   pran779  ~/k8practice                                                   17.145s   14:25:56 
╰─ $ sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

╭─   pran779  ~/k8practice                                                                14:26:26 
╰─ $ free -h
               total        used        free      shared  buff/cache   available
Mem:           6.7Gi       886Mi       5.1Gi       4.0Mi       768Mi       5.7Gi
Swap:             0B          0B          0B

╭─   pran779  ~/k8practice                                                                14:27:06 
╰─ $ sudo systemctl restart kubelet

╭─   pran779  ~/k8practice                                                                14:28:18 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: active (running) since Sat 2026-04-04 14:28:18 IST; 13s ago
       Docs: https://kubernetes.io/docs/
   Main PID: 22346 (kubelet)
      Tasks: 19 (limit: 8209)
     Memory: 28.1M
        CPU: 1.395s
     CGroup: /system.slice/kubelet.service
             └─22346 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kub>

Apr 04 14:28:19 Pranjal779 kubelet[22346]: I0404 14:28:19.616187   22346 apiserver.go:52] "Watching apise>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: I0404 14:28:19.625953   22346 desired_state_of_world_populator>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: I0404 14:28:19.671518   22346 kubelet.go:3340] "Creating a mir>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: I0404 14:28:19.671667   22346 kubelet.go:3340] "Creating a mir>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: I0404 14:28:19.671977   22346 kubelet.go:3340] "Creating a mir>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: I0404 14:28:19.671982   22346 kubelet.go:3340] "Creating a mir>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: E0404 14:28:19.686818   22346 kubelet.go:3342] "Failed creatin>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: E0404 14:28:19.687480   22346 kubelet.go:3342] "Failed creatin>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: E0404 14:28:19.687480   22346 kubelet.go:3342] "Failed creatin>
Apr 04 14:28:19 Pranjal779 kubelet[22346]: E0404 14:28:19.687495   22346 kubelet.go:3342] "Failed creatin>
lines 1-23/23 (END)

```
