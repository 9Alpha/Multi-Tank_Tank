
abstract class Fish implements Tankable {

  boolean mate;
  float speed;
  float fishX, fishY;
  color skin;
  int weight;
  int weightAdd;
  int belly;
  int hunger;
  int age;
  int maxWeight;
  int maxAge;
  float deltaX, deltaY;
  String nameList[] = {
    "FLOR", "EVETTE", "ELOUISE", "ALINA", "TRINIDAD", "DAVID", "DAMARIS", "CATHARINE", "CARROLL", "BELVA", "NAKIA", "MARLENA", "LUANNE", "LORINE", "KARON", "DORENE", "DANITA", "BRENNA", "TATIANA", "SAMMIE", "LOUANN", "LOREN", "JULIANNA", "ANDRIA", "PHILOMENA", "LUCILA", "LEONORA", "DOVIE", "ROMONA", "MIMI", "JACQUELIN", "GAYE", "TONJA", "MISTI", "JOE", "GENE", "CHASTITY", "STACIA", "ROXANN", "MICAELA", "NIKITA", "MEI", "VELDA", "MARLYS", "JOHNNA", "AURA", "LAVERN", "IVONNE", "HAYLEY", "NICKI", "MAJORIE", "HERLINDA", "GEORGE", "ALPHA", "YADIRA", "PERLA", "GREGORIA", "DANIEL", "ANTONETTE", "SHELLI", "MOZELLE", "MARIAH", "JOELLE", "CORDELIA", "JOSETTE", "CHIQUITA", "TRISTA", "LOUIS", "LAQUITA", "GEORGIANA", "CANDI", "SHANON", "LONNIE", "HILDEGARD", "CECIL", "VALENTINA", "STEPHANY", "MAGDA", "KAROL", "GERRY", "GABRIELLA", "TIANA", "ROMA", "RICHELLE", "RAY", "PRINCESS", "OLETA", "JACQUE", "IDELLA", "ALAINA", "SUZANNA", "JOVITA", "BLAIR", "TOSHA", "RAVEN", "NEREIDA", "MARLYN", "KYLA", "JOSEPH", "DELFINA", "TENA", "STEPHENIE", "SABINA", "NATHALIE", "MARCELLE", "GERTIE", "DARLEEN", "THEA", "SHARONDA", "SHANTEL", "BELEN", "VENESSA", "ROSALINA", "ONA", "GENOVEVA", "COREY", "CLEMENTINE", "ROSALBA", "RENATE", "RENATA", "MI", "IVORY", "GEORGIANNA", "FLOY", "DORCAS", "ARIANA", "TYRA", "THEDA", "MARIAM", "JULI", "JESICA", "DONNIE", "VIKKI", "VERLA", "ROSELYN", "MELVINA", "JANNETTE", "GINNY", "DEBRAH", "CORRIE", "ASIA", "VIOLETA", "MYRTIS", "LATRICIA", "COLLETTE", "CHARLEEN", "ANISSA", "VIVIANA", "TWYLA", "PRECIOUS", "NEDRA", "LATONIA", "LAN", "HELLEN", "FABIOLA", "ANNAMARIE", "ADELL", "SHARYN", "CHANTAL", "NIKI", "MAUD", "LIZETTE", "LINDY", "KIA", "KESHA", "JEANA", "DANELLE", "CHARLINE", "CHANEL", "CARROL", "VALORIE", "LIA", "DORTHA", "CRISTAL", "SUNNY", "LEONE", "LEILANI", "GERRI", "DEBI", "ANDRA", "KESHIA", "IMA", "EULALIA", "EASTER", "DULCE", "NATIVIDAD", "LINNIE", "KAMI", "GEORGIE", "CATINA", "BROOK", "ALDA", "WINNIFRED", "SHARLA", "RUTHANN", "MEAGHAN", "MAGDALENE", "LISSETTE", "ADELAIDA", "VENITA", "TRENA", "SHIRLENE", "SHAMEKA", "ELIZEBETH", "DIAN", "SHANTA", "MICKEY", "LATOSHA", "CARLOTTA", "WINDY", "SOON", "ROSINA", "MARIANN", "LEISA", "JONNIE", "DAWNA", "CATHIE", "BILLY", "ASTRID", "SIDNEY", "LAUREEN", "JANEEN", "HOLLI", "FAWN", "VICKEY", "TERESSA", "SHANTE", "RUBYE", "MARCELINA", "CHANDA", "CARY", "TERESE", "SCARLETT", "MARTY", "MARNIE", "LULU", "LISETTE", "JENIFFER", "ELENOR", "DORINDA", "DONITA", "CARMAN", "BERNITA", "ALTAGRACIA", "ALETA", "ADRIANNA", "ZORAIDA", "RONNIE", "NICOLA", "LYNDSEY", "KENDALL", "JANINA", "CHRISSY", "AMI", "STARLA", "PHYLIS", "PHUONG", "KYRA", "CHARISSE", "BLANCH", "SANJUANITA", "RONA", "NANCI", "MARILEE", "MARANDA", "CORY", "BRIGETTE", "SANJUANA", "MARITA", "KASSANDRA", "JOYCELYN", "IRA", "FELIPA", "CHELSIE", "BONNY", "MIREYA", "LORENZA", "KYONG", "ILEANA", "CANDELARIA", "TONY", "TOBY", "SHERIE", "OK", "MARK", "LUCIE", "LEATRICE", "LAKESHIA", "GERDA", "EDIE", "BAMBI", "MARYLIN", "LAVON", "HORTENSE", "GARNET", "EVIE", "TRESSA", "SHAYNA", "LAVINA", "KYUNG", "JEANETTA", "SHERRILL", "SHARA", "PHYLISS", "MITTIE", "ANABEL", "ALESIA", "THUY", "TAWANDA", "RICHARD", "JOANIE", "TIFFANIE", "LASHANDA", "KARISSA", "ENRIQUETA", "DARIA", "DANIELLA", "CORINNA", "ALANNA", "ABBEY", "ROXANE", "ROSEANNA", "MAGNOLIA", "LIDA", "KYLE", "JOELLEN", "ERA", "CORAL", "CARLEEN", "TRESA", "PEGGIE", "NOVELLA", "NILA", "MAYBELLE", "JENELLE", "CARINA", "NOVA", "MELINA", "MARQUERITE", "MARGARETTE", "JOSEPHINA", "EVONNE", "DEVIN", "CINTHIA", "ALBINA", "TOYA", "TAWNYA", "SHERITA", "SANTOS", "MYRIAM", "LIZABETH", "LISE", "KEELY", "JENNI", "GISELLE", "CHERYLE", "ARDITH", "ARDIS", "ALESHA", "ADRIANE", "SHAINA", "LINNEA", "KAROLYN", "HONG", "FLORIDA", "FELISHA", "DORI", "DARCI", "ARTIE", "ARMIDA", "ZOLA", "XIOMARA", "VERGIE", "SHAMIKA", "NENA", "NANNETTE", "MAXIE", "LOVIE", "JEANE", "JAIMIE", "INGE", "FARRAH", "ELAINA", "CAITLYN", "STARR", "FELICITAS", "CHERLY", "CARYL", "YOLONDA", "YASMIN", "TEENA", "PRUDENCE", "PENNIE", "NYDIA", "MACKENZIE", "ORPHA", "MARVEL", "LIZBETH", "LAURETTE", "JERRIE", "HERMELINDA", "CAROLEE", "TIERRA", "MIRIAN", "META", "MELONY", "KORI", "JENNETTE", "JAMILA", "ENA", "ANH", "YOSHIKO", "SUSANNAH", "SALINA", "RHIANNON", "JOLEEN", "CRISTINE", "ASHTON", "ARACELY", "TOMEKA", "SHALONDA", "MARTI", "LACIE", "KALA", "JADA", "ILSE", "HAILEY", "BRITTANI", "ZONA", "SYBLE", "SHERRYL", "RANDY", "NIDIA", "MARLO", "KANDICE", "KANDI", "DEB", "DEAN", "AMERICA", "ALYCIA", "TOMMY", "RONNA", "NORENE", "MERCY", "JOSE", "INGEBORG", "GIOVANNA", "GEMMA", "CHRISTEL", "AUDRY", "ZORA", "VITA", "VAN", "TRISH", "STEPHAINE", "SHIRLEE", "SHANIKA", "MELONIE", "MAZIE", "JAZMIN", "INGA", "HOA", "HETTIE", "GERALYN", "FONDA", "ESTRELLA", "ADELLA", "SU", "SARITA", "RINA", "MILISSA", "MARIBETH", "GOLDA", "EVON", "ETHELYN", "ENEDINA", "CHERISE", "CHANA", "VELVA", "TAWANNA", "SADE", "MIRTA", "LI", "KARIE", "JACINTA", "ELNA", "DAVINA", "CIERRA", "ASHLIE", "ALBERTHA", "TANESHA", "STEPHANI", "NELLE", "MINDI", "LU", "LORINDA", "LARUE", "FLORENE", "DEMETRA", "DEDRA", "CIARA", "CHANTELLE", "ASHLY", "SUZY", "ROSALVA", "NOELIA", "LYDA", "LEATHA", "KRYSTYNA", "KRISTAN", "KARRI", "DARLINE", "DARCIE", "CINDA", "CHEYENNE", "CHERRIE", "AWILDA", "ALMEDA", "ROLANDA", "LANETTE", "JERILYN", "GISELE", "EVALYN", "CYNDI", "CLETA", "CARIN", "ZINA", "ZENA", "VELIA", "TANIKA", "PAUL", "CHARISSA", "THOMAS", "TALIA", "MARGARETE", "LAVONDA", "KAYLEE", "KATHLENE", "JONNA", "IRENA", "ILONA", "IDALIA", "CANDIS", "CANDANCE", "BRANDEE", "ANITRA", "ALIDA", "SIGRID", "NICOLETTE", "MARYJO", "LINETTE", "HEDWIG", "CHRISTIANA", "CASSIDY", "ALEXIA", "TRESSIE", "MODESTA", "LUPITA", "LITA", "GLADIS", "EVELIA", "DAVIDA", "CHERRI", "CECILY", "ASHELY", "ANNABEL", "AGUSTINA", "WANITA", "SHIRLY", "ROSAURA", "HULDA", "EUN", "BAILEY", "YETTA", "VERONA", "THOMASINA", "SIBYL", "SHANNAN", "MECHELLE", "LUE", "LEANDRA", "LANI", "KYLEE", "KANDY", "JOLYNN", "FERNE", "EBONI", "CORENE", "ALYSIA", "ZULA", "NADA", "MOIRA", "LYNDSAY", "LORRETTA", "JUAN", "JAMMIE", "HORTENSIA", "GAYNELL", "CAMERON", "ADRIA", "VINA", "VICENTA", "TANGELA", "STEPHINE", "NORINE", "NELLA", "LIANA", "LESLEE", "KIMBERELY", "ILIANA", "GLORY", "FELICA", "EMOGENE", "ELFRIEDE", "EDEN", "EARTHA", "CARMA", "BEA", "OCIE", "MARRY", "LENNIE", "KIARA", "JACALYN", "CARLOTA", "ARIELLE", "YU", "STAR", "OTILIA", "KIRSTIN", "KACEY", "JOHNETTA", "JOEY", "JOETTA", "JERALDINE", "JAUNITA", "ELANA", "DORTHEA", "CAMI", "AMADA", "ADELIA", "VERNITA", "TAMAR", "SIOBHAN", "RENEA", "RASHIDA", "OUIDA", "ODELL", "NILSA", "MERYL", "KRISTYN", "JULIETA", "DANICA", "BREANNE", "AUREA", "ANGLEA", "SHERRON", "ODETTE", "MALIA", "LORELEI", "LIN", "LEESA", "KENNA", "KATHLYN", "FIONA", "CHARLETTE", "SUZIE", "SHANTELL", "SABRA", "RACQUEL", "MYONG", "MIRA", "MARTINE", "LUCIENNE", "LAVADA", "JULIANN", "JOHNIE", "ELVERA", "DELPHIA", "CLAIR", "CHRISTIANE", "CHAROLETTE", "CARRI", "AUGUSTINE", "ASHA", "ANGELLA", "PAOLA", "NINFA", "LEDA", "LAI", "EDA", "SUNSHINE", "STEFANI", "SHANELL", "PALMA", "MACHELLE", "LISSA", "KECIA", "KATHRYNE", "KARLENE", "JULISSA", "JETTIE", "JENNIFFER", "HUI", "CORRINA", "CHRISTOPHER", "CAROLANN", "ALENA", "TESS", "ROSARIA", "MYRTICE", "MARYLEE", "LIANE", "KENYATTA", "JUDIE", "JANEY", "IN", "ELMIRA", "ELDORA", "DENNA", "CRISTI", "CATHI", "ZAIDA", "VONNIE", "VIVA", "VERNIE", "ROSALINE", "MARIELA", "LUCIANA", "LESLI", "KARAN", "FELICE", "DENEEN", "ADINA", "WYNONA", "TARSHA", "SHERON", "SHASTA", "SHANITA", "SHANI", "SHANDRA", "RANDA", "PINKIE", "PARIS", "NELIDA", "MARILOU", "LYLA", "LAURENE", "LACI", "JOI", "JANENE", "DOROTHA", "DANIELE", "DANI", "CAROLYNN", "CARLYN", "BERENICE", "AYESHA", "ANNELIESE", "ALETHEA", "THERSA", "TAMIKO", "RUFINA", "OLIVA", "MOZELL", "MARYLYN", "MADISON", "KRISTIAN", "KATHYRN", "KASANDRA", "KANDACE", "JANAE", "GABRIEL", "DOMENICA", "DEBBRA", "DANNIELLE", "CHUN", "BUFFY", "BARBIE", "ARCELIA", "AJA", "ZENOBIA", "SHAREN", "SHAREE", "PATRICK", "PAGE", "MY", "LAVINIA", "KUM", "KACIE", "JACKELINE", "HUONG", "FELISA", "EMELIA", "ELEANORA", "CYTHIA", "CRISTIN", "CLYDE", "CLARIBEL", "CARON", "ANASTACIA", "ZULMA", "ZANDRA", "YOKO", "TENISHA", "SUSANN", "SHERILYN", "SHAY", "SHAWANDA", "SABINE", "ROMANA", "MATHILDA", "LINSEY", "KEIKO", "JOANA", "ISELA", "GRETTA", "GEORGETTA", "EUGENIE", "DUSTY", "DESIRAE", "DELORA", "CORAZON", "ANTONINA", "ANIKA", "WILLENE", "TRACEE", "TAMATHA", "REGAN", "NICHELLE", "MICKIE", "MAEGAN", "LUANA", "LANITA", "KELSIE", "EDELMIRA", "BREE", "AFTON", "TEODORA", "TAMIE", "SHENA", "MEG", "LINH", "KELI", "KACI", "DANYELLE", "BRITT", "ARLETTE", "ALBERTINE", "ADELLE", "TIFFINY", "STORMY", "SIMONA", "NUMBERS", "NICOLASA", "NICHOL", "NIA", "NAKISHA", "MEE", "MAIRA", "LOREEN", "KIZZY", "JOHNNY", "JAY", "FALLON", "CHRISTENE", "BOBBYE", "ANTHONY", "YING", "VINCENZA", "TANJA", "RUBIE", "RONI", "QUEENIE", "MARGARETT", "KIMBERLI", "IRMGARD", "IDELL", "HILMA", "EVELINA", "ESTA", "EMILEE", "DENNISE", "DANIA", "CARL", "CARIE", "ANTONIO", "WAI", "SANG", "RISA", "RIKKI", "PATRICIA", "MUI", "MASAKO", "MARIO", "LUVENIA", "LOREE", "LONI", "LIEN", "KEVIN", "GIGI", "FLORENCIA", "DORIAN", "DENITA", "DALLAS", "CHI", "BILLYE", "ALEXANDER", "TOMIKA", "SHARITA", "RANA", "NIKOLE", "NEOMA", "MARGARITE", "MADALYN", "LUCINA", "LAILA", "KALI", "JENETTE", "GABRIELE", "EVELYNE", "ELENORA", "CLEMENTINA", "ALEJANDRINA", "ZULEMA", "VIOLETTE", "VANNESSA", "THRESA", "RETTA", "PIA", "PATIENCE", "NOELLA", "NICKIE", "JONELL", "DELTA", "CHUNG", "CHAYA", "CAMELIA", "BETHEL", "ANYA", "ANDREW", "THANH", "SUZANN", "SPRING", "SHU", "MILA", "LILLA", "LAVERNA", "KEESHA", "KATTIE", "GIA", "GEORGENE", "EVELINE", "ESTELL", "ELIZBETH", "VIVIENNE", "VALLIE", "TRUDIE", "STEPHANE", "MICHEL", "MAGALY", "MADIE", "KENYETTA", "KARREN", "JANETTA", "HERMINE", "HARMONY", "DRUCILLA", "DEBBI", "CELESTINA", "CANDIE", "BRITNI", "BECKIE", "AMINA", "ZITA", "YUN", "YOLANDE", "VIVIEN", "VERNETTA", "TRUDI", "SOMMER", "PEARLE", "PATRINA", "OSSIE", "NICOLLE", "LOYCE", "LETTY", "LARISA", "KATHARINA", "JOSELYN", "JONELLE", "JENELL", "IESHA", "HEIDE", "FLORINDA", "FLORENTINA", "FLO", "ELODIA", "DORINE", "BRUNILDA", "BRIGID", "ASHLI", "ARDELLA", "TWANA", "THU", "TARAH", "SUNG", "SHEA", "SHAVON", "SHANE", "SERINA", "RAYNA", "RAMONITA", "NGA", "MARGURITE", "LUCRECIA", "KOURTNEY", "KATI", "JESUS", "JESENIA", "DIAMOND", "CRISTA", "AYANA", "ALICA", "ALIA", "VINNIE", "SUELLEN", "ROMELIA", "RACHELL", "PIPER", "OLYMPIA", "MICHIKO", "KATHALEEN", "JOLIE", "JESSI", "JANESSA", "HANA", "HA", "ELEASE", "CARLETTA", "BRITANY", "SHONA", "SALOME", "ROSAMOND", "REGENA", "RAINA", "NGOC", "NELIA", "LOUVENIA", "LESIA", "LATRINA", "LATICIA", "LARHONDA", "JINA", "JACKI", "HOLLIS", "HOLLEY", "EMMY", "DEEANN", "CORETTA", "ARNETTA", "VELVET", "THALIA", "SHANICE", "NETA", "MIKKI", "MICKI", "LONNA", "LEANA", "LASHUNDA", "KILEY", "JOYE", "JACQULYN", "IGNACIA", "HYUN", "HIROKO", "HENRY", "HENRIETTE", "ELAYNE", "DELINDA", "DARNELL", "DAHLIA", "COREEN", "CONSUELA", "CONCHITA", "CELINE", "BABETTE", "AYANNA", "ANETTE", "ALBERTINA", "SKYE", "SHAWNEE", "SHANEKA", "QUIANA", "PAMELIA", "MIN", "MERRI", "MERLENE", "MARGIT", "KIESHA", "KIERA", "KAYLENE", "JODEE", "JENISE", "ERLENE", "EMMIE", "ELSE", "DARYL", "DALILA", "DAISEY", "CODY", "CASIE", "BELIA", "BABARA", "VERSIE", "VANESA", "SHELBA", "SHAWNDA", "SAM", "NORMAN", "NIKIA", "NAOMA", "MARNA", "MARGERET", "MADALINE", "LAWANA", "KINDRA", "JUTTA", "JAZMINE", "JANETT", "HANNELORE", "GLENDORA", "GERTRUD", "GARNETT", "FREEDA", "FREDERICA", "FLORANCE", "FLAVIA", "DENNIS", "CARLINE", "BEVERLEE", "ANJANETTE", "VALDA", "TRINITY", "TAMALA", "STEVIE", "SHONNA", "SHA", "SARINA", "ONEIDA", "MICAH", "MERILYN", "MARLEEN", "LURLINE", "LENNA", "KATHERIN", "JIN", "JENI", "HAE", "GRACIA", "GLADY", "FARAH", "ERIC", "ENOLA", "EMA", "DOMINQUE", "DEVONA", "DELANA", "CECILA", "CAPRICE", "ALYSHA", "ALI", "ALETHIA", "VENA", "THERESIA", "TAWNY", "SONG", "SHAKIRA", "SAMARA", "SACHIKO", "RACHELE", "PAMELLA", "NICKY", "MARNI", "MARIEL", "MAREN", "MALISA", "LIGIA", "LERA", "LATORIA", "LARAE", "KIMBER", "KATHERN", "KAREY", "JENNEFER", "JANETH", "HALINA", "FREDIA", "DELISA", "DEBROAH", "CIERA", "CHIN", "ANGELIKA", "ANDREE", "ALTHA", "YEN", "VIVAN", "TERRESA", "TANNA", "SUK", "SUDIE", "SOO", "SIGNE", "SALENA", "RONNI", "REBBECCA", "MYRTIE", "MCKENZIE", "MALIKA", "MAIDA", "LOAN", "LEONARDA", "KAYLEIGH", "FRANCE", "ETHYL", "ELLYN", "DAYLE", "CAMMIE", "BRITTNI", "BIRGIT", "AVELINA", "ASUNCION", "ARIANNA", "AKIKO", "VENICE", "TYESHA", "TONIE", "TIESHA", "TAKISHA", "STEFFANIE", "SINDY", "SANTANA", "MEGHANN", "MANDA", "MACIE", "LADY", "KELLYE", "KELLEE", "JOSLYN", "JASON", "INGER", "INDIRA", "GLINDA", "GLENNIS", "FERNANDA", "FAUSTINA", "ENEIDA", "ELICIA", "DOT", "DIGNA", "DELL", "ARLETTA", "ANDRE", "WILLIA", "TAMMARA", "TABETHA", "SHERRELL", "SARI", "REFUGIO", "REBBECA", "PAULETTA", "NIEVES", "NATOSHA", "NAKITA", "MAMMIE", "KENISHA", "KAZUKO", "KASSIE", "GARY", "EARLEAN", "DAPHINE", "CORLISS", "CLOTILDE", "CAROLYNE", "BERNETTA", "AUGUSTINA", "AUDREA", "ANNIS", "ANNABELL", "YAN", "TENNILLE", "TAMICA", "SELENE", "SEAN", "ROSANA", "REGENIA", "QIANA", "MARKITA", "MACY", "LEEANNE", "LAURINE", "KYM", "JESSENIA", "JANITA", "GEORGINE", "GENIE", "EMIKO", "ELVIE", "DEANDRA", "DAGMAR", "CORIE", "COLLEN", "CHERISH", "ROMAINE", "PORSHA", "PEARLENE", "MICHELINE", "MERNA", "MARGORIE", "MARGARETTA", "LORE", "KENNETH", "JENINE", "HERMINA", "FREDERICKA", "ELKE", "DRUSILLA", "DORATHY", "DIONE", "DESIRE", "CELENA", "BRIGIDA", "ANGELES", "ALLEGRA", "THEO", "TAMEKIA", "SYNTHIA", "STEPHEN", "SOOK", "SLYVIA", "ROSANN", "REATHA", "RAYE", "MARQUETTA", "MARGART", "LING", "LAYLA", "KYMBERLY", "KIANA", "KAYLEEN", "KATLYN", "KARMEN", "JOELLA", "IRINA", "EMELDA", "ELENI", "DETRA", "CLEMMIE", "CHERYLL", "CHANTELL", "CATHEY", "ARNITA", "ARLA", "ANGLE", "ANGELIC", "ALYSE", "ZOFIA", "THOMASINE", "TENNIE", "SON", "SHERLY", "SHERLEY", "SHARYL", "REMEDIOS", "PETRINA", "NICKOLE", "MYUNG", "MYRLE", "MOZELLA", "LOUANNE", "LISHA", "LATIA", "LANE", "KRYSTA", "JULIENNE", "JOEL", "JEANENE", "JACQUALINE", "ISAURA", "GWENDA", "EARLEEN", "DONALD", "CLEOPATRA", "CARLIE", "AUDIE", "ANTONIETTA", "ALISE", "ALEX", "VERDELL", "VAL", "TYLER", "TOMOKO", "THAO", "TALISHA", "STEVEN", "SO", "SHEMIKA", "SHAUN", "SCARLET", "SAVANNA", "SANTINA", "ROSIA", "RAEANN", "ODILIA", "NANA", "MINNA", "MAGAN", "LYNELLE", "LE", "KARMA", "JOEANN", "IVANA", "INELL", "ILANA", "HYE", "HONEY", "HEE", "GUDRUN", "FRANK", "DREAMA", "CRISSY", "CHANTE", "CARMELINA", "ARVILLA", "ARTHUR", "ANNAMAE", "ALVERA", "ALEIDA", "AARON", "YEE", "YANIRA", "VANDA", "TIANNA", "TAM", "STEFANIA", "SHIRA", "PERRY", "NICOL", "NANCIE", "MONSERRATE", "MINH", "MELYNDA", "MELANY", "MATTHEW", "LOVELLA", "LAURE", "KIRBY", "KACY", "JACQUELYNN", "HYON", "GERTHA", "FRANCISCO", "ELIANA", "CHRISTENA", "CHRISTEEN", "CHARISE", "CATERINA", "CARLEY", "CANDYCE", "ARLENA", "AMMIE", "YANG", "WILLETTE", "VANITA", "TUYET", "TINY", "SYREETA", "SILVA", "SCOTT", "RONALD", "PENNEY", "NYLA", "MICHAL", "MAURICE", "MARYAM", "MARYA", "MAGEN", "LUDIE", "LOMA", "LIVIA", "LANELL", "KIMBERLIE", "JULEE", "DONETTA", "DIEDRA", "DENISHA", "DEANE", "DAWNE", "CLARINE", "CHERRYL", "BRONWYN", "BRANDON", "ALLA", "VALERY", "TONDA", "SUEANN", "SORAYA", "SHOSHANA", "SHELA", "SHARLEEN", "SHANELLE", "NERISSA", "MICHEAL", "MERIDITH", "MELLIE", "MAYE", "MAPLE", "MAGARET", "LUIS", "LILI", "LEONILA", "LEONIE", "LEEANNA", "LAVONIA", "LAVERA", "KRISTEL", "KATHEY", "KATHE", "JUSTIN", "JULIAN", "JIMMY", "JANN", "ILDA", "HILDRED", "HILDEGARDE", "GENIA", "FUMIKO", "EVELIN", "ERMELINDA", "ELLY", "DUNG", "DOLORIS", "DIONNA", "DANAE", "BERNEICE", "ANNICE", "ALIX", "VERENA", "VERDIE", "TRISTAN", "SHAWNNA", "SHAWANA", "SHAUNNA", "ROZELLA", "RANDEE", "RANAE", "MILAGRO", "LYNELL", "LUISE", "LOUIE", "LOIDA", "LISBETH", "KARLEEN", "JUNITA", "JONA", "ISIS", "HYACINTH", "HEDY", "GWENN", "ETHELENE", "ERLINE", "EDWARD", "DONYA", "DOMONIQUE", "DELICIA", "DANNETTE", "CICELY", "BRANDA", "BLYTHE", "BETHANN", "ASHLYN", "ANNALEE", "ALLINE", "YUKO", "VELLA", "TRANG", "TOWANDA", "TESHA", "SHERLYN", "NARCISA", "MIGUELINA", "MERI", "MAYBELL", "MARLANA", "MARGUERITA", "MADLYN", "LUNA", "LORY", "LORIANN", "LIBERTY", "LEONORE", "LEIGHANN", "LAURICE", "LATESHA", "LARONDA", "KATRICE", "KASIE", "KARL", "KALEY", "JADWIGA", "GLENNIE", "GEARLDINE", "FRANCINA", "EPIFANIA", "DYAN", "DORIE", "DIEDRE", "DENESE", "DEMETRICE", "DELENA", "DARBY", "CRISTIE", "CLEORA", "CATARINA", "CARISA", "BERNIE", "BARBERA", "ALMETA", "TRULA", "TEREASA", "SOLANGE", "SHEILAH", "SHAVONNE", "SANORA", "ROCHELL", "MATHILDE", "MARGARETA", "MAIA", "LYNSEY", "LAWANNA", "LAUNA", "KENA", "KEENA", "KATIA", "JAMEY", "GLYNDA", "GAYLENE", "ELVINA", "ELANOR", "DANUTA", "DANIKA", "CRISTEN", "CORDIE", "COLETTA", "CLARITA", "CARMON", "BRYNN", "AZUCENA", "AUNDREA", "ANGELE", "YI", "WALTER", "VERLIE", "VERLENE", "TAMESHA", "SILVANA", "SEBRINA", "SAMIRA", "REDA", "RAYLENE", "PENNI", "PANDORA", "NORAH", "NOMA", "MIREILLE", "MELISSIA", "MARYALICE", "LARAINE", "KIMBERY", "KARYL", "KARINE", "KAM", "JOLANDA", "JOHANA", "JESUSA", "JALEESA", "JAE", "JACQUELYNE", "IRISH", "ILUMINADA", "HILARIA", "HANH", "GENNIE", "FRANCIE", "FLORETTA", "EXIE", "EDDA", "DREMA", "DELPHA", "BEV", "BARBAR", "ASSUNTA", "ARDELL", "ANNALISA"
  };

  //String nameList[] = loadStrings("Names.txt");

  String nameUp;
  String nameLo;
  String nameFirst;
  String name;
  boolean dead = false;
  float heading;
  float headingZ;

  int tankNum;

  float headTemp1;
  float headZTemp1;
  float headTemp2;
  float headZTemp2;
  float headCount;
  boolean turn = false;

  boolean addBub = false;

  int time;
  int timeMod;
  int headingMod;
  int airMod;
  float airX = -40000;
  float airY = -40000;
  int airSize = int(random(10, 20));

  int COD;

  boolean shouldCollide = true;




  int ammonia;


  int wellItsTime;
  int tailPos; //1==open, 2==closed

  float speedMax = 2;

  boolean close;


  Fish() {
    speed = 1;
    heading = random(0, 360);

    hunger = belly;
    age = int(random(1000, 1600));
    nameUp  = nameList[int(random(1700))];
    nameLo = nameUp.toLowerCase();
    nameFirst = nameLo.substring(0, 1);
    nameFirst = nameFirst.toUpperCase();
    name = nameFirst+nameLo.substring(1);
    tailPos = 1;
    time = int(random(150));
    timeMod = int(random(200, 500));
    headingMod = int(random(100, 300));
    airMod = int(random(300, 900));

    ammonia = 0;

    deltaX = speed * sin(radians(heading));
    deltaY = -speed * cos(radians(heading));
  }

  float getRadius() {
    return weight;
  }


  void show() {



    wellItsTime++;

    if (dead == false) {
      if (wellItsTime % int((1/speed)*15) == 0) {
        if (tailPos == 1)
          tailPos = 2;
        else if (tailPos == 2)
          tailPos = 1;
      }
    }


    if (dead) {
      heading = 270;
      tailPos = 1;
    }

    Screens.get(whichTank).fill(skin);
    Screens.get(whichTank).strokeWeight(1);
    Screens.get(whichTank).stroke(0);
    //noStroke();

    if (tailPos == 1) {
      Screens.get(whichTank).triangle(fishX, fishY, weight * sin(radians(heading+160)) + fishX, -weight * cos(radians(heading+160)) + 
        fishY, weight * sin(radians(heading+200)) + fishX, -weight * cos(radians(heading+200)) + fishY);
    }
    if (tailPos == 2) {
      Screens.get(whichTank).triangle(fishX, fishY, weight * sin(radians(heading+170)) + fishX, -weight * cos(radians(heading+170)) + 
        fishY, weight * sin(radians(heading+190)) + fishX, -weight * cos(radians(heading+190)) + fishY);
    }
    Screens.get(whichTank).strokeWeight(1);
    Screens.get(whichTank).ellipse(fishX, fishY, weight, weight);
    Screens.get(whichTank).fill(255);

    if (cos(radians(heading-90)) > 0)
      Screens.get(whichTank).ellipse(weight/3 * sin(radians(heading-20)) + fishX, -weight/3 * cos(radians(heading-20)) + fishY, .2 * weight, .2 * weight);
    else
      Screens.get(whichTank).ellipse(weight/3 * sin(radians(heading+20)) + fishX, -weight/3 * cos(radians(heading+20)) + fishY, .2 * weight, .2 * weight);




    Screens.get(whichTank).strokeWeight(1);
    Screens.get(whichTank).fill(255);
    Screens.get(whichTank).text(name, fishX, fishY-weight);



    if (dead) {
      heading = 270;
      strokeWeight(3);
      stroke(0);
      line(fishX-10, fishY-10, fishX+10, fishY+10);
      line(fishX+10, fishY-10, fishX-10, fishY+10);
      strokeWeight(1);

      if (fishY-weight>-Tanks.get(tankNum).getSizeX()/2) {
        fishY-=.8;
      }
    }//DEAD
  }

  void move() {



    time++;


    if (dead == false) {
      if (time % timeMod == 0) {
        if (age < int(.9 * maxAge))
          speed = random(.3, speedMax);
        else
          speed = random(.2, .8);

        deltaX = speed * sin(radians(heading));
        deltaY = -speed * cos(radians(heading));
      }
      if (time % airMod == 0) {
        addBub = true;
      }
    }


    if (dead == false)
      ammonia+=1;




    if (dead == false) {
      if (time % headingMod == 0) {
        headTemp1 = heading;


        headTemp2 = random(0, 360);

        headCount = abs(headTemp1 - headTemp2)/2.5;
        turn = true;
      }

      if (turn) {
        if (headTemp1 - headTemp2 < 0) {
          if (heading < headTemp2) {
            heading += random(0, 5);
          } else {
            turn = false;
            heading = headTemp2;
          }
        } else {
          if (heading > headTemp2) {
            heading -= random(0, 5);
          } else {
            turn = false;
            heading = headTemp2;
          }
        }
        headCount--;
      } else {
        headCount = 0;
      }



      deltaX = speed * sin(radians(heading));
      deltaY = -speed * cos(radians(heading));
    }

    if (dead == false) {

      if (fishX+(weight)>Tanks.get(tankNum).getSizeX()) {
        heading = 270 + (90 - heading);
        fishX-=1;
      } else if (fishY+(weight)>Tanks.get(tankNum).getSizeY()) {
        heading = 360 + (180 - heading);
        fishY-=1;
      } else if (fishX-(weight)<-Tanks.get(tankNum).getSizeX()) {
        heading = 90 + (270 - heading);
        fishX+=1;
      } else if (fishY-(weight)<-Tanks.get(tankNum).getSizeY()) {
        heading = 180 - heading;
        fishY+=1;
      }

      deltaX = speed * sin(radians(heading));
      deltaY = -speed * cos(radians(heading));

      fishX+=deltaX;//movement
      fishY+=deltaY;
    }



    if (dead == false)
      age+=1;


    if (age > maxAge)
      dead = true;

    if (weight <= int(maxWeight * .1))
      dead = true;

    if (age % 1000 == 0) {
      if (dead == false) {
        weightChange();
      }
    }
  }

  public void otherWay() {
    heading+=180;
    shouldCollide = false;
  }

  public float getX() {
    return fishX;
  }

  public float getY() {
    return fishY;
  }

  public int getTank() {
    return tankNum;
  }

  public String getname() {
    return name;
  }


  void view() {
    camera(fishX, fishY, 0, fishX + speed * sin(radians(heading)), fishY - speed * cos(radians(heading)), 
    0 + speed * sin(radians(headingZ)), 0.0, 1.0, 0.0);
  }

  void follow() {
    camera(fishX + weight * 2, fishY - weight * 2, 0, fishX, fishY, 0, 0.0, 1.0, 0.0);
  }

  abstract public boolean tryToEat(Tankable t2);

  public boolean collide(Tankable t2) {
    if (this.distTo(t2) <= weight/2 + t2.getRadius()+1) {
      return true;
    }
    return false;
  }

  public void lineTo(Tankable t2) {
    stroke(255, 0, 0);
    strokeWeight(1);
    line(this.fishX, this.fishY, t2.getX(), t2.getY());
    stroke(0);
    line(this.fishX, this.fishY, this.fishX + this.weight*2*sin(radians(heading)), this.fishY + this.weight*2*-cos(radians(heading)));
    line(this.fishX, this.fishY, this.fishX + this.weight*2*sin(radians(heading)), this.fishY);
  }

  public float distTo(Tankable t2) {
    return sqrt((fishX-t2.getX())*(fishX-t2.getX())
      +(fishY-t2.getY())*(fishY-t2.getY()));
  }

  public float angleToXY(Tankable t2) {
    if (fishY > t2.getY())
      return acos((this.fishX-t2.getX())/sqrt((fishX-t2.getX())*(fishX-t2.getX())
        +(fishY-t2.getY())*(fishY-t2.getY())));
    return -acos((this.fishX-t2.getX())/sqrt((fishX-t2.getX())*(fishX-t2.getX())
      +(fishY-t2.getY())*(fishY-t2.getY())));
  }

  /* public float angleToXZ(Tankable t2) {
   if (fishZ < t2.getZ())
   return acos((this.fishX-t2.getX())/sqrt((fishX-t2.getX())*(fishX-t2.getX())
   +(fishZ-t2.getZ())*(fishZ-t2.getZ())));
   return -acos((this.fishX-t2.getX())/sqrt((fishX-t2.getX())*(fishX-t2.getX())
   +(fishZ-t2.getZ())*(fishZ-t2.getZ())));
   }*/

  public void angleTo(Tankable t2) {
    stroke(0, 200, 255);
    strokeWeight(1);
    line(this.fishX, this.fishY, t2.getX(), this.fishY);
    line(t2.getX(), this.fishY, t2.getX(), this.fishY);
    line(this.fishX, this.fishY, t2.getX(), fishY);
    stroke(0, 255, 0);
    line(this.fishX, this.fishY, t2.getX(), this.fishY);
    line(t2.getX(), this.fishY, t2.getX(), t2.getY());
    line(this.fishX, this.fishY, t2.getX(), t2.getY());

    //println(name + "  " + speedMax + "   " + degrees(angleToXZ(t2)) + "    " + degrees(angleToXY(t2)));
  }


  public boolean isDead() {
    return dead;
  }

  public boolean addAir() {
    if (addBub) {
      Tanks.get(whichTank).addToShells(new Bubble(fishX+weight/2+8, fishY+weight/2+8, int(random(3, 8))));
      addBub = false;
      return true;
    }
    addBub = false;
    return false;
  }


  public void weightChange() {
    if (dead == false) {
      // if (fishX+(weight+weightAdd)>Tanks.get(tankNum).getSizeX()/2 && fishX-(weight+weightAdd)<-Tanks.get(tankNum).getSizeX()/2 
      //   && fishY+(weight+weightAdd)>Tanks.get(tankNum).getSizeY()/2 && fishY-(weight+weightAdd)<-Tanks.get(tankNum).getSizeY()/2 
      //   && fishZ+(weight+weightAdd)>Tanks.get(tankNum).getSizeZ()/2 && fishZ-(weight+weightAdd)<-Tanks.get(tankNum).getSizeZ()/2) {

      if (weight < maxWeight) {
        weight+=weightAdd;
        // }
      }
    }
  }

  public void antiWeightChange() {
    if (dead == false) {
      weight-=weightAdd;
    }
  }
}

