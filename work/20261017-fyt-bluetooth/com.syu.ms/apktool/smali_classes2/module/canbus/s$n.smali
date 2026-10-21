.class public Lmodule/canbus/s$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$n;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

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

    int-to-byte v4, v3

    .line 5
    iget v5, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v6, v5

    .line 6
    iget v7, v0, Landroid/text/format/Time;->second:I

    int-to-byte v7, v7

    if-eqz v1, :cond_0

    const/16 v8, 0xc

    if-le v4, v8, :cond_0

    add-int/lit8 v4, v4, -0xc

    int-to-byte v4, v4

    .line 7
    :cond_0
    sget v8, Lk0/nt;->c:I

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0xe3

    const/4 v14, 0x7

    const/4 v15, 0x4

    const/16 v16, 0x0

    if-nez v8, :cond_1

    new-array v4, v14, [I

    aput v13, v4, v16

    const/16 v7, 0xc8

    aput v7, v4, v2

    aput v15, v4, v12

    aput v16, v4, v11

    aput v1, v4, v15

    aput v3, v4, v10

    aput v5, v4, v9

    .line 8
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v3, v14, [I

    aput v13, v3, v16

    const/16 v5, -0x3a

    aput v5, v3, v2

    aput v15, v3, v12

    const/16 v5, 0x50

    aput v5, v3, v11

    shl-int/2addr v1, v14

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v3, v15

    aput v6, v3, v10

    aput v7, v3, v9

    .line 9
    invoke-static {v3}, Lz/k;->s([I)V

    :goto_0
    const/16 v1, 0xe1

    new-array v3, v2, [I

    .line 10
    iget v4, v0, Landroid/text/format/Time;->hour:I

    aput v4, v3, v16

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe2

    new-array v3, v2, [I

    aput v6, v3, v16

    .line 11
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v2, [I

    .line 12
    iget v3, v0, Landroid/text/format/Time;->month:I

    aput v3, v1, v16

    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe4

    new-array v3, v2, [I

    .line 13
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    aput v4, v3, v16

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe5

    new-array v2, v2, [I

    .line 14
    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    aput v0, v2, v16

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    return-void
.end method
