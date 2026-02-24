#!/bin/bash
# Rebuild Angular and push frontend image so EC2 serves /api instead of localhost:8080
set -e
cd "$(dirname "$0")"
echo "Step 1: Building Angular (production)..."
npm run build -- --configuration=production
echo "Step 2: Building and pushing Docker image..."
docker buildx build \
  --platform linux/amd64 \
  -t arshthakur/mean-frontend:latest \
  --push \
  .
echo "Done. On EC2 run: docker-compose pull frontend && docker-compose up -d"
echo "Then open http://3.93.52.193:8081 and hard refresh (Ctrl+Shift+R)"
