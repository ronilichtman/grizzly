local util = import 'util.libsonnet';

util.makeResource(
  'grafana.com/v1', 'SyntheticMonitoringCheck', 'odoko', {
    frequency: 60000,
    offset: 0,
    timeout: 2500,
    enabled: true,
    labels: [],
    settings: {
      http: {
        ipVersion: 'V4',
        method: 'GET',
        noFollowRedirects: false,
        failIfSSL: false,
        failIfNotSSL: false,
      },
    },
    probes: [
      'Atlanta',
      'Chicago',
      'LosAngeles',
      'Miami',
      'Seattle',
      'SanJose',
      'Paris',
      'Tokyo',
      'Seol',
      'NewYork',
      'SanFrancisco',
      'Amsterdam',
      'Singapore',
      'Frankfurt',
      'Bangalore',
      'Dallas',
      'Newark',
      'Toronto',
      'London',
      'Mumbai',
      'Sydney',
    ],
    target: 'https://grafana.com/',
    job: 'grafana-com',
  },
)
