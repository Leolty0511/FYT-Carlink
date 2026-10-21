.class public Landroid/text/style/TtsSpan$FractionBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FractionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$FractionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.fraction"

    .line 1
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/TtsSpan$FractionBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 4
    invoke-virtual {p0, p3, p4}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 5
    invoke-virtual {p0, p5, p6}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    return-void
.end method


# virtual methods
.method public setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1

    const-string v0, "android.arg.denominator"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object p1
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1

    const-string v0, "android.arg.integer_part"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object p1
.end method

.method public setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1

    const-string v0, "android.arg.numerator"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object p1
.end method
