## 生物分類系のマスタ

# ドメイン
Domain.seed(
  { id: 1, name: "真核生物", eng_name: "eukarya", code: "D10", sort: 100 },
  { id: 2, name: "古細菌", eng_name: "archaea", code: "D20", sort: 200 },
  { id: 3, name: "細菌", eng_name: "bacteria", code: "D30", sort: 300 },
)

# 界(かい)
Kingdom.seed(
  { id: 1, name: "動物界", eng_name: "animal", code: "K10", sort: 100 },
  { id: 2, name: "植物界", eng_name: "plant", code: "K20", sort: 200 },
  { id: 3, name: "菌界", eng_name: "fungi", code: "K30", sort: 300 },
  { id: 4, name: "原生生物界", eng_name: "protist", code: "K40", sort: 400 },
  { id: 5, name: "古細菌界", eng_name: "archaea", code: "K50", sort: 500 },
  { id: 6, name: "真正細菌界", eng_name: "eubacteria", code: "K60", sort: 600 },
  { id: 7, name: "モネラ界", eng_name: "monera", code: "K70", sort: 700 },
)

# 上門(じょうもん)
SuperPhylum.seed(
  { id: 1, name: "新口動物", eng_name: "deuterostomia", code: "uP1010", parent_code: "ak10", major_flg: true, sort: 100 },
  { id: 1, name: "脱皮動物", eng_name: "ecdysozoa", code: "uP1020", parent_code: "k10", major_flg: true, sort: 100 },
  { id: 1, name: "冠輪動物", eng_name: "lophotrochozoan", code: "uP1030", parent_code: "k10", major_flg: true, sort: 100 },
)

# 門(もん)
Phylum.seed(
  { id: 1, name: "脊索動物門", eng_name: "chordata", code: "P10100", parent_code: "k10", major_flg: true, sort: 100 },
  { id: 2, name: "棘皮動物門", eng_name: "echinodermata", code: "P10101", parent_code: "k10", major_flg: false, sort: 200 },
  { id: 3, name: "半索動物門", eng_name: "hemichordata", code: "P10102", parent_code: "k10", major_flg: false, sort: 300 },
  { id: 4, name: "珍渦虫動物門", eng_name: "xenoturbellida", code: "P10103", parent_code: "k10", major_flg: false, sort: 400 },
  { id: 5, name: "節足動物門", eng_name: "arthropoda", code: "P10200", parent_code: "k10", major_flg: true, sort: 500 },
  { id: 6, name: "線形動物門", eng_name: "nematoda", code: "P10201", parent_code: "k10", major_flg: true, sort: 600 },
  { id: 7, name: "緩歩動物門", eng_name: "tardigrada", code: "P10202", parent_code: "k10", major_flg: false, sort: 700 },
  { id: 8, name: "類線形動物門", eng_name: "nematomorpha", code: "P10203", parent_code: "k10", major_flg: false, sort: 800 },
  { id: 9, name: "有爪動物門", eng_name: "onychophora", code: "P10204", parent_code: "k10", major_flg: false, sort: 900 },
  { id: 10, name: "動吻動物門", eng_name: "kinorhyncha", code: "P10205", parent_code: "k10", major_flg: false, sort: 1000 },
  { id: 11, name: "胴甲動物門", eng_name: "loricifera", code: "P10206", parent_code: "k10", major_flg: false, sort: 1100 },
  { id: 12, name: "鰓曳動物門", eng_name: "priapulida", code: "P10207", parent_code: "k10", major_flg: false, sort: 1200 },
  { id: 13, name: "軟体動物門", eng_name: "mollusca", code: "P10300", parent_code: "k10", major_flg: true, sort: 1300 },
  { id: 14, name: "扁形動物門", eng_name: "platyhelminthes", code: "P10301", parent_code: "k10", major_flg: true, sort: 1400 },
  { id: 15, name: "環形動物門", eng_name: "annelida", code: "P10302", parent_code: "k10", major_flg: true, sort: 1500 },
  { id: 16, name: "外肛動物門", eng_name: "bryozoa", code: "P10303", parent_code: "k10", major_flg: false, sort: 1600 },
  { id: 17, name: "輪形動物門", eng_name: "rotifera", code: "P10304", parent_code: "k10", major_flg: false, sort: 1700 },
  { id: 18, name: "紐形動物門", eng_name: "nemertea", code: "P10305", parent_code: "k10", major_flg: false, sort: 1800 },
  { id: 19, name: "腹毛動物門", eng_name: "gastrotricha", code: "P10306", parent_code: "k10", major_flg: false, sort: 1900 },
  { id: 20, name: "無腸動物門", eng_name: "acoelomorpha", code: "P10307", parent_code: "k10", major_flg: false, sort: 2000 },
  { id: 21, name: "腕足動物門", eng_name: "brachiopoda", code: "P10308", parent_code: "k10", major_flg: false, sort: 2100 },
  { id: 22, name: "星口動物門", eng_name: "sipuncula", code: "P10309", parent_code: "k10", major_flg: false, sort: 2200 },
  { id: 23, name: "内肛動物門", eng_name: "entoprocta", code: "P10310", parent_code: "k10", major_flg: false, sort: 2300 },
  { id: 24, name: "ユムシ動物門", eng_name: "echiura", code: "P10311", parent_code: "k10", major_flg: false, sort: 2400 },
  { id: 25, name: "顎口動物門", eng_name: "gnathostomulida", code: "P10312", parent_code: "k10", major_flg: false, sort: 2500 },
  { id: 26, name: "毛顎動物門", eng_name: "chaetognatha", code: "P10313", parent_code: "k10", major_flg: false, sort: 2600 },
  { id: 27, name: "菱形動物門", eng_name: "rhombozoa", code: "P10314", parent_code: "k10", major_flg: false, sort: 2700 },
  { id: 28, name: "直泳動物門", eng_name: "orthonectida", code: "P10315", parent_code: "k10", major_flg: false, sort: 2800 },
  { id: 29, name: "箒虫動物門", eng_name: "phoronida", code: "P10316", parent_code: "k10", major_flg: false, sort: 2900 },
  { id: 30, name: "有輪動物門", eng_name: "cycliophora", code: "P10317", parent_code: "k10", major_flg: false, sort: 3000 },
  { id: 31, name: "微顎動物門", eng_name: "micrognathozoa", code: "P10318", parent_code: "k10", major_flg: false, sort: 3100 },
  { id: 32, name: "刺胞動物門", eng_name: "cnidaria", code: "P10900", parent_code: "k10", major_flg: true, sort: 3200 },
  { id: 33, name: "海綿動物門", eng_name: "porifera", code: "P10901", parent_code: "k10", major_flg: false, sort: 3300 },
  { id: 34, name: "有櫛動物門", eng_name: "ctenophora", code: "P10902", parent_code: "k10", major_flg: false, sort: 3400 },
  { id: 35, name: "平板動物門", eng_name: "placozoa", code: "P10903", parent_code: "k10", major_flg: false, sort: 3500 },
  { id: 36, name: "紅色植物門", eng_name: "rhodophyta", code: "P20100", parent_code: "k20", major_flg: true, sort: 3600 },
  { id: 37, name: "灰色植物門", eng_name: "glaucophyta", code: "P20101", parent_code: "k20", major_flg: true, sort: 3700 },
  { id: 38, name: "緑藻植物門", eng_name: "chlorophyta", code: "P20102", parent_code: "k20", major_flg: true, sort: 3800 },
  { id: 39, name: "ストレプト植物門", eng_name: "streptophyta", code: "P20103", parent_code: "k20", major_flg: true, sort: 3900 },
)

# 亜門(あもん)
SubPhylum.seed(
  { id: 1, name: "脊椎動物亜門", eng_name: "vertebrata", code: "aP10100", parent_code: "P10100", sort: 1000 },
)

# 上綱(じょうこう)
SuperClasses.seed(
  { id: 1, name: "魚上綱", eng_name: "pisciformes", code: "uC10100", parent_code: "aP10100", sort: 1 },
)

# 綱(こう)
Classes.seed(
  { id: 1, name: "哺乳綱", eng_name: "mammalia", code: "C10100", parent_code: "aP10100", sort: 1 },
  { id: 2, name: "鳥綱", eng_name: "aves", code: "C10101", parent_code: "aP10100", sort: 1 },
  { id: 3, name: "爬虫綱", eng_name: "reptilia", code: "C10102", parent_code: "aP10100", sort: 1 },
  { id: 4, name: "両生綱", eng_name: "amphibia", code: "C10103", parent_code: "aP10100", sort: 1 },
  { id: 5, name: "条鰭綱", eng_name: "actinopterygii", code: "C10200", parent_code: "uC10100", sort: 1 },
  { id: 6, name: "硬骨魚綱", eng_name: "osteichthyes", code: "C10201", parent_code: "uC10100", sort: 1 },
  { id: 7, name: "軟骨魚綱", eng_name: "chondrichthyes", code: "C10202", parent_code: "uC10100", sort: 1 },
  { id: 8, name: "昆虫綱", eng_name: "insecta", code: "C10300", parent_code: "P10200", sort: 1 },
)

# 亜綱(こう)
SubClasses.seed(
  { id: 1, name: "板鰓亜綱", eng_name: "elasmobranchii", code: "aC10200", parent_code: "C10202", sort: 1 },
)

# 上目(じょうもく)
SuperOrder.seed(
  { id: 1, name: "新顎上目", eng_name: "neognathae", code: "uO10200", parent_code: "C10101", sort: 1 },
  { id: 1, name: "ネズミザメ上目", eng_name: "galeomorphi", code: "uO10300", parent_code: "aC10202", sort: 1 },
  { id: 2, name: "ツノザメ上目", eng_name: "squalomorphi", code: "uO10301", parent_code: "aC10202", sort: 2 },
)

# 目(もく)
Order.seed(
  { id: 1, name: "ネコ目(食肉目)", eng_name: "carnivora", code: "O10100", parent_code: "C10100" },
  { id: 2, name: "ネズミ目(齧歯目)", eng_name: "rodentia", code: "O10101", parent_code: "C10100" },
  { id: 3, name: "サル目(霊長目)", eng_name: "primates", code: "O10102", parent_code: "C10100" },
  { id: 4, name: "鯨偶蹄目", eng_name: "cetartiodactyla", code: "O10103", parent_code: "C10100" },
  { id: 5, name: "奇蹄目", eng_name: "perissodactyla", code: "O10104", parent_code: "C10100" },
  { id: 6, name: "兎形目", eng_name: "lagomorpha", code: "O10105", parent_code: "C10100" },
  { id: 7, name: "真無盲腸目", eng_name: "eulipotyphla", code: "O10106", parent_code: "C10100" },
  { id: 8, name: "長鼻目(ゾウ目)", eng_name: "proboscidea", code: "O10107", parent_code: "C10100" },
  { id: 9, name: "双前歯目(カンガルー目)", eng_name: "diprotodontia", code: "O10108", parent_code: "C10100" },
  { id: 10, name: "鱗甲目", eng_name: "pholidota", code: "O10109", parent_code: "C10100" },
  { id: 11, name: "単孔目", eng_name: "monotremata", code: "O10110", parent_code: "C10100" },
  { id: 12, name: "ハト目", eng_name: "columbiformes", code: "O10200", parent_code: "uO10200" },
  { id: 13, name: "スズメ目", eng_name: "passeriformes", code: "O10201", parent_code: "uO10200" },
  { id: 14, name: "キジ目", eng_name: "galliformes", code: "O10202", parent_code: "uO10200" },
  { id: 15, name: "タカ目", eng_name: "accipitriformes", code: "O10203", parent_code: "uO10200" },
  { id: 16, name: "フクロウ目", eng_name: "strigiformes", code: "O10204", parent_code: "uO10200" },
  { id: 17, name: "ダチョウ目", eng_name: "struthioniformes", code: "O10205", parent_code: "uO10200" },
  { id: 18, name: "オウム目", eng_name: "psittaciformes", code: "O10206", parent_code: "uO10200" },
  { id: 19, name: "フラミンゴ目", eng_name: "phoenicopteriformes", code: "O10207", parent_code: "uO10200" },
  { id: 20, name: "有鱗目", eng_name: "squamata", code: "O10300", parent_code: "C10102" },
  { id: 21, name: "ワニ目", eng_name: "crocodilia", code: "O10301", parent_code: "C10102" },
  { id: 22, name: "カメ目", eng_name: "testudines", code: "O10302", parent_code: "C10102" },
  { id: 23, name: "無尾目", eng_name: "anura", code: "O10400", parent_code: "C10103" },
  { id: 24, name: "有尾目", eng_name: "caudata", code: "O10401", parent_code: "C10103" },
  { id: 25, name: "アジ目", eng_name: "carangiformes", code: "O10500", parent_code: "C10200" },
  { id: 26, name: "スズキ目", eng_name: "perciformes", code: "O10501", parent_code: "C10200" },
  { id: 27, name: "ダツ目", eng_name: "beloniformes", code: "O10502", parent_code: "C10200" },
  { id: 28, name: "フグ目", eng_name: "tetraodontiformes", code: "O10503", parent_code: "C10200" },
  { id: 29, name: "トビエイ目", eng_name: "myliobatiformes", code: "O10504", parent_code: "C10202" },
  { id: 30, name: "ネコザメ目", eng_name: "heterodontiformes", code: "O10505", parent_code: "uO10300" },
  { id: 31, name: "テンジクザメ目", eng_name: "orectolobiformes", code: "O10506", parent_code: "uO10300" },
  { id: 32, name: "ネズミザメ目", eng_name: "lamniformes", code: "O10507", parent_code: "uO10300" },
  { id: 33, name: "メジロザメ目", eng_name: "carcharhiniformes", code: "O10508", parent_code: "uO10300" },
  { id: 34, name: "カグラザメ目", eng_name: "hexanchiformes", code: "O10509", parent_code: "uO10301" },
  { id: 35, name: "ツノザメ目", eng_name: "squaliformes", code: "O10510", parent_code: "uO10301" },
  { id: 36, name: "キクザメ目", eng_name: "echinorhiniformes", code: "O10511", parent_code: "uO10301" },
  { id: 37, name: "カスザメ目", eng_name: "squatiniformes", code: "O10512", parent_code: "uO10301" },
  { id: 38, name: "ノコギリザメ目", eng_name: "pristiophoriformes", code: "O10513", parent_code: "uO10301" },
)

# 亜目(あもく)
SubOrder.seed(
  { id: 1, name: "ネコ亜目", eng_name: "feliformia", code: "aO10100", parent_code: "O10100" },
)

# 科(か)
Family.seed(
  { id: 1, name: "ネコ科", eng_name: "felidae", code: "F10100", parent_code: "aO10100" },
  { id: 2, name: "イヌ科", eng_name: "canidae", code: "F10101", parent_code: "O10100" },
  { id: 3, name: "スズメ科", eng_name: "passeridae", code: "F10200", parent_code: "O10201" },
)


# 属(ぞく)
Genuses.seed(
  { id: 1, name: "ネコ属", eng_name: "felis", code: "G10100", parent_code: "F10100" },
  { id: 2, name: "イヌ属", eng_name: "canis", code: "G10101", parent_code: "F10101" },
  { id: 3, name: "スズメ属", eng_name: "passer", code: "G10200", parent_code: "F10200" },
)

# 亜属(あぞく)
SubGenuses.seed(
  { id: 1, name: "ネコ亜属", eng_name: "felis", code: "aG10100", parent_code: "G10100" },
)

# 種(しゅ)
Species.seed(
  { id: 1, name: "ヨーロッパヤマネコ", eng_name: "silvestris", code: "S10100", parent_code: "aG10100" },
  { id: 2, name: "オオカミ", eng_name: "lupus", code: "S10101", parent_code: "G10101" },
  { id: 3, name: "スズメ", eng_name: "montanus", code: "S10200", parent_code: "G10200" },
)

# 亜種(あしゅ)
SubSpecies.seed(
  { id: 1, name: "イエネコ", eng_name: "catus", code: "aS10100", parent_code: "S10100" },
  { id: 2, name: "イエイヌ", eng_name: "familiaris", code: "aS10101", parent_code: "S10101" },
)

# レッドリスト
RedList.seed(
  { id: 1, name: "低危険種", big_name: "低リスク", code: "LC", sort: 10 },
  { id: 2, name: "準絶滅危惧", big_name: "低リスク", code: "NT", sort: 11 },
  { id: 3, name: "保全対策依存", big_name: "低リスク", code: "CD", sort: 12 },
  { id: 4, name: "危急", big_name: "絶滅危惧", code: "VU", sort: 20 },
  { id: 5, name: "絶滅危惧", big_name: "絶滅危惧", code: "EN", sort: 21 },
  { id: 6, name: "絶滅寸前 ", big_name: "絶滅危惧", code: "CR", sort: 22 },
  { id: 7, name: "野生絶滅", big_name: "絶滅", code: "EW", sort: 30 },
  { id: 8, name: "絶滅", big_name: "絶滅", code: "EX", sort: 31 },
  { id: 9, name: "データ不足", big_name: "その他", code: "DD", sort: 40 },
  { id: 10, name: "未評価", big_name: "その他", code: "NE", sort: 41 },
  { id: 11, name: "架空", big_name: "架空", code: "FC", sort: 90 },
)
