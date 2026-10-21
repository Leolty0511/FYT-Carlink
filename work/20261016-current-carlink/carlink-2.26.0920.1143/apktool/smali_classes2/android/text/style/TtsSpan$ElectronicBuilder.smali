.class public Landroid/text/style/TtsSpan$ElectronicBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElectronicBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$ElectronicBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "android.type.electronic"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.domain"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setEmailArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 0

    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFragmentId(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.fragment_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setPassword(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.password"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.path"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setPort(I)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.port"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setProtocol(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.protocol"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setQueryString(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.query_string"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.username"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$ElectronicBuilder;

    .line 8
    .line 9
    return-object p1
.end method
