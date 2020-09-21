import 'package:flutter/material.dart';

import 'package:boss_zhipin/widgets/sliver_job_detail_header.dart';

class JobDetail extends StatefulWidget {
  @override
  _JobDetail createState() => new _JobDetail();
}

class _JobDetail extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverJobDetailHeader(
                title: 'web前端工程师',
                paddingTop: MediaQuery.of(context).padding.top,
                expandedHeight: 300,
                collapsedHeight: 40,
              ),
            ),
            SliverFillRemaining(
                child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          'https://img1.gamersky.com/image2019/07/20190725_ll_red_136_2/gamersky_07small_14_201972510258D0.jpg',
                          width: 130,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 16)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '哪吒之魔童降世',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF333333),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text(
                            '动画/中国大陆/110分钟',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF999999),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 2)),
                          Text(
                            '2019-07-26 08:00 中国大陆上映',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF999999),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 2)),
                          Text(
                            '32.1万人想看/大V推荐度95%',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF999999),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(height: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '剧情简介',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
