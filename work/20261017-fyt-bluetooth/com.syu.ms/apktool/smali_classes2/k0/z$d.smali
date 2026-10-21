.class public Lk0/z$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z;


# direct methods
.method public constructor <init>(Lk0/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z$d;->a:Lk0/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget v4, v0, Landroid/text/format/Time;->hour:I

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    sub-int/2addr v4, v5

    .line 5
    iput v4, v0, Landroid/text/format/Time;->hour:I

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x7

    new-array v6, v5, [I

    const/16 v7, 0xe3

    aput v7, v6, v3

    const/16 v3, -0x3a

    aput v3, v6, v2

    const/4 v3, 0x2

    const/4 v7, 0x4

    aput v7, v6, v3

    const/4 v3, 0x3

    aput v2, v6, v3

    .line 6
    iget v2, v0, Landroid/text/format/Time;->hour:I

    aput v2, v6, v7

    const/4 v2, 0x5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v6, v2

    shl-int/lit8 v0, v4, 0x7

    const/4 v2, 0x6

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput v0, v6, v2

    invoke-static {v6}, Lz/k;->s([I)V

    return-void
.end method
