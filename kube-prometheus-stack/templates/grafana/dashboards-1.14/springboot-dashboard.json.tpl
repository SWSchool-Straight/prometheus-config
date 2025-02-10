{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": {
          "type": "datasource",
          "uid": "grafana"
        },
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "type": "dashboard"
      }
    ]
  },
  "description": "Dashboard for Spring Boot Metrics",
  "editable": true,
  "fiscalYearStartMonth": 0,
  "graphTooltip": 0,
  "id": 30,
  "links": [],
  "panels": [
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 54,
      "panels": [],
      "title": "Basic Statistics",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [
            {
              "options": {
                "match": "null",
                "result": {
                  "text": "N/A"
                }
              },
              "type": "special"
            }
          ],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "s"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 3,
        "w": 6,
        "x": 0,
        "y": 1
      },
      "id": 52,
      "maxDataPoints": 100,
      "options": {
        "colorMode": "value",
        "fieldOptions": {
          "calcs": [
            "lastNotNull"
          ]
        },
        "graphMode": "none",
        "justifyMode": "auto",
        "orientation": "horizontal",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "mean"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "sum(process_uptime_seconds{application=\"$application\", instance=~\"$instance\"})",
          "format": "time_series",
          "hide": false,
          "interval": "",
          "intervalFactor": 2,
          "legendFormat": "",
          "metric": "",
          "refId": "A",
          "step": 14400
        }
      ],
      "title": "Uptime",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [
            {
              "options": {
                "match": "null",
                "result": {
                  "text": "N/A"
                }
              },
              "type": "special"
            }
          ],
          "max": 100,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "rgba(50, 172, 45, 0.97)",
                "value": null
              },
              {
                "color": "rgba(237, 129, 40, 0.89)",
                "value": 70
              },
              {
                "color": "rgba(245, 54, 54, 0.9)",
                "value": 90
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 5,
        "x": 6,
        "y": 1
      },
      "id": 58,
      "maxDataPoints": 100,
      "options": {
        "colorMode": "value",
        "graphMode": "none",
        "justifyMode": "auto",
        "orientation": "horizontal",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "sum(jvm_memory_used_bytes{application=\"$application\", instance=~\"$instance\", area=\"heap\"})*100/sum(jvm_memory_max_bytes{application=\"$application\",instance=~\"$instance\", area=\"heap\"})",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A",
          "step": 14400
        }
      ],
      "title": "Heap Used",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [
            {
              "options": {
                "match": "null",
                "result": {
                  "text": "N/A"
                }
              },
              "type": "special"
            },
            {
              "options": {
                "from": -1e+32,
                "result": {
                  "text": "N/A"
                },
                "to": 0
              },
              "type": "range"
            }
          ],
          "max": 100,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "rgba(50, 172, 45, 0.97)",
                "value": null
              },
              {
                "color": "rgba(237, 129, 40, 0.89)",
                "value": 70
              },
              {
                "color": "rgba(245, 54, 54, 0.9)",
                "value": 90
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 5,
        "x": 11,
        "y": 1
      },
      "id": 60,
      "maxDataPoints": 100,
      "options": {
        "colorMode": "value",
        "graphMode": "none",
        "justifyMode": "auto",
        "orientation": "horizontal",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "sum(jvm_memory_used_bytes{application=\"$application\", instance=~\"$instance\", area=\"nonheap\"})*100/sum(jvm_memory_max_bytes{application=\"$application\",instance=~\"$instance\", area=\"nonheap\"})",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "A",
          "step": 14400
        }
      ],
      "title": "Non-Heap Used",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "locale"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 16,
        "y": 1
      },
      "id": 66,
      "options": {
        "dataLinks": [],
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "process_files_open_files{application=\"$application\", instance=~\"$instance\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Open Files",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "process_files_max{application=\"$application\", instance=~\"$instance\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Max Files",
          "refId": "B"
        }
      ],
      "title": "Process Open Files",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "mappings": [
            {
              "options": {
                "match": "null",
                "result": {
                  "text": "N/A"
                }
              },
              "type": "special"
            }
          ],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "dateTimeFromNow"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 3,
        "w": 6,
        "x": 0,
        "y": 4
      },
      "id": 56,
      "maxDataPoints": 100,
      "options": {
        "colorMode": "value",
        "graphMode": "none",
        "justifyMode": "auto",
        "orientation": "horizontal",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "first"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "avg(process_start_time_seconds{application=\"$application\", instance=~\"$instance\"})*1000",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 2,
          "legendFormat": "",
          "metric": "",
          "refId": "A",
          "step": 14400
        }
      ],
      "title": "Start time",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 0,
        "y": 7
      },
      "id": 95,
      "options": {
        "dataLinks": [],
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max",
            "min"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "system_cpu_usage{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "System CPU Usage",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "process_cpu_usage{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Process CPU Usage",
          "refId": "B"
        }
      ],
      "title": "CPU Usage",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 12,
        "y": 7
      },
      "id": 96,
      "options": {
        "dataLinks": [],
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max",
            "min"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "11.4.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "system_load_average_1m{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Load Average [1m]",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "system_cpu_count{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "CPU Core Size",
          "refId": "B"
        }
      ],
      "title": "Load Average",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 14
      },
      "id": 48,
      "panels": [],
      "title": "JVM Statistics - Memory",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 15
      },
      "id": 85,
      "options": {
        "dataLinks": [],
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max",
            "min"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "repeat": "memory_pool_heap",
      "repeatDirection": "h",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_memory_used_bytes{instance=~\"$instance\", application=\"$application\", id=\"$memory_pool_heap\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Used",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_memory_committed_bytes{instance=~\"$instance\", application=\"$application\", id=\"$memory_pool_heap\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Commited",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_memory_max_bytes{instance=~\"$instance\", application=\"$application\", id=\"$memory_pool_heap\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Max",
          "refId": "B"
        }
      ],
      "title": "$memory_pool_heap (heap)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 23
      },
      "id": 88,
      "options": {
        "dataLinks": [],
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max",
            "min"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "repeat": "memory_pool_nonheap",
      "repeatDirection": "h",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_memory_used_bytes{instance=~\"$instance\", application=\"$application\", id=\"$memory_pool_nonheap\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Used",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_memory_committed_bytes{instance=~\"$instance\", application=\"$application\", id=\"$memory_pool_nonheap\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Commited",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_memory_max_bytes{instance=~\"$instance\", application=\"$application\", id=\"$memory_pool_nonheap\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Max",
          "refId": "B"
        }
      ],
      "title": "$memory_pool_nonheap (non-heap)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 39
      },
      "id": 50,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_classes_loaded_classes{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Classes Loaded",
          "refId": "A"
        }
      ],
      "title": "Classes Loaded",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 39
      },
      "id": 80,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(jvm_classes_unloaded_classes_total{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Classes Unloaded",
          "refId": "A"
        }
      ],
      "title": "Classes Unloaded",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 0,
        "y": 47
      },
      "id": 82,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_buffer_memory_used_bytes{instance=~\"$instance\", application=\"$application\", id=\"direct\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Used Bytes",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_buffer_total_capacity_bytes{instance=~\"$instance\", application=\"$application\", id=\"direct\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Capacity Bytes",
          "refId": "B"
        }
      ],
      "title": "Direct Buffers",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 12,
        "y": 47
      },
      "id": 83,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_buffer_memory_used_bytes{instance=~\"$instance\", application=\"$application\", id=\"mapped\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Used Bytes",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_buffer_total_capacity_bytes{instance=~\"$instance\", application=\"$application\", id=\"mapped\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Capacity Bytes",
          "refId": "B"
        }
      ],
      "title": "Mapped Buffers",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 54
      },
      "id": 68,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_threads_daemon_threads{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Daemon",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_threads_live{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Live",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "jvm_threads_peak{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Peak",
          "refId": "C"
        }
      ],
      "title": "Threads",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 54
      },
      "id": 78,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(jvm_gc_memory_allocated_bytes_total{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "allocated",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(jvm_gc_memory_promoted_bytes_total{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "promoted",
          "refId": "B"
        }
      ],
      "title": "Memory Allocate/Promote",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 62
      },
      "id": 72,
      "panels": [],
      "title": "JVM Statistics - GC",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 10,
        "w": 12,
        "x": 0,
        "y": 63
      },
      "id": 74,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(jvm_gc_pause_seconds_count{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "\{\{action\}\} [\{\{cause\}\}]",
          "refId": "A"
        }
      ],
      "title": "GC Count",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 10,
        "w": 12,
        "x": 12,
        "y": 63
      },
      "id": 76,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(jvm_gc_pause_seconds_sum{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "\{\{action\}\} [\{\{cause\}\}]",
          "refId": "A"
        }
      ],
      "title": "GC Stop the World Duration",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 73
      },
      "id": 34,
      "panels": [],
      "title": "HikariCP Statistics",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 74
      },
      "id": 44,
      "maxDataPoints": 100,
      "options": {},
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Connections Size",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 20,
        "x": 4,
        "y": 74
      },
      "id": 36,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_active{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Active",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_idle{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Idle",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_pending{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Pending",
          "refId": "C"
        }
      ],
      "title": "Connections",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 78
      },
      "id": 46,
      "maxDataPoints": 100,
      "options": {},
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_timeout_total{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Connection Timeout Count",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 0,
        "y": 82
      },
      "id": 38,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_creation_seconds_sum{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"} / hikaricp_connections_creation_seconds_count{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Creation Time",
          "refId": "A"
        }
      ],
      "title": "Connection Creation Time",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 8,
        "y": 82
      },
      "id": 42,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_usage_seconds_sum{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"} / hikaricp_connections_usage_seconds_count{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Usage Time",
          "refId": "A"
        }
      ],
      "title": "Connection Usage Time",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 16,
        "y": 82
      },
      "id": 40,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "hikaricp_connections_acquire_seconds_sum{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"} / hikaricp_connections_acquire_seconds_count{instance=~\"$instance\", application=\"$application\", pool=\"$hikaricp\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Acquire Time",
          "refId": "A"
        }
      ],
      "title": "Connection Acquire Time",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 88
      },
      "id": 18,
      "panels": [],
      "title": "HTTP Statistics",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 89
      },
      "id": 4,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(http_server_requests_seconds_count{instance=~\"$instance\", application=\"$application\", uri!~\".*actuator.*\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "\{\{method\}\} [\{\{status\}\}] - \{\{uri\}\}",
          "refId": "A"
        }
      ],
      "title": "Request Count",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 96
      },
      "id": 2,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(http_server_requests_seconds_sum{instance=~\"$instance\", application=\"$application\", exception=\"None\", uri!~\".*actuator.*\"}[5m]) / irate(http_server_requests_seconds_count{instance=~\"$instance\", application=\"$application\", exception=\"None\", uri!~\".*actuator.*\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "\{\{method\}\} [\{\{status\}\}] - \{\{uri\}\}",
          "refId": "A"
        }
      ],
      "title": "Response Time",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 103
      },
      "id": 22,
      "panels": [],
      "title": "Tomcat Statistics",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 104
      },
      "id": 28,
      "maxDataPoints": 100,
      "options": {},
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "tomcat_global_error_total{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Total Error Count",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 9,
        "x": 4,
        "y": 104
      },
      "id": 24,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "tomcat_sessions_active_current_sessions{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "active sessions",
          "refId": "A"
        }
      ],
      "title": "Active Sessions",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 11,
        "x": 13,
        "y": 104
      },
      "id": 26,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(tomcat_global_sent_bytes_total{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Sent Bytes",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(tomcat_global_received_bytes_total{instance=~\"$instance\", application=\"$application\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Recieved Bytes",
          "refId": "B"
        }
      ],
      "title": "Sent & Recieved Bytes",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 3,
        "w": 4,
        "x": 0,
        "y": 108
      },
      "id": 32,
      "maxDataPoints": 100,
      "options": {},
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "tomcat_threads_config_max{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Thread Config Max",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 13,
        "x": 0,
        "y": 111
      },
      "id": 30,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "tomcat_threads_current{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Current thread",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "tomcat_threads_busy{instance=~\"$instance\", application=\"$application\"}",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Current thread busy",
          "refId": "B"
        }
      ],
      "title": "Threads",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 118
      },
      "id": 8,
      "panels": [],
      "title": "Logback Statistics",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 0,
        "y": 119
      },
      "id": 6,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "alias": "",
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(logback_events_total{instance=~\"$instance\", application=\"$application\", level=\"info\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "info",
          "rawSql": "SELECT\n  $__time(time_column),\n  value1\nFROM\n  metric_table\nWHERE\n  $__timeFilter(time_column)\n",
          "refId": "A"
        }
      ],
      "title": "INFO logs",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 12,
        "x": 12,
        "y": 119
      },
      "id": 10,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "alias": "",
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(logback_events_total{instance=~\"$instance\", application=\"$application\", level=\"error\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "error",
          "rawSql": "SELECT\n  $__time(time_column),\n  value1\nFROM\n  metric_table\nWHERE\n  $__timeFilter(time_column)\n",
          "refId": "A"
        }
      ],
      "title": "ERROR logs",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 0,
        "y": 126
      },
      "id": 14,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "alias": "",
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(logback_events_total{instance=~\"$instance\", application=\"$application\", level=\"warn\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "warn",
          "rawSql": "SELECT\n  $__time(time_column),\n  value1\nFROM\n  metric_table\nWHERE\n  $__timeFilter(time_column)\n",
          "refId": "A"
        }
      ],
      "title": "WARN logs",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 8,
        "y": 126
      },
      "id": 16,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "alias": "",
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(logback_events_total{instance=~\"$instance\", application=\"$application\", level=\"debug\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "debug",
          "rawSql": "SELECT\n  $__time(time_column),\n  value1\nFROM\n  metric_table\nWHERE\n  $__timeFilter(time_column)\n",
          "refId": "A"
        }
      ],
      "title": "DEBUG logs",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {}
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 16,
        "y": 126
      },
      "id": 20,
      "options": {
        "dataLinks": []
      },
      "targets": [
        {
          "alias": "",
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "expr": "irate(logback_events_total{instance=~\"$instance\", application=\"$application\", level=\"trace\"}[5m])",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "trace",
          "rawSql": "SELECT\n  $__time(time_column),\n  value1\nFROM\n  metric_table\nWHERE\n  $__timeFilter(time_column)\n",
          "refId": "A"
        }
      ],
      "title": "TRACE logs",
      "type": "timeseries"
    }
  ],
  "preload": false,
  "refresh": "",
  "schemaVersion": 40,
  "tags": [],
  "templating": {
    "list": [
      {
        "current": {
          "text": "",
          "value": ""
        },
        "datasource": "prometheus",
        "definition": "",
        "includeAll": false,
        "label": "Application",
        "name": "application",
        "options": [],
        "query": "label_values(application)",
        "refresh": 2,
        "regex": "",
        "type": "query"
      },
      {
        "allValue": ".*",
        "current": {
          "text": "All",
          "value": "$__all"
        },
        "datasource": "prometheus",
        "definition": "",
        "includeAll": true,
        "label": "Instance",
        "name": "instance",
        "options": [],
        "query": "label_values(jvm_memory_used_bytes{application=\"$application\"}, instance)",
        "refresh": 2,
        "regex": "",
        "type": "query"
      },
      {
        "current": {
          "text": "HikariPool-1",
          "value": "HikariPool-1"
        },
        "datasource": "prometheus",
        "definition": "label_values(hikaricp_connections{application=\"$application\"}, pool)",
        "includeAll": false,
        "label": "HikariCP-Pool",
        "name": "hikaricp",
        "options": [],
        "query": "label_values(hikaricp_connections{application=\"$application\"}, pool)",
        "refresh": 1,
        "regex": "",
        "sort": 1,
        "type": "query"
      },
      {
        "current": {
          "text": "All",
          "value": "$__all"
        },
        "datasource": "prometheus",
        "definition": "label_values(jvm_memory_used_bytes{application=\"$application\", area=\"heap\"},id)",
        "includeAll": true,
        "label": "Memory Pool (heap)",
        "name": "memory_pool_heap",
        "options": [],
        "query": "label_values(jvm_memory_used_bytes{application=\"$application\", area=\"heap\"},id)",
        "refresh": 1,
        "regex": "",
        "sort": 1,
        "type": "query"
      },
      {
        "current": {
          "text": "All",
          "value": "$__all"
        },
        "datasource": "prometheus",
        "definition": "label_values(jvm_memory_used_bytes{application=\"$application\", area=\"nonheap\"},id)",
        "includeAll": true,
        "label": "Memory Pool (nonheap)",
        "name": "memory_pool_nonheap",
        "options": [],
        "query": "label_values(jvm_memory_used_bytes{application=\"$application\", area=\"nonheap\"},id)",
        "refresh": 1,
        "regex": "",
        "sort": 1,
        "type": "query"
      }
    ]
  },
  "time": {
    "from": "now-6h",
    "to": "now"
  },
  "timepicker": {
    "refresh_intervals": [
      "10s",
      "30s",
      "1m",
      "5m",
      "15m",
      "30m",
      "1h",
      "2h",
      "1d"
    ]
  },
  "timezone": "",
  "title": "SpringBoot APM Dashboard",
  "uid": "X034JGT7Gz",
  "version": 1,
  "weekStart": ""
}