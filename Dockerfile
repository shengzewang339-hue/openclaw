FROM  ghcr.io/openclaw/openclaw:latest


#导入配置文件
COPY --chown=node:node ./openclaw.json /home/node/.openclaw/openclaw.json
#导入智能体
COPY --chown=node:node ./seedance2-storyboard /home/node/.openclaw/
COPY --chown=node:node ./animator /home/node/.openclaw/

# 4. 切换回 non-root 用户，确保权限安全
USER node

# 暴露 OpenClaw 默认端口
EXPOSE 18789