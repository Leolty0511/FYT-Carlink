.class public Landroid/text/style/TtsSpan$TimeBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$TimeBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.time"

    .line 1
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TimeBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 4
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$TimeBuilder;->setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;

    return-void
.end method


# virtual methods
.method public setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.hours"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$TimeBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.minutes"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$TimeBuilder;

    .line 8
    .line 9
    return-object p1
.end method
