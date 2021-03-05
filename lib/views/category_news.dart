import 'package:flutter/material.dart';
import '../helper/news.dart';
import '../models/article_model.dart';
import 'article_view.dart';

class CategoryNews extends StatefulWidget {
  final String category;
  CategoryNews({this.category});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  bool _loading = true;
  List<ArticleModel> articles = List<ArticleModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  getNews() async {
    CatNews catnewsClass = new CatNews();
    await catnewsClass.getCatNews(widget.category);
    articles = catnewsClass.catnews;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Taja'),
            Text(
              'NEWS',
              style: TextStyle(color: Colors.blue[800]),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: ListView.builder(
                          itemCount: articles.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return BlockTile(
                              imgurl: articles[index].urlToImage,
                              title: articles[index].title,
                              desc: articles[index].description,
                              url: articles[index].url,
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

class BlockTile extends StatelessWidget {
  final String imgurl, desc, title, url;

  BlockTile(
      {@required this.imgurl,
      @required this.title,
      @required this.desc,
      @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleViews(
                      blogurl: url,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(
                imgurl,
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              desc,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
