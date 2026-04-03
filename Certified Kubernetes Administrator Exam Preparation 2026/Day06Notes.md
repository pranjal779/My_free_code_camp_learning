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
    stream_server_address = "127.0.0.1"
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
