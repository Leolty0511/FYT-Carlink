.class public Landroid/text/style/TtsSpan$OrdinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrdinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$OrdinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.ordinal"

    .line 1
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    return-void
.end method


# virtual methods
.method public setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .locals 1

    const-string v0, "android.arg.number"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$OrdinalBuilder;

    return-object p1
.end method
