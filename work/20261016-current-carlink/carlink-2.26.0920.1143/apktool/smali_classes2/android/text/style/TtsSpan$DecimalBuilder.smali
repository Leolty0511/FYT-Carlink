.class public Landroid/text/style/TtsSpan$DecimalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DecimalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.decimal"

    .line 1
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/style/TtsSpan$DecimalBuilder;->setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 6
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    return-void
.end method


# virtual methods
.method public setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 0

    .line 1
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 11
    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    invoke-virtual {p3, p4}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 p2, 0x2e

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ltz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p3}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object p0
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.fractional_part"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 1

    const-string v0, "android.arg.integer_part"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object p1
.end method
