.class public Lmodule/canbus/k0$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$n;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

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

    .line 4
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v4, v4

    .line 6
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    if-eqz v1, :cond_0

    const/16 v5, 0xc

    if-le v3, v5, :cond_0

    add-int/lit8 v3, v3, -0xc

    int-to-byte v3, v3

    :cond_0
    const/4 v5, 0x7

    new-array v6, v5, [I

    const/4 v7, 0x0

    const/16 v8, 0xe3

    aput v8, v6, v7

    const/16 v7, -0x3a

    aput v7, v6, v2

    const/4 v2, 0x2

    const/4 v7, 0x4

    aput v7, v6, v2

    const/4 v2, 0x3

    const/16 v8, 0x50

    aput v8, v6, v2

    shl-int/2addr v1, v5

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v6, v7

    const/4 v1, 0x5

    aput v4, v6, v1

    const/4 v1, 0x6

    aput v0, v6, v1

    .line 7
    invoke-static {v6}, Lz/k;->s([I)V

    return-void
.end method
