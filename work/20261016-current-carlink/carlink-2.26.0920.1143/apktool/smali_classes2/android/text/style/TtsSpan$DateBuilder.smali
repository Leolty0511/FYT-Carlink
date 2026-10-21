.class public Landroid/text/style/TtsSpan$DateBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DateBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.date"

    .line 1
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DateBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setDay(I)Landroid/text/style/TtsSpan$DateBuilder;

    :cond_1
    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;

    :cond_2
    if-eqz p4, :cond_3

    .line 6
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setYear(I)Landroid/text/style/TtsSpan$DateBuilder;

    :cond_3
    return-void
.end method


# virtual methods
.method public setDay(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.day"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$DateBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.month"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$DateBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.weekday"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$DateBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setYear(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1

    .line 1
    const-string v0, "android.arg.year"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/text/style/TtsSpan$DateBuilder;

    .line 8
    .line 9
    return-object p1
.end method
