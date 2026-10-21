.class public Landroid/text/style/TtsSpan$TextBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$TextBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.text"

    .line 1
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TextBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TextBuilder;->setText(Ljava/lang/String;)Landroid/text/style/TtsSpan$TextBuilder;

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)Landroid/text/style/TtsSpan$TextBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.text"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$TextBuilder;

    .line 8
    .line 9
    return-object p1
.end method
