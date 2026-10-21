.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 14
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v0, 0x0

    const/16 v13, 0x3b

    const/4 v12, 0x0

    .line 43
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "rawText":Ljava/lang/String;
    const-string v11, "WIFI:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    const-string v11, "WIFI:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 48
    const-string v11, "S:"

    invoke-static {v11, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 52
    const-string v0, "P:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "pass":Ljava/lang/String;
    const-string v0, "T:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 55
    const-string v1, "nopass"

    .line 61
    :cond_2
    const/4 v4, 0x0

    .line 62
    .local v4, "hidden":Z
    const-string v0, "PH2:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "phase2Method":Ljava/lang/String;
    const-string v0, "H:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "hValue":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 66
    if-nez v8, :cond_3

    const-string v0, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "false"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 73
    :cond_4
    :goto_1
    const-string v0, "I:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "identity":Ljava/lang/String;
    const-string v0, "A:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "anonymousIdentity":Ljava/lang/String;
    const-string v0, "E:"

    invoke-static {v0, v10, v13, v12}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "eapMethod":Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v5    # "identity":Ljava/lang/String;
    .end local v6    # "anonymousIdentity":Ljava/lang/String;
    .end local v7    # "eapMethod":Ljava/lang/String;
    :cond_5
    move-object v8, v9

    goto :goto_1
.end method
