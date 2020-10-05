import 'package:flutter/material.dart';

import 'package:boss_zhipin/models/job.dart';
import './job_tag.dart';

class JobDetailContent extends StatelessWidget {
  JobDetailContent({Key key, this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Text(
                '职位详情',
                style: TextStyle(
                  color: new Color.fromRGBO(45, 45, 45, 1),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List<Widget>.generate(
              this.job.tags.length,
              (index) => Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: JobTag(text: this.job.tags[index]),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text('''
岗位描述：
1）负责阿里商旅相关业务的多端页面开发、上线、维护工作
2）参与前端技术架构设计，承担核心模块的代码编写
3）保障业务性能与稳定性，分析各类数据，识别并解决瓶颈问题
4）在理解产品业务的基础上，打造提升产品体验或研发效能的技术工具、产品、平台
5）关注并实践前端前沿技术，通过新技术反哺团队与业务
岗位要求：
1）本科或以上学历，2年以上前端开发经验
2）精通各种前端基础技术，包括 HTML/CSS/JavaScript 等，熟悉函数式、性能优化、Hybrid 技术者优先
3）熟悉至少一个主流框架（如 Vue/React ），能够高效完成视觉稿拆解及编码实现
4）对前端工程化与模块化开发有一定了解，并有一定实践经验（如 Gulp/Webpack/Rollup/CommonJS 等）
5）对前端技术有持续热情，具备良好的团队协作精神，个性乐观开朗，善于与各种不同背景角色合作
6）具备跨终端前端开发能力、具备客户端开发能力、有高质量开源项目、具备数据分析技能者优先
          '''),
                flex: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
