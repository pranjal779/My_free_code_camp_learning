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


```sh
╭─   pran779  ~                                                            3.431s   17:11:46 
╰─ $ sudo systemctl restart kubelet

╭─   pran779  ~                                                                        17:12:28 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 17:12:28 IST; 5s ago
       Docs: https://kubernetes.io/docs/
    Process: 1267 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KU>
   Main PID: 1267 (code=exited, status=1/FAILURE)
        CPU: 163ms


╭─   pran779  ~                                                                        17:09:24 
╰─ $ sudo systemctl status containerd
[sudo] password for pran779:
● containerd.service - containerd container runtime
     Loaded: loaded (/lib/systemd/system/containerd.service; enabled; vendor preset: enabled)
     Active: active (running) since Sat 2026-04-04 17:08:11 IST; 1min 47s ago
       Docs: https://containerd.io
    Process: 295 ExecStartPre=/sbin/modprobe overlay (code=exited, status=0/SUCCESS)
   Main PID: 311 (containerd)
      Tasks: 34
     Memory: 65.5M
        CPU: 902ms
     CGroup: /system.slice/containerd.service
             └─311 /usr/bin/containerd

Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.106194784+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.106475278+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.122482461+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.128148261+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.279767102+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.279934111+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.279966793+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.279980559+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 containerd[311]: time="2026-04-04T17:08:11.280200068+05:30" level=info msg=>
Apr 04 17:08:11 Pranjal779 systemd[1]: Started containerd container runtime.

╭─   pran779  ~                                                             5.61s   17:10:00 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 17:10:04 IST; 3s ago
       Docs: https://kubernetes.io/docs/
    Process: 1040 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KU>
   Main PID: 1040 (code=exited, status=1/FAILURE)
        CPU: 171ms

╭─   pran779  ~                                                            7.141s   17:10:15 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 17:11:41 IST; 1s ago
       Docs: https://kubernetes.io/docs/
    Process: 1172 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KU>
   Main PID: 1172 (code=exited, status=1/FAILURE)
        CPU: 174ms
...skipping...
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 17:11:41 IST; 1s ago
       Docs: https://kubernetes.io/docs/
    Process: 1172 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KU>
   Main PID: 1172 (code=exited, status=1/FAILURE)
        CPU: 174ms
```

<img width="1726" height="1358" alt="image" src="https://github.com/user-attachments/assets/29d9950a-e45c-41c9-be15-419b919b0b69" />
<img width="2173" height="707" alt="image" src="https://github.com/user-attachments/assets/028779f3-63f4-49df-b498-afa301eb7821" />
<img width="2528" height="468" alt="image" src="https://github.com/user-attachments/assets/bed8d77f-3d20-429f-b171-56e79c7f73ea" />

<img width="2557" height="1191" alt="image" src="https://github.com/user-attachments/assets/0df2fa8b-cefd-452a-9f35-d1ae03fbcc22" />


```sh
╰─ $ sudo systemctl restart kubelet

╭─   pran779  ~                                                                                                                                                                                   17:25:13 
╰─ $ sudo systemctl status kubelet
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/lib/systemd/system/kubelet.service; enabled; vendor preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-04-04 17:25:13 IST; 1s ago
       Docs: https://kubernetes.io/docs/
    Process: 2771 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
   Main PID: 2771 (code=exited, status=1/FAILURE)
        CPU: 166ms

╭─   pran779  ~                                                                                                                                                                                   17:25:15 
╰─ $ sudo kubeadm init --pod-network-cidr=10.244.0.0/16
[init] Using Kubernetes version: v1.35.3
[preflight] Running pre-flight checks
        [WARNING ContainerRuntimeVersion]: You must update your container runtime to a version that supports the CRI method RuntimeConfig. Falling back to using cgroupDriver from kubelet config will be removed in 1.36. For more information, see https://git.k8s.io/enhancements/keps/sig-node/4033-group-driver-detection-over-cri
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action beforehand using 'kubeadm config images pull'
W0404 17:25:24.888713    2850 checks.go:906] detected that the sandbox image "registry.k8s.io/pause:3.8" of the container runtime is inconsistent with that used by kubeadm. It is recommended to use "REDACTED/REDACTED" as the CRI sandbox image.
[certs] Using certificateDir folder "/etc/kubernetes/pki"
[certs] Generating "ca" certificate and key
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local pranjal779] and IPs [REDACTED REDACTED9]
[certs] Generating "apiserver-kubelet-client" certificate and key
[certs] Generating "front-proxy-ca" certificate and key
[certs] Generating "front-proxy-client" certificate and key
[certs] Generating "etcd/ca" certificate and key
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [localhost pranjal779] and IPs [REDACTEDREDACTED1 ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [localhost pranjal779] and IPs [REDACTED REDACTED ::1]
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
[kubelet-check] Waiting for a healthy kubelet at http://REDACTED/healthz. This can take up to 4m0s
[kubelet-check] The kubelet is healthy after 502.078397ms
[control-plane-check] Waiting for healthy control plane components. This can take up to 4m0s
[control-plane-check] Checking kube-apiserver at https://REDACTEDlivez
[control-plane-check] Checking kube-controller-manager at https:/REDACTED/healthz
[control-plane-check] Checking kube-scheduler at https:/REDACTED/livez
[control-plane-check] kube-controller-manager is healthy after 2.507255643s
[control-plane-check] kube-scheduler is healthy after 3.82332415s
[control-plane-check] kube-apiserver is healthy after 6.502649122s
[upload-config] Storing the configuration used in ConfigMap "kubeadm-config" in the "kube-system" Namespace
[kubelet] Creating a ConfigMap "kubelet-config" in namespace kube-system with the configuration for the kubelets in the cluster
[upload-certs] Skipping phase. Please see --upload-certs
[mark-control-plane] Marking the node pranjal779 as control-plane by adding the labels: [node-role.kubernetes.io/control-plane node.kubernetes.io/exclude-from-external-load-balancers]
[mark-control-plane] Marking the node pranjal779 as control-plane by adding the taints [node-role.kubernetes.io/control-plane:NoSchedule]
[bootstrap-token] Using token: REDACTED.tokenREDACTED
[bootstrap-token] Configuring bootstrap tokens, cluster-info ConfigMap, RBAC Roles
[bootstrap-token] Configured RBAC rules to allow Node Bootstrap tokens to get nodes
[bootstrap-token] Configured RBAC rules to allow Node Bootstrap tokens to post CSRs in order for nodes to get long term certificate credentials
[bootstrap-token] Configured RBAC rules to allow the csrapprover controller automatically approve CSRs from a Node Bootstrap Token
[bootstrap-token] Configured RBAC rules to allow certificate rotation for all node client certificates in the cluster
[bootstrap-token] Creating the "cluster-info" ConfigMap in the "kube-public" namespace
[kubelet-finalize] Updating "/etc/kubernetes/kubelet.conf" to point to a rotatable kubelet client certificate and key
[addons] Applied essential addon: CoreDNS
[addons] Applied essential addon: kube-proxy

Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

  export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join REDACTED:port --token REDACTED.REDACTED \
        --discovery-token-ca-cert-hash REDACTED:REDACTED

╭─   pran779  ~                                                                                                                                                                      16.645s   17:25:40 
╰─ $
```

<img width="1262" height="682" alt="image" src="https://github.com/user-attachments/assets/bbfeda46-888c-421b-a426-540259fe59aa" />
<img width="1267" height="635" alt="image" src="https://github.com/user-attachments/assets/d39ad4a7-cf5d-45d1-9156-d3d848d2a048" />
<img width="1257" height="677" alt="image" src="https://github.com/user-attachments/assets/8cfb7818-add6-4bfd-9668-0cfd7f260b97" />

```sh
╭─   pran779  ~                                                                        17:35:16 
╰─ $ kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
namespace/kube-flannel created
clusterrole.rbac.authorization.k8s.io/flannel created
clusterrolebinding.rbac.authorization.k8s.io/flannel created
serviceaccount/flannel created
configmap/kube-flannel-cfg created
daemonset.apps/kube-flannel-ds created

╭─   pran779  ~                                                            1.601s   17:45:24 
╰─ $ kubectl get nodes
NAME         STATUS     ROLES           AGE   VERSION
pranjal779   NotReady   control-plane   19m   v1.35.3

╭─   pran779  ~                                                             646ms   17:45:32 
╰─ $ kubectl taint nodes --all node-role.kubernetes.io/control-plane:NoSchedule-
node/pranjal779 untainted

╭─   pran779  ~                                                             593ms   17:46:49 
╰─ $ kubectl get nodes
NAME         STATUS   ROLES           AGE   VERSION
pranjal779   Ready    control-plane   21m   v1.35.3

╭─   pran779  ~                                                             556ms   17:46:55 
╰─ $

╭─   pran779  ~                                                             556ms   17:46:55 
╰─ $ kubectl get pods -n kube-system
NAME                                 READY   STATUS    RESTARTS   AGE
coredns-7d764666f9-f6k2g             1/1     Running   0          22m
coredns-7d764666f9-zfqfh             1/1     Running   0          22m
etcd-pranjal779                      1/1     Running   3          22m
kube-apiserver-pranjal779            1/1     Running   3          22m
kube-controller-manager-pranjal779   1/1     Running   3          22m
kube-proxy-65ddp                     1/1     Running   0          22m
kube-scheduler-pranjal779            1/1     Running   3          22m

╭─   pran779  ~                                                             561ms   17:48:18 
╰─ $

```

<img width="1253" height="686" alt="image" src="https://github.com/user-attachments/assets/508bf402-0da1-4569-bdd7-3a985d122e24" />

<img width="1220" height="851" alt="image" src="https://github.com/user-attachments/assets/6faed771-1b23-4bbd-b7cd-dad5a826bc87" />
<img width="1233" height="861" alt="image" src="https://github.com/user-attachments/assets/bc61369f-0926-4cae-ae6e-5cd651083252" />

<img width="1267" height="685" alt="image" src="https://github.com/user-attachments/assets/ad6c9668-afe0-49e5-8bc8-669945e028b3" />

# kubeadm reset -f

Resets the Kubernetes node by removing the control-plane configuration, cluster state (etcd data), kubelet state, certificates, and Kubernetes manifests. It effectively brings the node back to a pre-initialized state, allowing fresh cluster setup using `kubeadm init`.  

Note: This command does not clean up CNI configurations, network rules, or user kubeconfig files.  

🧠 What is happening internally (step-by-step)
From your output, here’s what Kubernetes is doing:

🧩 1. Reads cluster configuration
Reading configuration from kubeadm-config ConfigMap
👉 It checks:

How the cluster was initialized

What components exist

🧩 2. Stops Kubernetes services
Stopping the kubelet service
👉 This stops:

kubelet (node agent)

which manages all pods on the node

🧩 3. Deletes control-plane components
Deleting /etc/kubernetes/manifests
👉 Removes:

kube-apiserver

kube-controller-manager

kube-scheduler

etcd

👉 These are the core control-plane static pods

🧩 4. Deletes etcd data
Deleted contents of /var/lib/etcd
👉 This removes:

Entire cluster state

All stored data (pods, configs, secrets, etc.)

👉 Think:

“Cluster memory wiped”

🧩 5. Cleans kubelet state
Deleting /var/lib/kubelet
👉 Removes:

Pod metadata

container references

🧩 6. Removes certificates & configs
Deleting /etc/kubernetes/pki
Deleting kubeconfig files
👉 Deletes:

TLS certificates

admin access configs

👉 This breaks:

authentication

API access

⚠️ What it does NOT remove
This part is VERY important (and often asked):

does not perform cleanup of:
- CNI plugin config
- network rules
- kubeconfig in home
👉 Meaning:

/etc/cni/ may still exist

iptables rules may remain

$HOME/.kube/config may remain

🧠 Correct interpretation (your understanding)
You said:

“I am resetting the environment, removing everything”

👉 ❌ Slightly incorrect
👉 ✅ Correct version:

“I am resetting the Kubernetes cluster configuration on this node, removing control-plane components, cluster state, and Kubernetes-managed configurations — but not the entire system or networking setup.”

🧠 When do we use kubeadm reset?
✅ Use cases:
Rebuilding cluster from scratch

Fixing broken cluster

Practicing installation repeatedly

❌ Not used for:
Deleting pods

Managing workloads

Normal operations


