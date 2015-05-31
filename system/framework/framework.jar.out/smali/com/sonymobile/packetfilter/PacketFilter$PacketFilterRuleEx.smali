.class Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
.super Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacketFilterRuleEx"
.end annotation


# static fields
.field private static final URL_ASC:I = 0x2

.field private static final URL_ASC_IP_PATH:I = 0x7

.field private static final URL_ASC_PATH:I = 0x3

.field private static final URL_IP_MASK:I = 0x5

.field private static final URL_IP_RANGE:I = 0x6

.field private static final URL_IP_SINGLE:I = 0x4

.field private static final URL_NULL:I = 0x1

.field private static final URL_UNSUPPORTED:I


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mUrlType:I

.field final synthetic this$0:Lcom/sonymobile/packetfilter/PacketFilter;


# direct methods
.method constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilterRuleBase;)V
    .locals 2
    .param p2, "rule"    # Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    .line 1089
    iget-object v0, p2, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;->mURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    .line 1083
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mProtocol:Ljava/lang/String;

    .line 1084
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->getCleanPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    .line 1093
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    .line 1095
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->parseAddress()V

    .line 1096
    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .prologue
    .line 1071
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->checkRule()Z

    move-result v0

    return v0
.end method

.method private checkRule()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1104
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    if-nez v2, :cond_0

    .line 1114
    :goto_0
    return v0

    .line 1108
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    :cond_1
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    if-ne v2, v1, :cond_2

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both address and package is empty. Rule UNSUPPORT rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1114
    goto :goto_0
.end method

.method private parseAddress()V
    .locals 10

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1122
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1123
    :cond_0
    iput v8, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    .line 1199
    :cond_1
    :goto_0
    return-void

    .line 1126
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1127
    .local v0, "colon":I
    const-string v3, ""

    .line 1128
    .local v3, "urlpath":Ljava/lang/String;
    if-lez v0, :cond_3

    .line 1129
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mProtocol:Ljava/lang/String;

    .line 1130
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1135
    :goto_1
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->checkIP(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3000(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1136
    const/4 v4, 0x4

    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    .line 1138
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    goto :goto_0

    .line 1132
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    goto :goto_1

    .line 1142
    :cond_4
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->checkIPMask(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3100(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1143
    const/4 v4, 0x5

    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    .line 1144
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    goto :goto_0

    .line 1148
    :cond_5
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->checkIPRange(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3200(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1149
    const/4 v4, 0x6

    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    .line 1150
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    goto :goto_0

    .line 1154
    :cond_6
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1155
    .local v2, "slash":I
    if-lez v2, :cond_9

    .line 1156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    .line 1157
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_7

    const-string v4, ""

    iput-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    .line 1158
    :cond_7
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    .line 1165
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    :goto_3
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_a

    .line 1172
    :cond_8
    iput v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    goto/16 :goto_0

    .line 1160
    :cond_9
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    goto :goto_2

    .line 1166
    :catch_0
    move-exception v1

    .line 1167
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_3

    .line 1176
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_ASCCODE:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3300()Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_c

    .line 1179
    :cond_b
    iput v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    goto/16 :goto_0

    .line 1183
    :cond_c
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->checkIP(Ljava/lang/String;)Z
    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3000(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1184
    const/4 v4, 0x7

    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    goto/16 :goto_0

    .line 1188
    :cond_d
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_ADDR:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3400()Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1194
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_ENGLISH:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/sonymobile/packetfilter/PacketFilter;->access$3500()Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1196
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    :goto_4
    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x3

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1209
    if-ne p0, p1, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return v1

    .line 1211
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1212
    goto :goto_0

    .line 1213
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1214
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1215
    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 1216
    .local v0, "other":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 1217
    iget-object v3, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 1218
    goto :goto_0

    .line 1219
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 1220
    goto :goto_0

    .line 1221
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 1222
    iget-object v3, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 1223
    goto :goto_0

    .line 1224
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1225
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1203
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
