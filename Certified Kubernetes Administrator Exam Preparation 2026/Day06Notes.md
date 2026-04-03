<img width="1550" height="827" alt="image" src="https://github.com/user-attachments/assets/03e47c60-318b-4cdc-9a5d-866b5067b828" />
<img width="1551" height="837" alt="image" src="https://github.com/user-attachments/assets/d2952379-6eae-4286-b77b-052ff5d3f110" />

These two commands are used to load necessary Linux kernel modules for container runtimes (like Docker or containerd) and Kubernetes, typically executed on all nodes in a cluster. 

• sudo modprobe overlay: Loads the OverlayFS driver, which enables the overlay filesystem support.
  This is the primary storage driver used by Docker and Kubernetes to build and run container images efficiently, allowing multiple layers of images to be combined into a single unified view. 

• sudo modprobe br_netfilter: Loads the Bridge Netfilter module. This allows the Linux kernel to process network packets traveling through a network bridge (used for container networking) through the  or  rules. 
  This is essential for inter-container communication, network policies, and Kubernetes networking (like CNI plugins) to work correctly. [1, 3, 4, 5, 6]  

Why are they needed together? 

1. Overlay: Provides efficient image layer storage (storage driver). 
2. br_netfilter: Enables proper routing and filtering of traffic between containers and external networks (network filtering). [1, 7, 8, 9, 10]  

Skipping these can lead to errors during container startup or networking issues where pods/containers cannot communicate with each other. [11]  

[1] https://pswalia2u.medium.com/deploying-kubernetes-cluster-2ef2fbdd233a
[2] https://kodekloud.com/community/t/kubernetes-1-3-0-basic-setup-questions/459825
[3] https://docs.docker.com/engine/storage/drivers/overlayfs-driver/
[4] https://stackoverflow.com/questions/60894640/no-networking-from-host-to-docker-container
[5] https://stackoverflow.com/questions/63482865/how-to-set-modprobe-overlay-permit-mounts-in-userns-1
[6] https://labs.withsecure.com/publications/abusing-search-permissions-on-docker-directories-for-privilege-escalation
[7] https://www.keitaro.com/insights/2021/09/03/setting-up-a-kubernetes-on-premise-cluster-with-kubeadm/
[8] https://labs.withsecure.com/publications/abusing-search-permissions-on-docker-directories-for-privilege-escalation
[9] https://medium.com/data-science/exploring-the-power-of-overlay-file-systems-in-linux-containers-d846724ec06d
[10] https://oneuptime.com/blog/post/2026-03-18-use-overlay-storage-driver-podman/view
[11] https://www.zenarmor.com/docs/linux-tutorials/how-to-install-kubernetes-on-ubuntu


<img width="1558" height="822" alt="image" src="https://github.com/user-attachments/assets/8bb492cf-2b47-43a4-816e-fd4c3f30b140" />
<img width="1565" height="1312" alt="image" src="https://github.com/user-attachments/assets/a541a8ae-5af1-4bf2-b845-2d5ea65ba623" />

<img width="1456" height="568" alt="image" src="https://github.com/user-attachments/assets/283c206f-6891-47e8-b151-1cfd0fd7b224" />
<img width="1467" height="610" alt="image" src="https://github.com/user-attachments/assets/9560a442-c62b-48e1-8233-1480368f35f7" />
<img width="1482" height="658" alt="image" src="https://github.com/user-attachments/assets/15bb2150-29e2-4411-b65e-af9a5d604c3a" />


```sh
╭─   pran779  ~/k8practice                                                                  1.006s   12:13:23 
╰─ $ sudo mkdir -p /etc/containerd

╭─   pran779  ~/k8practice                                                                              12:13:30 
╰─ $ sudo containerd config default | sudo tee /etc/containerd/config.toml
disabled_plugins = []
imports = []
oom_score = 0
plugin_dir = ""
required_plugins = []
root = "/var/lib/containerd"
state = "/run/containerd"
temp = ""
version = 2

[cgroup]
  path = ""

[debug]
  address = ""
  format = ""
  gid = 0
  level = ""
  uid = 0

[grpc]
  address = "/run/containerd/containerd.sock"
  gid = 0
  max_recv_message_size = 16777216
  max_send_message_size = 16777216
  tcp_address = ""
  tcp_tls_ca = ""
  tcp_tls_cert = ""
  tcp_tls_key = ""
  uid = 0

[metrics]
  address = ""
  grpc_histogram = false

[plugins]

  [plugins."io.containerd.gc.v1.scheduler"]
    deletion_threshold = 0
    mutation_threshold = 100
    pause_threshold = 0.02
    schedule_delay = "0s"
    startup_delay = "100ms"

  [plugins."io.containerd.grpc.v1.cri"]
    cdi_spec_dirs = ["/etc/cdi", "/var/run/cdi"]
    device_ownership_from_security_context = false
    disable_apparmor = false
    disable_cgroup = false
    disable_hugetlb_controller = true
    disable_proc_mount = false
    disable_tcp_service = true
    drain_exec_sync_io_timeout = "0s"
    enable_cdi = false
    enable_selinux = false
    enable_tls_streaming = false
    enable_unprivileged_icmp = false
    enable_unprivileged_ports = false
    ignore_deprecation_warnings = []
    ignore_image_defined_volumes = false
    image_pull_progress_timeout = "5m0s"
    image_pull_with_sync_fs = false
    max_concurrent_downloads = 3
    max_container_log_line_size = 16384
    netns_mounts_under_state_dir = false
    restrict_oom_score_adj = false
    sandbox_image = "registry.k8s.io/pause:3.8"
    selinux_category_range = 1024
    stats_collect_period = 10
    stream_idle_timeout = "4h0m0s"
    stream_server_address = "REDACTED"
    stream_server_port = "0"
    systemd_cgroup = false
    tolerate_missing_hugetlb_controller = true
    unset_seccomp_profile = ""

    [plugins."io.containerd.grpc.v1.cri".cni]
      bin_dir = "/opt/cni/bin"
      conf_dir = "/etc/cni/net.d"
      conf_template = ""
      ip_pref = ""
      max_conf_num = 1
      setup_serially = false

    [plugins."io.containerd.grpc.v1.cri".containerd]
      default_runtime_name = "runc"
      disable_snapshot_annotations = true
      discard_unpacked_layers = false
      ignore_blockio_not_enabled_errors = false
      ignore_rdt_not_enabled_errors = false
      no_pivot = false
      snapshotter = "overlayfs"

      [plugins."io.containerd.grpc.v1.cri".containerd.default_runtime]
        base_runtime_spec = ""
        cni_conf_dir = ""
        cni_max_conf_num = 0
        container_annotations = []
        pod_annotations = []
        privileged_without_host_devices = false
        privileged_without_host_devices_all_devices_allowed = false
        runtime_engine = ""
        runtime_path = ""
        runtime_root = ""
        runtime_type = ""
        sandbox_mode = ""
        snapshotter = ""

        [plugins."io.containerd.grpc.v1.cri".containerd.default_runtime.options]

      [plugins."io.containerd.grpc.v1.cri".containerd.runtimes]

        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
          base_runtime_spec = ""
          cni_conf_dir = ""
          cni_max_conf_num = 0
          container_annotations = []
          pod_annotations = []
          privileged_without_host_devices = false
          privileged_without_host_devices_all_devices_allowed = false
          runtime_engine = ""
          runtime_path = ""
          runtime_root = ""
          runtime_type = "io.containerd.runc.v2"
          sandbox_mode = "podsandbox"
          snapshotter = ""

          [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
            BinaryName = ""
            CriuImagePath = ""
            CriuPath = ""
            CriuWorkPath = ""
            IoGid = 0
            IoUid = 0
            NoNewKeyring = false
            NoPivotRoot = false
            Root = ""
            ShimCgroup = ""
            SystemdCgroup = false

      [plugins."io.containerd.grpc.v1.cri".containerd.untrusted_workload_runtime]
        base_runtime_spec = ""
        cni_conf_dir = ""
        cni_max_conf_num = 0
        container_annotations = []
        pod_annotations = []
        privileged_without_host_devices = false
        privileged_without_host_devices_all_devices_allowed = false
        runtime_engine = ""
        runtime_path = ""
        runtime_root = ""
        runtime_type = ""
        sandbox_mode = ""
        snapshotter = ""

        [plugins."io.containerd.grpc.v1.cri".containerd.untrusted_workload_runtime.options]

    [plugins."io.containerd.grpc.v1.cri".image_decryption]
      key_model = "node"

    [plugins."io.containerd.grpc.v1.cri".registry]
      config_path = ""

      [plugins."io.containerd.grpc.v1.cri".registry.auths]

      [plugins."io.containerd.grpc.v1.cri".registry.configs]

      [plugins."io.containerd.grpc.v1.cri".registry.headers]

      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]

    [plugins."io.containerd.grpc.v1.cri".x509_key_pair_streaming]
      tls_cert_file = ""
      tls_key_file = ""

  [plugins."io.containerd.internal.v1.opt"]
    path = "/opt/containerd"

  [plugins."io.containerd.internal.v1.restart"]
    interval = "10s"

  [plugins."io.containerd.internal.v1.tracing"]

  [plugins."io.containerd.metadata.v1.bolt"]
    content_sharing_policy = "shared"

  [plugins."io.containerd.monitor.v1.cgroups"]
    no_prometheus = false

  [plugins."io.containerd.nri.v1.nri"]
    disable = true
    disable_connections = false
    plugin_config_path = "/etc/nri/conf.d"
    plugin_path = "/opt/nri/plugins"
    plugin_registration_timeout = "5s"
    plugin_request_timeout = "2s"
    socket_path = "/var/run/nri/nri.sock"

  [plugins."io.containerd.runtime.v1.linux"]
    no_shim = false
    runtime = "runc"
    runtime_root = ""
    shim = "containerd-shim"
    shim_debug = false

  [plugins."io.containerd.runtime.v2.task"]
    platforms = ["linux/amd64"]
    sched_core = false

  [plugins."io.containerd.service.v1.diff-service"]
    default = ["walking"]
    sync_fs = false

  [plugins."io.containerd.service.v1.tasks-service"]
    blockio_config_file = ""
    rdt_config_file = ""

  [plugins."io.containerd.snapshotter.v1.aufs"]
    root_path = ""

  [plugins."io.containerd.snapshotter.v1.blockfile"]
    fs_type = ""
    mount_options = []
    root_path = ""
    scratch_file = ""

  [plugins."io.containerd.snapshotter.v1.btrfs"]
    root_path = ""

  [plugins."io.containerd.snapshotter.v1.devmapper"]
    async_remove = false
    base_image_size = ""
    discard_blocks = false
    fs_options = ""
    fs_type = ""
    pool_name = ""
    root_path = ""

  [plugins."io.containerd.snapshotter.v1.native"]
    root_path = ""

  [plugins."io.containerd.snapshotter.v1.overlayfs"]
    mount_options = []
    root_path = ""
    sync_remove = false
    upperdir_label = false

  [plugins."io.containerd.snapshotter.v1.zfs"]
    root_path = ""

  [plugins."io.containerd.tracing.processor.v1.otlp"]

  [plugins."io.containerd.transfer.v1.local"]
    config_path = ""
    max_concurrent_downloads = 3
    max_concurrent_uploaded_layers = 3

    [[plugins."io.containerd.transfer.v1.local".unpack_config]]
      differ = "walking"
      platform = "linux/amd64"
      snapshotter = "overlayfs"

[proxy_plugins]

[stream_processors]

  [stream_processors."io.containerd.ocicrypt.decoder.v1.tar"]
    accepts = ["application/vnd.oci.image.layer.v1.tar+encrypted"]
    args = ["--decryption-keys-path", "/etc/containerd/ocicrypt/keys"]
    env = ["OCICRYPT_KEYPROVIDER_CONFIG=/etc/containerd/ocicrypt/ocicrypt_keyprovider.conf"]
    path = "ctd-decoder"
    returns = "application/vnd.oci.image.layer.v1.tar"

  [stream_processors."io.containerd.ocicrypt.decoder.v1.tar.gzip"]
    accepts = ["application/vnd.oci.image.layer.v1.tar+gzip+encrypted"]
    args = ["--decryption-keys-path", "/etc/containerd/ocicrypt/keys"]
    env = ["OCICRYPT_KEYPROVIDER_CONFIG=/etc/containerd/ocicrypt/ocicrypt_keyprovider.conf"]
    path = "ctd-decoder"
    returns = "application/vnd.oci.image.layer.v1.tar+gzip"

[timeouts]
  "io.containerd.timeout.bolt.open" = "0s"
  "io.containerd.timeout.metrics.shimstats" = "2s"
  "io.containerd.timeout.shim.cleanup" = "5s"
  "io.containerd.timeout.shim.load" = "5s"
  "io.containerd.timeout.shim.shutdown" = "3s"
  "io.containerd.timeout.task.state" = "2s"

[ttrpc]
  address = ""
  gid = 0
  uid = 0

╭─   pran779  ~/k8practice                                                                              12:20:05 
╰─ $
```

<img width="1501" height="682" alt="image" src="https://github.com/user-attachments/assets/dcd7d5c3-7a9a-4ddb-99cf-57c97e260c77" />

<img width="2542" height="1373" alt="image" src="https://github.com/user-attachments/assets/be90ed0a-5262-437b-b56d-8b138c6b1813" />
<img width="2367" height="1225" alt="image" src="https://github.com/user-attachments/assets/b8e26bce-04c4-42e1-b90a-b4b6297e072b" />
<img width="2537" height="1156" alt="image" src="https://github.com/user-attachments/assets/a45304fc-adb6-4923-adb1-37b3062c805e" />
<img width="1492" height="725" alt="image" src="https://github.com/user-attachments/assets/dac1c27d-6dc0-4283-ad7c-10fdc9f74da9" />

```sh
  634  sudo apt-get update
  635  version
  636  cat /etc/os-release
  637  sudo apt-get updates
  638  sudo apt-get updates -y
  639  refresh
  640  sudo apt-get update
  641  pwd
  642  sudo apt update -y
  643  sudo apt upgrade -y
  644  sudo dpkf --configure -a
  645  sudo dpkg --configure -a
  646  sudo apt install -f
  647  sudo apt autremove
  648  sudo apt autoremove
  649  clear
  650  sudo apt update && sudo apt upgrade -y
  651  sudo apt install htop
  652  clear
  653  mkdir k8practice
  654  ls
  655  cd k8practice/
  656  clear
  657  # containerd
  658  cat  <<EOF | sudo tee /etc/modules-load.d/k8s.conf
  659  overlay
  660  br_netfilter
  661  EOF
  662  cat  <<EOF | sudo tee /etc/modules-load.d/k8s.conf
  663  overlay
  664  br_netfilter
  665  EOF
  666  sudo modprobe overlay
  667  sudo modprobe br_netfilter
  668  cat <<EOF | sudo tee /etc/sysctl.d/k8s,conf
  669  q
  670  cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
  671  net.bridge.bridge-nf-call-iptables    =1
  672  net.bridge.bridge-nf-call-ip6tables   =1
  673  net.ipv4.ip_forward                   =1
  674  EOF
  675  sudo sysctl --system
  676  sudo apt get update
  677  sudo apt update
  678  sudo apt install -y containerd
  679  sud mkdir -p /etc/containerd
  680  sudo mkdir -p /etc/containerd
  681  sudo containerd config default | sudo tee /etc/containerd/config.toml
  682  sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
  683  clear
  684  sudo systemctl restart containerd
  685  sudo systemctl enable containerd
  686  sudo systemctl status containerd
  687  # disable swap
  688  sudo swapoff -a
  689  # disable swap across reboot
  690  sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
  691  # kubernetes apt repository
  692  sudo apt install -y apt-transport-https ca-certificates curl gpg
  693  sudo mkdir -p -m 755 /etc/apt/keyrings
  694  cd k8practice/
  695  history

╭─   pran779  ~/k8practice                                                                              19:27:39 
╰─ $
```

# Installing kubeADM
[kubernetes.io/docs/reference/setup-tools/kubeadm/](https://kubernetes.io/docs/reference/setup-tools/kubeadm/)

<img width="1462" height="832" alt="image" src="https://github.com/user-attachments/assets/815a2867-865e-455b-99d8-f53ca1bbf9be" />

```sh

╭─   pran779  ~/k8practice                                                                              19:27:39 
╰─ $ curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyrings.gpg
[sudo] password for pran779:

╭─   pran779  ~/k8practice                                                                  5.424s   19:47:59 
╰─ $ echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyrings.gpg] https://pkgs.k8s.io/core:stable:/v1.29/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernets.list
deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyrings.gpg] https://pkgs.k8s.io/core:stable:/v1.29/deb/ /

╭─   pran779  ~/k8practice                                                                              19:56:19 
╰─ $ sudo apt-get update
Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:3 https://apt.releases.hashicorp.com jammy InRelease [12.9 kB]
Hit:4 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:5 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Err:2 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:stable:/v1.29/deb  InRelease
  403  Forbidden [IP: REDACTED 443]
Get:6 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [3364 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1262 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 c-n-f Metadata [30.5 kB]
Reading package lists... Done
E: Failed to fetch https://pkgs.k8s.io/core:stable:/v1.29/deb/InRelease  403  Forbidden [IP: 18.239.111.91 443]
E: The repository 'https://pkgs.k8s.io/core:stable:/v1.29/deb  InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.


╭─   pran779  ~/k8practice                                                                 37.352s   19:57:40 
╰─ $ sudo apt update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:3 https://apt.releases.hashicorp.com jammy InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:5 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:6 http://security.ubuntu.com/ubuntu jammy-security InRelease
Err:2 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:stable:/v1.29/deb  InRelease
  403  Forbidden [IP: REDACTED 443]
Reading package lists... Done
E: Failed to fetch https://pkgs.k8s.io/core:stable:/v1.29/deb/InRelease  403  Forbidden [IP: REDACTED 443]
E: The repository 'https://pkgs.k8s.io/core:stable:/v1.29/deb  InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.

```

<img width="1470" height="963" alt="image" src="https://github.com/user-attachments/assets/10624fa7-508a-458a-b720-4f752609828e" />
<img width="1710" height="917" alt="image" src="https://github.com/user-attachments/assets/2a01ed3c-b7b1-48b9-82b2-b61c2aa77234" />
<img width="1283" height="895" alt="image" src="https://github.com/user-attachments/assets/892c18ac-6dd8-4349-833a-69dbdc1b9a59" />
<img width="1255" height="662" alt="image" src="https://github.com/user-attachments/assets/36e2f38d-b692-435d-a332-c7e712522396" />
<img width="1253" height="670" alt="image" src="https://github.com/user-attachments/assets/8533b5ca-b288-469e-b55e-5e0417246511" />
<img width="1247" height="215" alt="image" src="https://github.com/user-attachments/assets/65fd88b7-405c-49c4-8b7e-6d955ba46d66" />

** $ sudo apt-mark hold kubelet kubeadm kubectl**
is an important command so that these services do not get upgraded accidently- pin their version

$ sudo systemctl enable --now kubelet

[Kubernetes Documentation>Reference>Setup tools>Kubeadm](https://kubernetes.io/docs/reference/setup-tools/kubeadm/)

[kubeadm init](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/) to bootstrap a Kubernetes control-plane node

<img width="1187" height="687" alt="image" src="https://github.com/user-attachments/assets/43ddc2e6-44e2-481e-950f-644885c0eb88" />

```sh
╭─   pran779  ~/k8practice                                    10m 28.325s   20:35:19 
╰─ $ sudo swapoff -a

╭─   pran779  ~/k8practice                                                     20:35:23 
╰─ $ sudo kubeadm init --pod-network-cidr=10.244.0.0/16
[init] Using Kubernetes version: v1.35.3
[preflight] Running pre-flight checks
        [WARNING ContainerRuntimeVersion]: You must update your container runtime to a version that supports the CRI method RuntimeConfig. Falling back to using cgroupDriver from kubelet config will be removed in 1.36. For more information, see https://git.k8s.io/enhancements/keps/sig-node/4033-group-driver-detection-over-cri
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action beforehand using 'kubeadm config images pull'
W0403 20:35:30.073058    5669 checks.go:906] detected that the sandbox image "registry.k8s.io/pause:3.8" of the container runtime is inconsistent with that used by kubeadm. It is recommended to use "registry.k8s.io/pause:3.10.1" as the CRI sandbox image.


```

<img width="1187" height="478" alt="image" src="https://github.com/user-attachments/assets/de4c1889-cfa6-496e-9f27-271f3cce9700" />

```sh
╭─   pran779  ~/k8practice                                                     20:35:23 
╰─ $ sudo kubeadm init --pod-network-cidr=10.244.0.0/16
[init] Using Kubernetes version: v1.35.3
[preflight] Running pre-flight checks
        [WARNING ContainerRuntimeVersion]: You must update your container runtime to a version that supports the CRI method RuntimeConfig. Falling back to using cgroupDriver from kubelet config will be removed in 1.36. For more information, see https://git.k8s.io/enhancements/keps/sig-node/4033-group-driver-detection-over-cri
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action beforehand using 'kubeadm config images pull'
W0403 20:35:30.---    5669 checks.go:000] detected that the sandbox image "registry.k8s.io/pause:3.8" of the container runtime is inconsistent with that used by kubeadm. It is recommended to use "registry.k8s.io/pause:3.10.1" as the CRI sandbox image.
[certs] Using certificateDir folder "/etc/kubernetes/pki"
[certs] Generating "ca" certificate and key
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local pranjal779] and IPs [zz.ww.0ss.1 121.cxcx.xzcz.1nn]
[certs] Generating "apiserver-kubelet-client" certificate and key
[certs] Generating "front-proxy-ca" certificate and key
[certs] Generating "front-proxy-client" certificate and key
[certs] Generating "etcd/ca" certificate and key
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [localhost pranjal779] and IPs [172.^^.vv.ppp 1oo.faa.gaa.www ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [localhost pranjal779] and IPs [172.^^.vv.ppp 1oo.faa.gaa.www ::1]
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
[kubelet-check] Waiting for a healthy kubelet at http://-------------/healthz. This can take up to 4m0s
[kubelet-check] The kubelet is healthy after 501.819485ms
[control-plane-check] Waiting for healthy control plane components. This can take up to 4m0s
[control-plane-check] Checking kube-apiserver at https://-------------/livez
[control-plane-check] Checking kube-controller-manager at https://-----------/healthz
[control-plane-check] Checking kube-scheduler at https://------------/livez
[control-plane-check] kube-scheduler is healthy after 17.50795789s
[control-plane-check] kube-controller-manager is healthy after 18.00510679s
[control-plane-check] kube-apiserver is healthy after 21.002557393s
[upload-config] Storing the configuration used in ConfigMap "kubeadm-config" in the "kube-system" Namespace
[kubelet] Creating a ConfigMap "kubelet-config" in namespace kube-system with the configuration for the kubelets in the cluster
[upload-certs] Skipping phase. Please see --upload-certs
[mark-control-plane] Marking the node pranjal779 as control-plane by adding the labels: [node-role.kubernetes.io/control-plane node.kubernetes.io/exclude-from-external-load-balancers]
[mark-control-plane] Marking the node pranjal779 as control-plane by adding the taints [node-role.kubernetes.io/control-plane:NoSchedule]
[bootstrap-token] Using token: k7txvo.vz90gva3rhyvyz5i
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

kubeadm join 172.%%.**.+++:1122 (sample Ip) --token RE.Dacted \
        --discovery-token-ca-cert-hash sha256:<Redacted>

╭─   pran779  ~/k8practice                                      4m 1.817s   20:39:29 
╰─ $
```
