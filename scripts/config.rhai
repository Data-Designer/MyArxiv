let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Transfer", "Drug", "Molecular", "Adaptive", "Heterogeneous"]; // Field
let titles_method = ["Graph", "Semi-supervised", "Domain Adaptation", "Meta", "Prompt", "Self-Supervised", "Contrastive", "Domain Generation", "Few-shot"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Wayne Xin Zhao", "Hui Xiong", "Chuan Shi", "Hongzhi Yin", "Qiang Yang", "Irwin King", "Xing Xie", "Wenwu Zhu","Mingsheng Long", "Ming-Ming Cheng", "Jie Tang", "Stephan Günnemann","Xiangnan He", "Junchi Yan",
"Yong Li", "Ji-Rong Wen","Fuzhen Zhuang", "Philip S. Yu", "Lev Arie Ratinov", "Maosong Sun", "Zhiyuan Liu", "Jia Li", "Peng Cui", "Pengfei Liu", "Xiaofei He", "Jindong Wang","Xiaoou Tang", "Jure Leskovec","Kaiming He",
];
// conference + journal
let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // Nature
    "Nature Machine Intelligence", "Nature Microbiology",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV", 
    "TPAMI", "TOG", "TIP", "TVCG", "IJCV", "JMLR", "AI", "TMI",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR", 
    "TKDE", "TKDD", "TOIS", "JASIST", "KAIS", "IPM" , "JOC",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
