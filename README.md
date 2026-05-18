# 高速公路服务区智能化系统

## 项目概览

本项目包含高速公路服务区智能化解决方案的完整演示系统：

| 文件 | 说明 |
|------|------|
| `服务区智能化场景.pptx` | 三页PPT介绍方案概览 |
| `服务区日报模板.xlsx` | 服务区日报模板（含填写说明和汇总看板） |
| `服务区智能问答Demo.html` | 贵阳→黔东南路径规划智能问答演示 |
| `服务区智能问答系统V2.html` | 智能问答系统增强版（5大场景） |
| `服务区区长秘书大模型Demo.html` | 区长秘书行政助手演示 |
| `服务区绩效考核大模型Demo.html` | 绩效数据分析考核系统演示 |
| `服务区预警指挥调度Demo.html` | 节假日应急调度预警系统演示 |
| `服务区系统导航.html` | Docker部署首页导航 |

---

## Docker本地部署

### 快速启动

```bash
# 1. 克隆仓库
git clone https://github.com/jiayouwlf-glitch/fineruanbruce.git
cd fineruanbruce

# 2. 构建并启动
docker-compose up -d

# 3. 访问系统
浏览器打开 http://localhost:8080
```

### 系统访问地址

| 地址 | 系统 |
|------|------|
| `http://localhost:8080/` | 系统导航首页 |
| `/qa` | 智能问答系统 |
| `/secretary` | 区长秘书系统 |
| `/performance` | 绩效考核系统 |
| `/warning` | 预警指挥调度系统 |

### 常用命令

```bash
# 查看运行状态
docker-compose ps

# 查看日志
docker-compose logs -f

# 停止服务
docker-compose down

# 重启服务
docker-compose restart

# 重新构建
docker-compose build --no-cache && docker-compose up -d
```

---

## 技术栈

- **Web服务器**: nginx:alpine
- **前端**: HTML5 + CSS3 + JavaScript
- **容器化**: Docker + Docker Compose

---

帆软软件 · 高速公路服务区智能化解决方案