
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install -g pnpm && pnpm install --frozen-lockfile && pnpm --filter ./apps/builder... build
EXPOSE 3000
CMD ["pnpm", "--filter", "./apps/builder...", "start"]
