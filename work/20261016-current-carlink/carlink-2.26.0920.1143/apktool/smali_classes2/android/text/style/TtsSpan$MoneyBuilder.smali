.class public Landroid/text/style/TtsSpan$MoneyBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoneyBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$MoneyBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "android.type.money"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setCurrency(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.money"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
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
    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1

    const-string v0, "android.arg.integer_part"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object p1
.end method

.method public setQuantity(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.quantity"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    .line 8
    .line 9
    return-object p1
.end method
