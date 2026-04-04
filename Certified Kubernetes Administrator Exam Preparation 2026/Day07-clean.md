```sh
╭─   pran779  ~                                                                                                                                                                                   17:19:17 
╰─ $ free -h
               total        used        free      shared  buff/cache   available
Mem:           6.7Gi       553Mi       5.8Gi       3.0Mi       332Mi       6.0Gi
Swap:          2.0Gi          0B       2.0Gi

╭─   pran779  ~                                                                                                                                                                                   17:20:21 
╰─ $ sudo nano /etc/fstab

╭─   pran779  ~                                                                                                                                                                   1m 32.739s   17:23:18 
╰─ $ cat /etc/fstab
# UNCONFIGURED FSTAB FOR BASE SYSTEM
/swapfile none swap sw 0 0

╭─   pran779  ~                                                                                                                                                                                   17:23:26 
╰─ $ free -h
               total        used        free      shared  buff/cache   available
Mem:           6.7Gi       552Mi       5.8Gi       3.0Mi       336Mi       6.0Gi
Swap:          2.0Gi          0B       2.0Gi

╭─   pran779  ~                                                                                                                                                                                   17:23:42 
╰─ $ sudo swapoff -a

╭─   pran779  ~                                                                                                                                                                                   17:24:08 
╰─ $ free -h
               total        used        free      shared  buff/cache   available
Mem:           6.7Gi       557Mi       5.8Gi       3.0Mi       340Mi       6.0Gi
Swap:             0B          0B          0B

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

╭─   pran779  ~                                                                                                                                                                      16.645s   17:25:40 
╰─ $ mkdir -p $HOME/.kube

╭─   pran779  ~                                                                        17:28:30 
╰─ $ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

╭─   pran779  ~                                                                        17:28:57 
╰─ $ sudo chown $(id -u):$(id -g) $HOME/.kube/config

╭─   pran779  ~                                                                        17:29:37 
╰─ $ kubectl get nodes
NAME         STATUS     ROLES           AGE    VERSION
pranjal779   NotReady   control-plane   4m8s   v1.35.3


╭─   pran779  ~                                                                        17:35:08 
╰─ $ history 50
  801  sudo kubeadm init --pod-network-cidr=10.244.0.0/16
  802  kubectl get nodes
  803  mkdir -p $HOME/.kube
  804  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  805  sudo chown $(id -u):$(id -g) $HOME/.kube/config
  806  kubectl get nodes
  807  kubectl get pods -A
  808  sudo kubeadm reset -f
  809  sudo rm -rf /etc/kubernetes/
  810  sudo rm -rf /var/lib/etcd
  811  rm -rf $HOME/.kube
  812  hostory
  813  history
  814  sudo systemctl status containerd
  815  sudo systemctl status kubelet
  816  sudo systemctl restart kubelet
  817  sudo systemctl status kubelet
  818  kubectl get pods
  819  sudo kill PID 1267
  820  sudo kill 1267
  821  sudo kill kubelet
  822  pid --help
  823  kill --help
  824  clear
  825  sudo kubeadm reset -f
  826  sudo rm -rf /etc/kubernetes/
  827  sudo rm -rf /var/lib/etcd
  828  rm -rf $HOME/.kube
  829  sudo systemctl restart containerd
  830  sudo systemctl status containerd
  831  sudo systemctl restart kubelet
  832  sudo systemctl status kubelet
  833  free -h
  834  sudo nano /etc/fstab
  835  cat /etc/fstab
  836  free -h
  837  sudo swapoff -a
  838  free -h
  839  sudo systemctl status kubelet
  840  sudo systemctl start kubelet
  841  sudo systemctl status kubelet
  842  sudo systemctl restart kubelet
  843  sudo systemctl status kubelet
  844  sudo kubeadm init --pod-network-cidr=10.244.0.0/16
  845  mkdir -p $HOME/.kube
  846  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  847  sudo chown $(id -u):$(id -g) $HOME/.kube/config
  848  kubectl get nodes
  849  history 30
  850  history 50

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
