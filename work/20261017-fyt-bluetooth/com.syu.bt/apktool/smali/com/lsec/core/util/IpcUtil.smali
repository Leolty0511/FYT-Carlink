.class public Lcom/lsec/core/util/IpcUtil;
.super Ljava/lang/Object;
.source "IpcUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fltsOk([FI)Z
    .locals 1
    .param p0, "flts"    # [F
    .param p1, "min"    # I

    .prologue
    .line 15
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static freqStr2Int(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static int2freqStr(I)Ljava/lang/String;
    .locals 6
    .param p0, "freq"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    const/16 v0, 0x4e20

    if-ge p0, v0, :cond_0

    .line 24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d.%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, p0, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    rem-int/lit8 v3, p0, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    div-int/lit8 v3, p0, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static intsOk([II)Z
    .locals 1
    .param p0, "ints"    # [I
    .param p1, "min"    # I

    .prologue
    .line 7
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static strsOk([Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "strs"    # [Ljava/lang/Object;
    .param p1, "min"    # I

    .prologue
    .line 11
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
