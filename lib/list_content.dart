import 'package:flutter/material.dart';

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.icon, this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
  final Widget icon;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
      Icon(
        Icons.email,
        size: 30,
      ),
      'ekarifqi1@gmail.com'),
  Entry(
      Icon(
        Icons.phone,
        size: 30,
      ),
      '+62 8223 76666 76'),
  Entry(
    Icon(
      Icons.school,
      size: 30,
    ),
    'Education',
    <Entry>[
      Entry(Text('(2012)'), 'SD Negeri Jenang 02 Majenang'),
      Entry(Text('(2015)'), 'SMP Negeri 1 Majenang'),
      Entry(Text('(2016)'), 'SMA Semesta Bilingual Boarding School Semarang'),
      Entry(Text('(2018)'), 'SMA Negeri 2 Purwokerto'),
    ],
  ),
  Entry(
    Icon(
      Icons.stars,
      size: 30,
    ),
    'Achievement',
    <Entry>[
      Entry(Text('(2013)'), 'Regional Chess Competition - 2nd Place'),
      Entry(Text('(2016)'), 'Corefest Logic Competition - 2nd Place'),
      Entry(Text('(2017)'),
          'Contributed to open source software completing 19 tasks as part of  Google Code-in 2017'),
      Entry(Text('(2017)'), 'Olimpiade TIK - 2nd Place'),
      Entry(Text('(2017)'), 'Mathematics Logic Competition - 1st Place'),
      Entry(Text('(2017)'), 'AFR Habibie Festival - 2nd Place'),
      Entry(Text('(2017)'), 'Game Dev Habibie Festival - 3rd Place'),
      Entry(Text('(2017)'),
          'Smart Student Competition - 3rd Place & Best Theory'),
      Entry(Text('(2018)'), 'Try Out SBMPTN Journal Academy - 3rd Place'),
    ],
  ),
  Entry(
    Icon(
      Icons.code,
      size: 30,
    ),
    'Tech Skills',
    <Entry>[
      Entry(
          IconImage(
              'https://img.pngio.com/buy-adobe-education-contact-multiblue-and-receive-discounts-for-is-there-png-in-adobe-illustrator-600_600.png'),
          'Adobe Illustrator'),
      Entry(
          IconImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRijd1VUrMy7UoGLKmua4d2nmQQwsw8Ntm9M2RinqNgLZ19hvUi'),
          'Adobe Photoshop'),
      Entry(
          IconImage(
              'https://upload.wikimedia.org/wikipedia/en/e/e7/Construct2Logo.png'),
          'Construct 2'),
      Entry(
          IconImage(
              'https://www.coreldraw.com/static/cdgs/product_content/cdgs/2019/boxshot-coreldraw-upgrade-program-2019.png'),
          'Corel Draw'),
      Entry(
          IconImage(
              'https://icon2.kisspng.com/20180417/irq/kisspng-firebase-cloud-messaging-computer-icons-google-clo-github-5ad5d3cde70706.9853526815239628299463.jpg'),
          'Firebase'),
      Entry(
          IconImage(
              'https://cdn-images-1.medium.com/max/1200/1*ilC2Aqp5sZd1wi0CopD1Hw.png'),
          'Flutter'),
      Entry(
          IconImage(
              'https://www.stickpng.com/assets/images/58480e35cef1014c0b5e4920.png'),
          'Laravel'),
      Entry(
          IconImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Microsoft_Office_2013_logo.svg/864px-Microsoft_Office_2013_logo.svg.png'),
          'Microsoft Office'),
      Entry(
          IconImage(
              'https://icon2.kisspng.com/20180808/cfz/kisspng-logo-brand-product-design-mongodb-inc-mongodb-stickker-5b6abb6634a284.4346054315337214462156.jpg'),
          'MongoDB'),
      Entry(IconImage('https://pngimg.com/uploads/mysql/mysql_PNG22.png'),
          'MySQL'),
      Entry(
          IconImage(
              'http://pluspng.com/img-png/nodejs-png-nodejs-icon-png-50-px-1600.png'),
          'Node JS'),
      Entry(
          IconImage(
              'https://cdn4.iconfinder.com/data/icons/logos-3/600/React.js_logo-512.png'),
          'React JS'),
      Entry(
          IconImage(
              'https://www.pngkit.com/png/detail/373-3738691_react-native-svg-transformer-allows-you-import-svg.png'),
          'React Native'),
      Entry(
          IconImage(
              'http://www.sclance.com/pngs/unity-png/unity_png_1441960.jpg'),
          'Unity Engine'),
    ],
  ),
];

class IconImage extends StatelessWidget {
  IconImage(this.url);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          image: DecorationImage(image: NetworkImage(url))),
    );
  }
}

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return ListTile(leading: root.icon, title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      leading: root.icon,
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
