{
  // change it to azure https://github.com/prometheus-operator/kube-prometheus/pull/1869
  platform: 'gke',
  extra_configs: false,
  'blackbox-exporter': false,
  connect_obmondo: true,
  kube_prometheus_version: 'v0.11.0',

  grafana_root_url: 'https://grafana.test.cluster.com',
  prometheus_operator_resources+: {
    limits: { memory: '80Mi' },
    requests: { cpu: '10m', memory: '30Mi' },
  },
  alertmanager_resources+: {
    limits: { memory: '50Mi' },
    requests: { cpu: '10m', memory: '20Mi' },
  },
  prometheus_resources+: {
    limits: { memory: '2Gi' },
    requests: { cpu: '200m', memory: '200Mi' },
  },
  alertmanager_cert: false,
  addMixins+: {
    ceph: false,
    velero: true,
  },
  prometheus_scrape_namespaces: [
    'velero',
    'logging',
  ],
  prometheus+: {
    storage: {
      size: '10Gi',
      classname: 'default',
    },
  },
}
