.class public Lk0/tn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tn;


# direct methods
.method public constructor <init>(Lk0/tn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tn$a;->a:Lk0/tn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

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
    iget v5, v0, Landroid/text/format/Time;->second:I

    int-to-byte v5, v5

    if-eqz v1, :cond_0

    const/16 v6, 0xc

    if-le v3, v6, :cond_0

    add-int/lit8 v3, v3, -0xc

    int-to-byte v3, v3

    :cond_0
    const/4 v6, 0x7

    new-array v7, v6, [I

    const/16 v8, 0xe3

    const/4 v9, 0x0

    aput v8, v7, v9

    const/16 v8, -0x3a

    aput v8, v7, v2

    const/4 v8, 0x2

    const/4 v10, 0x4

    aput v10, v7, v8

    const/4 v8, 0x3

    const/16 v11, 0x50

    aput v11, v7, v8

    shl-int/2addr v1, v6

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v7, v10

    const/4 v1, 0x5

    aput v4, v7, v1

    const/4 v1, 0x6

    aput v5, v7, v1

    .line 7
    invoke-static {v7}, Lz/k;->s([I)V

    const/16 v1, 0x8e

    new-array v3, v2, [I

    .line 8
    iget v4, v0, Landroid/text/format/Time;->hour:I

    aput v4, v3, v9

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8f

    new-array v2, v2, [I

    .line 9
    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    return-void
.end method
