{{- define "argocd-boostrap.destination" -}}
{{- if .cfg.destination -}}
{{- toYaml .cfg.destination | nindent 0 -}}
{{- else -}}
{{- toYaml .global.defaultDestination | nindent 0 -}}
{{- end -}}
{{- end -}}

{{- define "argocd-boostrap.project" -}}
{{- if .project }}
{{- .project }}
{{- else -}}
{{- print "default" -}}
{{- end }}
{{- end -}}

{{- define "argocd-boostrap.syncPolicy" -}}
{{- if .cfg.syncPolicy }}
syncPolicy:
{{- toYaml .cfg.syncPolicy | nindent 2}}
{{- else if .global.defaultSyncPolicy -}}
syncPolicy:
{{- toYaml .global.defaultSyncPolicy | nindent 2 -}}
{{- end -}}
{{- end -}}
