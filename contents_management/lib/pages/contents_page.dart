import 'package:flutter/material.dart';
import '../components/buttons.dart';
import '../components/contents_detail.dart';
import '../components/contents_list.dart';
import '../components/serviceNameIcon.dart';
import '../models/Contents.dart';

List<Content> contents = [
  Content(
      title: '坊っちゃん',
      body:
          '親譲おやゆずりの無鉄砲むてっぽうで小供の時から損ばかりしている。小学校に居る時分学校の二階から飛び降りて一週間ほど腰こしを抜ぬかした事がある。なぜそんな無闇むやみをしたと聞く人があるかも知れぬ。別段深い理由でもない。新築の二階から首を出していたら、同級生の一人が冗談じょうだんに、いくら威張いばっても、そこから飛び降りる事は出来まい。弱虫やーい。と囃はやしたからである。小使こづかいに負ぶさって帰って来た時、おやじが大きな眼めをして二階ぐらいから飛び降りて腰を抜かす奴やつがあるかと云いったから、この次は抜かさずに飛んで見せますと答えた。親類のものから西洋製のナイフを貰もらって奇麗きれいな刃はを日に翳かざして、友達ともだちに見せていたら、一人が光る事は光るが切れそうもないと云った。切れぬ事があるか、何でも切ってみせると受け合った。そんなら君の指を切ってみろと注文したから、何だ指ぐらいこの通りだと右の手の親指の甲こうをはすに切り込こんだ。幸さいわいナイフが小さいのと、親指の骨が堅かたかったので、今だに親指は手に付いている。しかし創痕きずあとは死ぬまで消えぬ。庭を東へ二十歩に行き尽つくすと、南上がりにいささかばかりの菜園があって、真中まんなかに栗くりの木が一本立っている。これは命より大事な栗だ。実の熟する時分は起き抜けに背戸せどを出て落ちた奴を拾ってきて、学校で食う。菜園の西側が山城屋やましろやという質屋の庭続きで、この質屋に勘太郎かんたろうという十三四の倅せがれが居た。勘太郎は無論弱虫である。弱虫の癖くせに四つ目垣を乗りこえて、栗を盗ぬすみにくる。ある日の夕方折戸おりどの蔭かげに隠かくれて、とうとう勘太郎を捕つらまえてやった。その時勘太郎は逃にげ路みちを失って、一生懸命いっしょうけんめいに飛びかかってきた。向むこうは二つばかり年上である。弱虫だが力は強い。鉢はちの開いた頭を、こっちの胸へ宛あててぐいぐい押おした拍子ひょうしに、勘太郎の頭がすべって、おれの袷あわせの袖そでの中にはいった。邪魔じゃまになって手が使えぬから、無暗に手を振ふったら、袖の中にある勘太郎の頭が、右左へぐらぐら靡なびいた。しまいに苦しがって袖の中から、おれの二の腕うでへ食い付いた。痛かったから勘太郎を垣根へ押しつけておいて、足搦あしがらをかけて向うへ倒たおしてやった。山城屋の地面は菜園より六尺がた低い。勘太郎は四つ目垣を半分崩くずして、自分の領分へ真逆様まっさかさまに落ちて、ぐうと云った。勘太郎が落ちるときに、おれの袷の片袖がもげて、急に手が自由になった。その晩母が山城屋に詫わびに行ったついでに袷の片袖も取り返して来た。この外いたずらは大分やった。大工の兼公かねこうと肴屋さかなやの角かくをつれて、茂作もさくの人参畠にんじんばたけをあらした事がある。人参の芽が出揃でそろわぬ処ところへ藁わらが一面に敷しいてあったから、その上で三人が半日相撲すもうをとりつづけに取ったら、人参がみんな踏ふみつぶされてしまった。古川ふるかわの持っている田圃たんぼの井戸いどを埋うめて尻しりを持ち込まれた事もある。太い孟宗もうそうの節を抜いて、深く埋めた中から水が湧わき出て、そこいらの稲いねにみずがかかる仕掛しかけであった。その時分はどんな仕掛か知らぬから、石や棒ぼうちぎれをぎゅうぎゅう井戸の中へ挿さし込んで、水が出なくなったのを見届けて、うちへ帰って飯を食っていたら、古川が真赤まっかになって怒鳴どなり込んで来た。たしか罰金ばっきんを出して済んだようである。'),
  Content(title: 'title2', body: 'body2'),
  Content(title: 'title3', body: 'body3'),
  Content(title: 'title4', body: 'body4'),
  Content(title: 'title5', body: 'body5'),
  Content(title: 'title6', body: 'body6'),
  Content(title: 'title7', body: 'body7'),
  Content(title: 'title8', body: 'body8'),
  Content(title: 'title9', body: 'body9'),
  Content(title: 'title10', body: 'body10'),
  Content(title: 'title11', body: 'body11'),
  Content(title: 'title12', body: 'body12'),
  Content(title: 'title13', body: 'body13'),
  Content(title: 'title14', body: 'body14'),
  Content(title: 'title15', body: 'body15'),
  Content(title: 'title16', body: 'body16'),
  Content(title: 'title17', body: 'body17'),
  Content(title: 'title18', body: 'body18'),
  Content(title: 'title19', body: 'body19'),
  Content(title: 'title20', body: 'body20'),
  Content(title: 'title21', body: 'body21'),
  Content(title: 'title22', body: 'body22'),
  Content(title: 'title23', body: 'body23'),
  Content(title: 'title24', body: 'body24'),
  Content(title: 'title25', body: 'body25'),
  Content(title: 'title26', body: 'body26'),
  Content(title: 'title27', body: 'body27'),
  Content(title: 'title28', body: 'body28'),
  Content(title: 'title29', body: 'body29'),
  Content(title: 'title30', body: 'body30'),
  Content(title: 'title31', body: 'body31'),
  Content(title: 'title32', body: 'body32'),
  Content(title: 'title33', body: 'body33'),
  Content(title: 'title34', body: 'body34'),
  Content(title: 'title35', body: 'body35'),
];

void main() => runApp(const ContentsPage());

class ContentsPage extends StatefulWidget {
  const ContentsPage({super.key});

  @override
  State<ContentsPage> createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage> {
  // state _isEnabled
  bool _isEnabled = false;
  int _selectedContentIndex = 0;

  void selectContent(int index) {
    setState(() {
      _selectedContentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(fontFamily: "NotoSansJp"),
        home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Row(
          // left
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                width: 300,
                child: Column(
                  children: [
                    const ServiceNameIcon(),
                    const SizedBox(height: 20),
                    ContentsList(
                      isEnabled: _isEnabled,
                      contents: contents,
                      selectContentIndex: _selectedContentIndex,
                      selectContent: selectContent,
                    ),
                    Buttons(
                      isEnabled: _isEnabled,
                      changeEnabledStatus: _enabledStateChange,
                    )
                  ],
                )),
            SizedBox(width: 42), // Todo: 52
            ContentsDetail(
              selectedContentIndex: _selectedContentIndex,
              contents: contents[_selectedContentIndex],
            ),
          ],
        ),
      ),
    ));
  }

  void _enabledStateChange() {
    setState(() {
      _isEnabled = !_isEnabled;
    });
  }
}
