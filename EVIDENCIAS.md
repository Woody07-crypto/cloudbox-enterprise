# Guía de evidencias — Laboratorio 10

Guarda las capturas en una carpeta local `evidencias/` si lo deseas. Esa carpeta está ignorada por Git para evitar publicar datos de la cuenta. En las capturas oculta el número de cuenta, Access Key ID, Secret Access Key y cualquier otro secreto.

## Evidencias solicitadas

1. **Infraestructura del Laboratorio 9 operativa**
   - Terminal, dentro de `laboratorio 10`: ejecuta `terraform output`.
   - Captura las salidas `frontend_url`, `api_url`, `cloudfront_domain`, `documents_queue_url` y `documents_queue_arn`.
   - Abre también la URL de `frontend_url` en el navegador y captura la aplicación cargada.

2. **Repositorio GitHub creado**
   - GitHub → perfil `Woody07-crypto` → repositorio `cloudbox-enterprise`.
   - Captura el encabezado donde se vea el propietario, nombre del repositorio y rama `main`.

3. **Proyecto Terraform cargado al repositorio**
   - Repositorio → pestaña **Code**.
   - Captura la lista raíz con `main.tf`, `providers.tf`, `variables.tf`, `outputs.tf`, `backend.tf`, `backend-resources.tf`, `modules/` y `.github/`.

4. **Bucket S3 para Backend creado**
   - AWS Console → S3 → Buckets → `cloudbox-terraform-state-953305038680`.
   - Captura el nombre del bucket.
   - En **Properties**, captura **Bucket Versioning: Enabled** y **Default encryption: SSE-S3**.

5. **Tabla DynamoDB para Locking creada**
   - AWS Console → DynamoDB → Tables → `terraform-lock` → **Overview**.
   - Captura estado **Active**, clave de partición `LockID (String)` y modo **On-demand**.

6. **Backend remoto configurado**
   - GitHub → `backend.tf`; captura `bucket`, `key`, `region`, `dynamodb_table` y `encrypt`.
   - AWS Console → S3 → bucket del backend → carpeta `cloudbox-enterprise/`.
   - Captura el objeto `terraform.tfstate`. No abras ni muestres su contenido.

7. **GitHub Secrets configurados**
   - Repositorio → **Settings** → **Secrets and variables** → **Actions**.
   - Captura la lista con `AWS_ACCESS_KEY_ID` y `AWS_SECRET_ACCESS_KEY`. GitHub no muestra los valores, que es el resultado correcto.

8. **Workflow de GitHub Actions creado**
   - Repositorio → `.github/workflows/terraform.yml`.
   - Captura el archivo y el nombre `CloudBox Enterprise CI/CD`.
   - También puedes usar **Actions** → panel izquierdo, donde aparece el workflow.

9. **Pipeline ejecutando terraform fmt**
   - Repositorio → **Actions** → `CloudBox Enterprise CI/CD` → ejecución más reciente → job **Terraform**.
   - Expande **Terraform Format** y captura el paso con marca verde.

10. **Pipeline ejecutando terraform validate**
    - En la misma ejecución, expande **Terraform Validate**.
    - Captura el comando y la marca verde.

11. **Pipeline ejecutando terraform plan**
    - En la misma ejecución, expande **Terraform Plan**.
    - Captura `Plan: ...` o `No changes` y la marca verde.

12. **Pipeline ejecutando terraform apply**
    - En la misma ejecución, expande **Terraform Apply**.
    - Captura `Apply complete!` y la marca verde.

13. **Infraestructura desplegada automáticamente**
    - AWS Console → CloudFormation no aplica aquí; muestra directamente S3, Lambda, API Gateway, DynamoDB, SQS y CloudFront.
    - La evidencia más clara es combinar la ejecución verde de Actions con `terraform output` y la aplicación abierta mediante `frontend_url`.

14. **Entrega final del laboratorio**
    - Captura la página principal del repositorio con el último commit y el indicador verde del workflow.
    - Entrega la URL del repositorio y este archivo como índice de evidencias.

## Comandos útiles

```powershell
terraform output
terraform state list
git remote -v
git log --oneline -3
```

## Evidencias que no deben mostrar información sensible

- Nunca captures el valor de `AWS_SECRET_ACCESS_KEY`.
- No publiques `terraform.tfstate`, `terraform.tfvars` ni archivos `.env`.
- Si una captura muestra el Access Key ID o el número de cuenta, difumínalos antes de entregarla.
