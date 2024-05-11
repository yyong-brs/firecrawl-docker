#!/bin/bash

# 启动 workers 服务，并在后台运行
pnpm run workers &

# 启动主服务
pnpm run start