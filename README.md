# CloudBox Enterprise CI/CD — Laboratorio 10

Automatización de la infraestructura de CloudBox mediante Terraform, backend remoto en Amazon S3/DynamoDB y GitHub Actions.

## Componentes

- Aplicación e infraestructura recuperadas del Laboratorio 9.
- Estado remoto cifrado y versionado en S3.
- Bloqueo del estado mediante DynamoDB.
- Pipeline CI/CD para `terraform fmt`, `validate`, `plan` y `apply`.

## Workflow

El workflow `.github/workflows/terraform.yml` se ejecuta con cada `push` a `main` y también puede iniciarse manualmente desde GitHub Actions.

## Evidencias

Consulta [EVIDENCIAS.md](EVIDENCIAS.md) para saber dónde encontrar y cómo capturar cada una de las 14 evidencias solicitadas.
