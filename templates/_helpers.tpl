{{- define "weatherapp.name" -}}
weatherapp
{{- end }}

{{- define "weatherapp.fullname" -}}
{{ .Release.Name }}
{{- end }}
