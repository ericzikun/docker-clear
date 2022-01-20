# docker-clear

本项目用于构建针对后端程序员常用的docker镜像，傻瓜式操作，仓库内均为作者测试成功的镜像构建文件，并且每个容器均包含详细的说明文档，每个容器的数据均为空，仅需替换自己的数据即可完成构建。

# docker-es-kibana

配置端口映射：
在es.yml文件
启动命令：
docker-compose -f es.yml up -d


# docker-neo4j

在volumes中映射本地相应文件挂载即可

admin-import导入数据：

1. 启动容器 

2. 进入容器内，删除data/databases 和data/transaction内的全部文件，

3. 在bin下执行admin-import 命令 ，不要带数据库名字 ，会加载到默认的数据库中

4. ./neo4j-admin import --nodes ../import/predicates/entity/entity.csv --relationships ../import/predicates/rel/rel.csv --skip-bad-relationships --skip-duplicate-nodes=true --high-io=true

5. exit容器，restart容器

6. 如果容器内外做了端口映射，比如：

7. ports:

​      \- 8474:7474

​      \- 8687:7687

​      那么在8474登录可视化界面时，需要将连接的服务改成 8687，否则连接失败！

# docker-nginx

将前端项目放在dist内即可，需要包含index.html，nginx会去改映射文件夹中找index.html文件
