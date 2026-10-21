.class public Landroid/text/style/TtsSpan$SemioticClassBuilder;
.super Landroid/text/style/TtsSpan$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemioticClassBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "*>;>",
        "Landroid/text/style/TtsSpan$Builder<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/style/TtsSpan$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setAnimacy(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 1
    const-string v0, "android.arg.animacy"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setCase(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 1
    const-string v0, "android.arg.case"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setGender(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 1
    const-string v0, "android.arg.gender"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setMultiplicity(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 1
    const-string v0, "android.arg.multiplicity"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    .line 8
    .line 9
    return-object p1
.end method
