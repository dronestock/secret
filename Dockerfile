FROM storezhang/alpine:3.18.2


LABEL author="storezhang<华寅>" \
    email="storezhang@gmail.com" \
    qq="160290688" \
    wechat="storezhang" \
    description="Drone持续集成全局密钥插件"


# 复制文件
COPY secret /bin


RUN set -ex \
    \
    \
    \
    # 增加执行权限
    && chmod +x /bin/secret \
    \
    \
    \
    && rm -rf /var/cache/apk/*


# 执行命令
ENTRYPOINT /bin/secret


# 暴露端口
EXPOSE 3000
