## 生物分類系のマスタ

# マスタカテゴリー
Category.seed(
  {
    id: 1, name: "ドメイン", small_schema: "domain", big_schema: "Domain", plural_schema: "domains", sort: 10,
    note: "生物分類学において、ドメイン（英: domain、羅: regio）は、\n
      ドミニオン（dominion、dominium）、上界（superkingdom、superregnum）、レルム（realm）、帝国（empire、imperium）とも呼ばれ、\n
      すべての生物を合わせた分類階級の最高位である。\n
      ドメインは、1990年に、カール・ウーズ、オットー・カンドラー（英語版）、マーク・ウィーリス（英語版）によって\n
      考案された3ドメイン系（英語版）の分類体系で導入された概念である。"
  },
  {
    id: 2, name: "界", small_schema: "kingdom", big_schema: "Kingdom", plural_schema: "kingdoms", sort: 20,
    note: "界（かい、英: kingdom、羅: regnum）は、\n
      生物学におけるドメインに次いで2番目に高い分類階級である。\n
      界は門と呼ばれるより小さなグループに分けられる。"
  },
  {
    id: 3, name: "上門", small_schema: "super_phylum", big_schema: "SuperPhylum", plural_schema: "super_phylums", sort: 30,
    note: "上門（じょうもん、英: superphylum）は、\n
      門の上に位置する分類である。"
  },
  {
    id: 4, name: "門", small_schema: "phylum", big_schema: "Phylum", plural_schema: "phylums", sort: 31,
    note: "門（もん、英: phylum, division、複数形: phyla、羅: phylum, divisio）は、\n
      生物分類のリンネ式階層分類における基本的分類階級のひとつであり、\n
      またその階級に属するタクソンのことである。生物全体はおよそ100の門に分類されているが、\n
      この数字は分類学者によって大きく異なる。界の下・綱の上に位置しており、\n
      門の下に亜門（あもん、英: subphylum, subdivision）を置く場合もある。\n
      \n
      また、「phylum」という単語の複数形は本当は「phyla」であるが、\n
      解りやすいように本アプリでは「phylums」で統一とする。"
  },
  {
    id: 5, name: "亜門", small_schema: "sub_phylum", big_schema: "SubPhylum", plural_schema: "sub_phylums", sort: 32,
    note: "亜門（あもん、英: subphylum, subdivision）は、\n
      門の下に位置する分類である。"
  },
  {
    id: 6, name: "上綱", small_schema: "super_class", big_schema: "SuperClasses", plural_schema: "super_classes", sort: 40,
    note: "上綱（じょうこう、英: superclass）は、\n
      綱の上に位置する分類である。"
  },
  {
    id: 7, name: "綱", small_schema: "class", big_schema: "Classes", plural_schema: "classes", sort: 41,
    note: "綱（こう、英: class、羅: classis）は、\n
      生物の分類における階級のひとつで、\n
      その階級に含まれるそれぞれのタクソンも綱と呼ぶ。\n
      門と目の間に位置し、綱の下に亜綱（あこう、英: subclass、羅: subclassis）をおく場合もある。"
  },
  {
    id: 8, name: "亜綱", small_schema: "sub_class", big_schema: "SubClasses", plural_schema: "sub_classes", sort: 42,
    note: "亜綱（あこう、英: subclass、羅: subclassis）は、\n
      綱の下に位置する分類である。"
  },
  {
    id: 9, name: "下綱", small_schema: "infra_class", big_schema: "InfraClasses", plural_schema: "infra_classes", sort: 43,
    note: "下綱（かこう、英: infraclass）は、\n
      亜綱の下に位置する分類である。"
  },
  {
    id: 10, name: "上目", small_schema: "super_order", big_schema: "SuperOrder", plural_schema: "super_orders", sort: 50,
    note: "上目（じょうもく、英: superorder）は、\n
      綱の上に位置する分類である。"
  },
  {
    id: 11, name: "目", small_schema: "order", big_schema: "Order", plural_schema: "orders", sort: 51,
    note: "目（もく、英: order、羅: ordo）は、\n
      生物分類のリンネ式階級分類における基本的階級のひとつ、\n
      および、その階級に属するタクソンのことである。\n
      \n
      目は、綱の下・科の上に位置する。\n
      さらに、目の上に上目（じょうもく、英: superorder、羅: supraordo）、\n
      目の下に亜目（あもく、英: suborder、羅: subordo）、\n
      亜目の下に下目（かもく、英: infraorder、羅: infraordo）、\n
      下目の下に小目（しょうもく、英: parvorder、羅: parvordo）を置くことがある。"
  },
  {
    id: 12, name: "亜目", small_schema: "sub_order", big_schema: "SubOrder", plural_schema: "sub_orders", sort: 52,
    note: "亜綱（あもく、英: suborder、羅: subordo）は、\n
      目の下に位置する分類である。\n
      \n
      亜目の下に下目（かもく、英: infraorder、羅: infraordo）、\n
      下目の下に小目（しょうもく、英: parvorder、羅: parvordo）を置くことがある。"
  },
  {
    id: 13, name: "下目", small_schema: "infra_order", big_schema: "InfraOrder", plural_schema: "infra_orders", sort: 53,
    note: "下目（かもく、英: superorder）は、\n
      綱の上に位置する分類である。"
  },
  {
    id: 14, name: "上科", small_schema: "super_family", big_schema: "SuperFamily", plural_schema: "super_families", sort: 60,
    note: "上科（じょうか、英: superfamily）は、\n
      科の上に位置する分類である。"
  },
  {
    id: 15, name: "科", small_schema: "family", big_schema: "Family", plural_schema: "families", sort: 61,
    note: "科（か、英: family、羅: familia）は、\n
      生物分類のリンネ式階層分類における基本的階級の1つ、\n
      および、その階級にあるタクソンである。\n
      \n
      科は、目の下・属の上にある。\n
      また科の上に上科（じょうか、英: superfamily）、\n
      下に亜科（あか、英: subfamily）をおく場合がある。\n
      上科は超科（ちょうか）と表記されることもある。"
  },
  {
    id: 16, name: "亜科", small_schema: "sub_family", big_schema: "SubFamily", plural_schema: "sub_families", sort: 62,
    note: "亜科（あか、英: subfamily）は、\n
      科の下に位置する分類である。"
  },
  {
    id: 17, name: "属", small_schema: "genuses", big_schema: "Genuses", plural_schema: "genuses", sort: 70,
    note: "属（ぞく、ラテン語: genus, pl.:genera）は、\n
      生物分類のリンネ式階級分類における基本的階級の1つ、\n
      および、その階級に属するタクソンである。\n
      \n
      属は科の下・種の上に位置する。\n
      属の下に亜属（subgenus、pl.: subgenera）をもうけることがある。\n
      \n
      また、「genus」という単語の複数形は「genera」と表記されることもあるが、\n
      本アプリでは解りやすいように「genuses」で統一とする。"
  },
  {
    id: 18, name: "亜属", small_schema: "sub_genuses", big_schema: "SubGenuses", plural_schema: "sub_genuses", sort: 71,
    note: "亜属（subgenus、pl.: subgenera）は、\n
      属の下に位置する分類である。"
  },
  {
    id: 19, name: "種", small_schema: "species", big_schema: "Species", plural_schema: "species", sort: 80,
    note: "種（しゅ、species）とは、\n
      生物分類上の基本単位である。\n
      2004年時点で命名済みの種だけで200万種あり、\n
      実際はその数倍から十数倍以上の種の存在が推定される。\n
      新しい種が形成される現象、メカニズムを種分化という。\n
      \n
      ラテン語の species より、単数の場合は省略形 sp. で、\n
      複数の場合は省略形 spp. で書き表す。\n
      「イヌ属のある種」であれば「Canis sp.」、\n
      「ネコ属のいくつかの種」であれば、「Felis spp.」と表現する。\n
      \n
      また、species の複数形は species です。\n
      単数形と複数形が同じ形の名詞で、\n
      生物を似た性質を持つ物同士で分類する際の基本単位のひとつです。"
  },
  {
    id: 20, name: "亜種", small_schema: "sub_species", big_schema: "SubSpecies", plural_schema: "sub_species", sort: 81,
    note: "亜種（あしゅ、英: subspecies）は、\n
      種の下に位置する分類である。\n
      新ラテン語もしくは英語の 「subspecies」 の和訳語で、\n
      しばしば subsp. や ssp. とも略記される。\n
      \n
      動物学では種の直下の区分は亜種のみであるが、\n
      植物学では変種および品種と併用している。\n
      動物学では亜種の下位区分として品種を用いる場合があり、\n
      犬種などがこれに該当するが、国際動物命名規約には規定されていない。\n
      一般に動物学における亜種は、分類学的に識別される地域個体群のことをいう。"
  },
  {
    id: 21, name: "レッドリスト", small_schema: "red_list", big_schema: "RedList", plural_schema: "red_lists", sort: 90,
    note: "レッドリスト（Red List）\n
      生物種の保全状況（ほぜんじょうきょう、Conservation status、保全状態とも）とは、\n
      ある生物の種（それ以下の分類群も含む）が現在、\n
      または将来的に存在している見込みを表す指標である。\n
      保全状況を評価する際には、現在何個体生存しているか、といった単純なことだけではなく、\n
      個体数の増減率や、繁殖の成功率、既知の脅威などさまざまな要因が考慮される。"
  },
  {
    id: 22, name: "レッドリスト大項目", small_schema: "red_list_big_name", big_schema: "RedListBigName", plural_schema: "red_list_big_names", sort: 91,
    note: "レッドリストの大項目。"
  }
)

# ドメイン
Domain.seed(
  { id: 1, name: "真核生物", eng_name: "eukarya", code: "D10", sort: 100 },
  { id: 2, name: "古細菌", eng_name: "archaea", code: "D11", sort: 200 },
  { id: 3, name: "細菌", eng_name: "bacteria", code: "D12", sort: 300 },
)

# 界(かい)
Kingdom.seed(
  { id: 1, name: "動物界", eng_name: "animal", code: "K10", sort: 100 },
  { id: 2, name: "植物界", eng_name: "plant", code: "K11", sort: 200 },
  { id: 3, name: "菌界", eng_name: "fungi", code: "K12", sort: 300 },
  { id: 4, name: "原生生物界", eng_name: "protist", code: "K13", sort: 400 },
  { id: 5, name: "古細菌界", eng_name: "archaea", code: "K14", sort: 500 },
  { id: 6, name: "真正細菌界", eng_name: "eubacteria", code: "K15", sort: 600 },
  { id: 7, name: "モネラ界", eng_name: "monera", code: "K16", sort: 700 },
)

# 上門(じょうもん)
SuperPhylum.seed(
  { id: 1, name: "新口動物", eng_name: "deuterostomia", code: "uP1000", parent_code: "K10", major_flg: true, sort: 100 },
  { id: 1, name: "脱皮動物", eng_name: "ecdysozoa", code: "uP1001", parent_code: "K10", major_flg: true, sort: 100 },
  { id: 1, name: "冠輪動物", eng_name: "lophotrochozoan", code: "uP1002", parent_code: "K10", major_flg: true, sort: 100 },
)

# 門(もん)
Phylum.seed(
  { id: 1, name: "脊索動物門", eng_name: "chordata", code: "P1000", parent_code: "K10", major_flg: true, sort: 100 },
  { id: 2, name: "棘皮動物門", eng_name: "echinodermata", code: "P1001", parent_code: "K10", major_flg: false, sort: 200 },
  { id: 3, name: "半索動物門", eng_name: "hemichordata", code: "P1002", parent_code: "K10", major_flg: false, sort: 300 },
  { id: 4, name: "珍渦虫動物門", eng_name: "xenoturbellida", code: "P1003", parent_code: "K10", major_flg: false, sort: 400 },
  { id: 5, name: "節足動物門", eng_name: "arthropoda", code: "P1004", parent_code: "K10", major_flg: true, sort: 500 },
  { id: 6, name: "線形動物門", eng_name: "nematoda", code: "P1005", parent_code: "K10", major_flg: true, sort: 600 },
  { id: 7, name: "緩歩動物門", eng_name: "tardigrada", code: "P1006", parent_code: "K10", major_flg: false, sort: 700 },
  { id: 8, name: "類線形動物門", eng_name: "nematomorpha", code: "P1007", parent_code: "K10", major_flg: false, sort: 800 },
  { id: 9, name: "有爪動物門", eng_name: "onychophora", code: "P1008", parent_code: "K10", major_flg: false, sort: 900 },
  { id: 10, name: "動吻動物門", eng_name: "kinorhyncha", code: "P1009", parent_code: "K10", major_flg: false, sort: 1000 },
  { id: 11, name: "胴甲動物門", eng_name: "loricifera", code: "P1010", parent_code: "K10", major_flg: false, sort: 1100 },
  { id: 12, name: "鰓曳動物門", eng_name: "priapulida", code: "P1011", parent_code: "K10", major_flg: false, sort: 1200 },
  { id: 13, name: "軟体動物門", eng_name: "mollusca", code: "P1012", parent_code: "K10", major_flg: true, sort: 1300 },
  { id: 14, name: "扁形動物門", eng_name: "platyhelminthes", code: "P1013", parent_code: "K10", major_flg: true, sort: 1400 },
  { id: 15, name: "環形動物門", eng_name: "annelida", code: "P1014", parent_code: "K10", major_flg: true, sort: 1500 },
  { id: 16, name: "外肛動物門", eng_name: "bryozoa", code: "P1015", parent_code: "K10", major_flg: false, sort: 1600 },
  { id: 17, name: "輪形動物門", eng_name: "rotifera", code: "P1016", parent_code: "K10", major_flg: false, sort: 1700 },
  { id: 18, name: "紐形動物門", eng_name: "nemertea", code: "P1017", parent_code: "K10", major_flg: false, sort: 1800 },
  { id: 19, name: "腹毛動物門", eng_name: "gastrotricha", code: "P1018", parent_code: "K10", major_flg: false, sort: 1900 },
  { id: 20, name: "無腸動物門", eng_name: "acoelomorpha", code: "P1019", parent_code: "K10", major_flg: false, sort: 2000 },
  { id: 21, name: "腕足動物門", eng_name: "brachiopoda", code: "P1020", parent_code: "K10", major_flg: false, sort: 2100 },
  { id: 22, name: "星口動物門", eng_name: "sipuncula", code: "P1021", parent_code: "K10", major_flg: false, sort: 2200 },
  { id: 23, name: "内肛動物門", eng_name: "entoprocta", code: "P1022", parent_code: "K10", major_flg: false, sort: 2300 },
  { id: 24, name: "ユムシ動物門", eng_name: "echiura", code: "P1023", parent_code: "K10", major_flg: false, sort: 2400 },
  { id: 25, name: "顎口動物門", eng_name: "gnathostomulida", code: "P1024", parent_code: "K10", major_flg: false, sort: 2500 },
  { id: 26, name: "毛顎動物門", eng_name: "chaetognatha", code: "P1025", parent_code: "K10", major_flg: false, sort: 2600 },
  { id: 27, name: "菱形動物門", eng_name: "rhombozoa", code: "P1026", parent_code: "K10", major_flg: false, sort: 2700 },
  { id: 28, name: "直泳動物門", eng_name: "orthonectida", code: "P1027", parent_code: "K10", major_flg: false, sort: 2800 },
  { id: 29, name: "箒虫動物門", eng_name: "phoronida", code: "P1028", parent_code: "K10", major_flg: false, sort: 2900 },
  { id: 30, name: "有輪動物門", eng_name: "cycliophora", code: "P1029", parent_code: "K10", major_flg: false, sort: 3000 },
  { id: 31, name: "微顎動物門", eng_name: "micrognathozoa", code: "P1030", parent_code: "K10", major_flg: false, sort: 3100 },
  { id: 32, name: "刺胞動物門", eng_name: "cnidaria", code: "P1031", parent_code: "K10", major_flg: true, sort: 3200 },
  { id: 33, name: "海綿動物門", eng_name: "porifera", code: "P1032", parent_code: "K10", major_flg: false, sort: 3300 },
  { id: 34, name: "有櫛動物門", eng_name: "ctenophora", code: "P1033", parent_code: "K10", major_flg: false, sort: 3400 },
  { id: 35, name: "平板動物門", eng_name: "placozoa", code: "P1034", parent_code: "K10", major_flg: false, sort: 3500 },
  { id: 36, name: "紅色植物門", eng_name: "rhodophyta", code: "P1035", parent_code: "K11", major_flg: true, sort: 3600 },
  { id: 37, name: "灰色植物門", eng_name: "glaucophyta", code: "P1036", parent_code: "K11", major_flg: true, sort: 3700 },
  { id: 38, name: "緑藻植物門", eng_name: "chlorophyta", code: "P1037", parent_code: "K11", major_flg: true, sort: 3800 },
  { id: 39, name: "ストレプト植物門", eng_name: "streptophyta", code: "P1038", parent_code: "K11", major_flg: true, sort: 3900 },
)

# 亜門(あもん)
SubPhylum.seed(
  { id: 1, name: "脊椎動物亜門", eng_name: "vertebrata", code: "aP1000", parent_code: "P1000", sort: 1000 },
)

# 上綱(じょうこう)
SuperClasses.seed(
  { id: 1, name: "魚上綱", eng_name: "pisciformes", code: "uC10000", parent_code: "aP1000", sort: 1 },
)

# 綱(こう)
Classes.seed(
  { id: 1, name: "哺乳綱", eng_name: "mammalia", code: "C10000", parent_code: "aP1000", sort: 1 },
  { id: 2, name: "鳥綱", eng_name: "aves", code: "C10001", parent_code: "aP1000", sort: 1 },
  { id: 3, name: "爬虫綱", eng_name: "reptilia", code: "C10002", parent_code: "aP1000", sort: 1 },
  { id: 4, name: "両生綱", eng_name: "amphibia", code: "C10003", parent_code: "aP1000", sort: 1 },
  { id: 5, name: "条鰭綱", eng_name: "actinopterygii", code: "C10004", parent_code: "uC10000", sort: 1 },
  { id: 6, name: "硬骨魚綱", eng_name: "osteichthyes", code: "C10005", parent_code: "uC10000", sort: 1 },
  { id: 7, name: "軟骨魚綱", eng_name: "chondrichthyes", code: "C10006", parent_code: "uC10000", sort: 1 },
  { id: 8, name: "昆虫綱", eng_name: "insecta", code: "C10007", parent_code: "P1004", sort: 1 },
)

# 亜綱(こう)
SubClasses.seed(
  { id: 1, name: "板鰓亜綱", eng_name: "elasmobranchii", code: "aC10000", parent_code: "C10006", sort: 1 },
)

# 上目(じょうもく)
SuperOrder.seed(
  { id: 1, name: "新顎上目", eng_name: "neognathae", code: "uO10000", parent_code: "C10001", sort: 1 },
  { id: 2, name: "ネズミザメ上目", eng_name: "galeomorphi", code: "uO10001", parent_code: "aC10006", sort: 1 },
  { id: 3, name: "ツノザメ上目", eng_name: "squalomorphi", code: "uO10002", parent_code: "aC10006", sort: 2 },
)

# 目(もく)
Order.seed(
  { id: 1, name: "ネコ目(食肉目)", eng_name: "carnivora", code: "O10000", parent_code: "C10000" },
  { id: 2, name: "ネズミ目(齧歯目)", eng_name: "rodentia", code: "O10001", parent_code: "C10000" },
  { id: 3, name: "サル目(霊長目)", eng_name: "primates", code: "O10002", parent_code: "C10000" },
  { id: 4, name: "鯨偶蹄目", eng_name: "cetartiodactyla", code: "O10003", parent_code: "C10000" },
  { id: 5, name: "奇蹄目", eng_name: "perissodactyla", code: "O10004", parent_code: "C10000" },
  { id: 6, name: "兎形目", eng_name: "lagomorpha", code: "O10005", parent_code: "C10000" },
  { id: 7, name: "真無盲腸目", eng_name: "eulipotyphla", code: "O10006", parent_code: "C10000" },
  { id: 8, name: "長鼻目(ゾウ目)", eng_name: "proboscidea", code: "O10007", parent_code: "C10000" },
  { id: 9, name: "双前歯目(カンガルー目)", eng_name: "diprotodontia", code: "O10008", parent_code: "C10000" },
  { id: 10, name: "鱗甲目", eng_name: "pholidota", code: "O10009", parent_code: "C10000" },
  { id: 11, name: "単孔目", eng_name: "monotremata", code: "O10010", parent_code: "C10000" },
  { id: 12, name: "ハト目", eng_name: "columbiformes", code: "O10011", parent_code: "uO10000" },
  { id: 13, name: "スズメ目", eng_name: "passeriformes", code: "O10012", parent_code: "uO10000" },
  { id: 14, name: "キジ目", eng_name: "galliformes", code: "O10013", parent_code: "uO10000" },
  { id: 15, name: "タカ目", eng_name: "accipitriformes", code: "O10014", parent_code: "uO10000" },
  { id: 16, name: "フクロウ目", eng_name: "strigiformes", code: "O10015", parent_code: "uO10000" },
  { id: 17, name: "ダチョウ目", eng_name: "struthioniformes", code: "O10016", parent_code: "uO10000" },
  { id: 18, name: "オウム目", eng_name: "psittaciformes", code: "O10017", parent_code: "uO10000" },
  { id: 19, name: "フラミンゴ目", eng_name: "phoenicopteriformes", code: "O10018", parent_code: "uO10000" },
  { id: 20, name: "有鱗目", eng_name: "squamata", code: "O10019", parent_code: "C10002" },
  { id: 21, name: "ワニ目", eng_name: "crocodilia", code: "O10020", parent_code: "C10002" },
  { id: 22, name: "カメ目", eng_name: "testudines", code: "O10021", parent_code: "C10002" },
  { id: 23, name: "無尾目", eng_name: "anura", code: "O10022", parent_code: "C10003" },
  { id: 24, name: "有尾目", eng_name: "caudata", code: "O10023", parent_code: "C10003" },
  { id: 25, name: "アジ目", eng_name: "carangiformes", code: "O10024", parent_code: "C10004" },
  { id: 26, name: "スズキ目", eng_name: "perciformes", code: "O10025", parent_code: "C10004" },
  { id: 27, name: "ダツ目", eng_name: "beloniformes", code: "O10026", parent_code: "C10004" },
  { id: 28, name: "フグ目", eng_name: "tetraodontiformes", code: "O10027", parent_code: "C10004" },
  { id: 29, name: "トビエイ目", eng_name: "myliobatiformes", code: "O10025", parent_code: "C10006" },
  { id: 30, name: "ネコザメ目", eng_name: "heterodontiformes", code: "O10026", parent_code: "uO10001" },
  { id: 31, name: "テンジクザメ目", eng_name: "orectolobiformes", code: "O10027", parent_code: "uO10001" },
  { id: 32, name: "ネズミザメ目", eng_name: "lamniformes", code: "O10028", parent_code: "uO10001" },
  { id: 33, name: "メジロザメ目", eng_name: "carcharhiniformes", code: "O10029", parent_code: "uO10001" },
  { id: 34, name: "カグラザメ目", eng_name: "hexanchiformes", code: "O10030", parent_code: "uO10002" },
  { id: 35, name: "ツノザメ目", eng_name: "squaliformes", code: "O10031", parent_code: "uO10002" },
  { id: 36, name: "キクザメ目", eng_name: "echinorhiniformes", code: "O10032", parent_code: "uO10002" },
  { id: 37, name: "カスザメ目", eng_name: "squatiniformes", code: "O10033", parent_code: "uO10002" },
  { id: 38, name: "ノコギリザメ目", eng_name: "pristiophoriformes", code: "O10034", parent_code: "uO10002" },
)

# 亜目(あもく)
SubOrder.seed(
  { id: 1, name: "ネコ亜目", eng_name: "feliformia", code: "aO10000", parent_code: "O10000" },
  { id: 2, name: "ハクジラ亜目", eng_name: "odontoceti", code: "aO10001", parent_code: "O10003" },
)

# 上科(じょうか)
SuperFamily.seed(
  { id: 1, name: "マイルカ上科", eng_name: "delphinoidea", code: "sF10000", parent_code: "aO10001" },
)

# 科(か)
Family.seed(
  { id: 1, name: "ネコ科", eng_name: "felidae", code: "F10000", parent_code: "aO10000" },
  { id: 2, name: "イヌ科", eng_name: "canidae", code: "F10001", parent_code: "O10000" },
  { id: 3, name: "スズメ科", eng_name: "passeridae", code: "F10002", parent_code: "O10012" },
  { id: 4, name: "カラス科", eng_name: "corvidae", code: "F10003", parent_code: "O10012" },
  { id: 5, name: "ビーバー科", eng_name: "castoridae", code: "F10004", parent_code: "O10001" },
  { id: 6, name: "ネズミ科", eng_name: "rodentia", code: "F10005", parent_code: "O10001" },
  { id: 7, name: "マイルカ科", eng_name: "delphinidae", code: "F10006", parent_code: "sF10000" },
)

# 亜科(あか)
SubFamily.seed(
  { id: 1, name: "シャチ亜科", eng_name: "orcininae", code: "aF10000", parent_code: "F10006" },
)


# 属(ぞく)
Genuses.seed(
  { id: 1, name: "ネコ属", eng_name: "felis", code: "G10000", parent_code: "F10000" },
  { id: 2, name: "イヌ属", eng_name: "canis", code: "G10001", parent_code: "F10001" },
  { id: 3, name: "スズメ属", eng_name: "passer", code: "G10002", parent_code: "F10002" },
  { id: 4, name: "タヌキ属", eng_name: "nyctereutes", code: "G10003", parent_code: "F10001" },
  { id: 5, name: "キツネ属", eng_name: "vulpes", code: "G10004", parent_code: "F10001" },
  { id: 6, name: "カラス属", eng_name: "corvus", code: "G10005", parent_code: "F10003" },
  { id: 7, name: "ビーバー属", eng_name: "castor", code: "G10006", parent_code: "F10004" },
  { id: 8, name: "カヤネズミ属", eng_name: "micromys", code: "G10007", parent_code: "F10005" },
  { id: 9, name: "シャチ属", eng_name: "orcinus", code: "G10008", parent_code: "aF10000" },
  { id: 10, name: "	ヒョウ属", eng_name: "panthera", code: "G10009", parent_code: "F10000" },
)

# 亜属(あぞく)
SubGenuses.seed(
  { id: 1, name: "ネコ亜属", eng_name: "felis", code: "aG10000", parent_code: "G10000" },
)

# 種(しゅ)
Species.seed(
  { id: 1, name: "ヨーロッパヤマネコ", eng_name: "silvestris", code: "S10000", parent_code: "aG10000" },
  { id: 2, name: "オオカミ", eng_name: "lupus", code: "S10001", parent_code: "G10001" },
  { id: 3, name: "スズメ", eng_name: "montanus", code: "S10002", parent_code: "G10002" },
  { id: 4, name: "タヌキ", eng_name: "viverrinus", code: "S10003", parent_code: "G10003" },
  { id: 5, name: "アカギツネ", eng_name: "vulpes", code: "S10004", parent_code: "G10004" },
  { id: 6, name: "ハシブトガラス", eng_name: "macrorhynchos", code: "S10005", parent_code: "G10005" },
  { id: 7, name: "ハシボソガラス", eng_name: "corone", code: "S10006", parent_code: "G10005" },
  { id: 8, name: "アメリカビーバー", eng_name: "canadensis", code: "S10007", parent_code: "G10006" },
  { id: 9, name: "カヤネズミ", eng_name: "minutus", code: "S10008", parent_code: "G10007" },
  { id: 10, name: "シャチ", eng_name: "orca", code: "S10009", parent_code: "G10008" },
  { id: 11, name: "トラ", eng_name: "tigris", code: "S10011", parent_code: "G10009" },
)

# 亜種(あしゅ)
SubSpecies.seed(
  { id: 1, name: "イエネコ", eng_name: "catus", code: "aS10000", parent_code: "S10000" },
  { id: 2, name: "イエイヌ", eng_name: "familiaris", code: "aS10001", parent_code: "S10001" },
  { id: 3, name: "ホンドタヌキ", eng_name: "viverrinus", code: "aS10002", parent_code: "S10003" },
  { id: 5, name: "ホンドギツネ", eng_name: "japonica", code: "aS10003", parent_code: "S10004" },
  { id: 6, name: "キタキツネ", eng_name: "schrencki", code: "aS10004", parent_code: "S10004" },
  { id: 7, name: "アムールトラ", eng_name: "altaica", code: "aS10005", parent_code: "S10011" },
)

# レッドリスト大項目
RedListBigName.seed(
  { id: 1, name: "低リスク", code: "B_LC", sort: 10 },
  { id: 2, name: "絶滅危惧", code: "B_EN", sort: 20 },
  { id: 3, name: "絶滅", code: "B_EX", sort: 30 },
  { id: 4, name: "その他", code: "B_AN", sort: 40 },
  { id: 5, name: "架空", code: "B_FC", sort: 50 },
)


# レッドリスト
RedList.seed(
  { id: 1, name: "LC: 低危険種", big_code: "B_LC", code: "LC", sort: 10 },
  { id: 2, name: "NT: 準絶滅危惧", big_code: "B_LC", code: "NT", sort: 11 },
  { id: 3, name: "CD: 保全対策依存", big_code: "B_LC", code: "CD", sort: 12 },
  { id: 4, name: "VU: 危急", big_code: "B_EN", code: "VU", sort: 20 },
  { id: 5, name: "EN: 絶滅危惧", big_code: "B_EN", code: "EN", sort: 21 },
  { id: 6, name: "CR: 絶滅寸前 ", big_code: "B_EN", code: "CR", sort: 22 },
  { id: 7, name: "EW: 野生絶滅", big_code: "B_EX", code: "EW", sort: 30 },
  { id: 8, name: "EX: 絶滅", big_code: "B_EX", code: "EX", sort: 31 },
  { id: 9, name: "DD: データ不足", big_code: "B_AN", code: "DD", sort: 40 },
  { id: 10, name: "NE: 未評価", big_code: "B_AN", code: "NE", sort: 41 },
  { id: 11, name: "FC: 架空", big_code: "B_FC", code: "FC", sort: 90 },
)
