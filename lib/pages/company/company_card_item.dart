import 'package:flutter/material.dart';

class CompanyCardItem extends StatefulWidget {
  @override
  _CompanyCardItem createState() => new _CompanyCardItem();
}

class _CompanyCardItem extends State<CompanyCardItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              margin: const EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: new Color.fromRGBO(245, 245, 245, 1),
                ),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      'https://docs.alibabagroup.com/assets2/images/cn/global/logo_mobile.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '阿里巴巴集团',
                    textAlign: TextAlign.left,
                  ),
                  Text('已上市 | 10000人以上 | 互联网'),
                  RawChip(
                    label: Text(
                      '参与物流和本地服务行业',
                      style: TextStyle(
                          color: new Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                    backgroundColor: new Color.fromRGBO(245, 245, 245, 1),
                    shape: RoundedRectangleBorder(),
                  ),
                  RawChip(
                    label: Text(
                      '年终奖、股票期权、餐补、单休、上午09:00~晚上09:00',
                      style: TextStyle(
                          color: new Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                    backgroundColor: new Color.fromRGBO(245, 245, 245, 1),
                    shape: RoundedRectangleBorder(),
                  ),
                  Text('热招高级前端技术专家')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
