
# PigeonOJ
HUSTOJ，一个流行的信息学在线评测系统。跨平台，易安装，有题库

本项目是其2.0版本

中文  |  ~~English~~

 ~~[一键安装脚本（拿来就用）]()~~（编写中）

[正常安装（可自由定制）](#目录)

## 目录

> 1. [环境搭建](#环境搭建)
> 2. [配置Docker加速器](#配置Docker加速器（可选）)
> 3. [部署PigeonOJ](#部署PigeonOJ)
> 4. [常见问题](#常见问题)

---

## 环境搭建

> 1. [Linux 环境](#linux-环境)
> 2. [Windows 环境](#windows-环境)

### Linux 环境

1. 安装必要的依赖

    **注意：使用Python2的用户请务必升级到Python3.5及以上版本，否则部署过程中可能出错**

    + 基于 Ubuntu 16.04 安装

        ```bash
        sudo apt-get update && sudo apt-get install -y vim python3-pip curl git
        pip install docker-compose
        ```

    + **基于 Ubuntu 18.04 安装（推荐）**

        ```bash
        sudo apt update && sudo apt install -y vim python3-pip curl git
        pip install docker-compose
        ```

    + 其他系统

        请自行搜索方法安装 `vim`、 `curl`、 `Python`、`pip`、`git`、`docker-compose` 。

2. 安装 Docker 

    国内用户使用脚本一键安装: `sudo curl -sSL https://get.daocloud.io/docker | sh`  
    国外用户使用脚本一键安装: `sudo curl -sSL get.docker.com | sh`
    
    详细步骤参照： [https://docs.docker.com/install/](https://docs.docker.com/install/)

### Windows 环境

> 1. [Windows 10 专业版/教育版/企业版 x64](#Windows-10-专业版/教育版/企业版-x64-Build-15063-or-later)
> 2. [Windows 10 家庭版/家庭单语言版 x64](#Windows-10-家庭版/家庭单语言版-x64)
> 3. [Windows 7 和 Windows 8/8.1 用户](#Windows-7-和-Windows-881-用户)

**提示：Windows 下的安装仅供体验，勿在生产环境使用。如有必要，请使用虚拟机安装 Linux 并将 OJ 安装在其中。**

#### Windows 10 专业版/教育版/企业版 x64 (Build 15063 or later)

1. 安装 Windows 的 Docker 工具，步骤参照：[https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)
2. 右击右下角 Docker 图标，选择 Settings 进行设置
3. 选择 `Shared Drives` 菜单，之后勾选你想安装 OJ 的盘符位置（例如勾选D盘），点击 `Apply`
4. 输入 Windows 的账号密码进行文件共享
5. 安装 `Python`、`pip`、`git`、`docker-compose`，安装方法自行搜索。

    **注意：安装完成后请使用 Windows 10 的 Powershell 来完成 Docker 相关操作**

#### Windows 10 家庭版/家庭单语言版 x64

**以下两种方法任选其一**

+ 安装 Hyper-V ，安装方法自行搜索。安装完成后的步骤同 []()

+ 安装 Docker Toolbox，并自行设置共享文件夹。

    Docker Toolbox 安装方法：[https://docs.docker.com/toolbox/toolbox_install_windows/](https://docs.docker.com/toolbox/toolbox_install_windows/)


#### Windows 7 和 Windows 8/8.1 用户
安装 Docker Toolbox ，并自行设置共享文件夹。

安装方法：[https://docs.docker.com/toolbox/toolbox_install_windows/](https://docs.docker.com/toolbox/toolbox_install_windows/)


## 配置Docker加速器（可选）

详细教程请参照：[https://help.aliyun.com/document_detail/60750.html](https://help.aliyun.com/document_detail/60750.html)

## 部署PigeonOJ

1.请选择磁盘空间富余的位置，运行下面的命令

```bash
git clone -b 2.0 https://github.com/Pigeon-Developer/PigeonOnlineJudgeDeploy.git && cd PigeonOnlineJudgeDeploy
```

2.启动服务

```bash
docker-compose up -d
```

根据网速情况，大约5到30分钟就可以自动搭建完成，全程无需人工干预。

等命令执行完成，然后运行 `docker ps -a` ，当看到所有的容器的状态没有 `unhealthy` 或 `Exited (x) xxx` 就代表 OJ 已经启动成功。

## 常见问题

1. 我要定制自己的OJ

    若需要对系统进行修改或二次开发，请参照各模块的 README ，修改完成后需自行构建 Docker 镜像并修改 docker-compose.yml

2. 未完待续...

