# Rails CLoud Run Sample

## Requirements

 * gcloud CLI
 * ruby 2.5+
 * rails 5.1+

## Deploy

Prepare required services.

### Create Cloud SQL instance

Create Cloud SQL instance and database.

```
./scripts/cloud_sql.sh
```

### Push image to Container Registry

Create image and push it to Container registry.

```
./scripts/build.sh
```

### Deploy to Cloud Run

```
./scripts/deploy.sh
```
