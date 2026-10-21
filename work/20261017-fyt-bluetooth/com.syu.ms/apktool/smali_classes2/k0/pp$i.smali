.class public Lk0/pp$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pp;


# direct methods
.method public constructor <init>(Lk0/pp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pp$i;->a:Lk0/pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v1, -0x7d0

    int-to-byte v2, v2

    .line 4
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 5
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 6
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 7
    iget v7, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    .line 8
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    .line 9
    sget v8, Lk0/nt;->a:I

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0xe3

    const/4 v15, 0x0

    const/16 v9, 0x9

    const/16 v16, 0x7

    const/16 v17, 0x6

    const v10, 0xc401c5    # 1.8000392E-38f

    if-eq v8, v10, :cond_0

    new-array v1, v9, [I

    aput v14, v1, v15

    const/16 v8, 0xa6

    aput v8, v1, v4

    aput v17, v1, v13

    aput v2, v1, v12

    aput v3, v1, v11

    const/4 v2, 0x5

    aput v5, v1, v2

    aput v6, v1, v17

    aput v7, v1, v16

    const/16 v2, 0x8

    aput v0, v1, v2

    .line 10
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    add-int/lit16 v1, v1, -0x7e4

    int-to-byte v1, v1

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v4

    const/16 v8, 0xa

    new-array v8, v8, [I

    aput v14, v8, v15

    const/16 v10, 0x85

    aput v10, v8, v4

    aput v16, v8, v13

    aput v1, v8, v12

    aput v3, v8, v11

    const/4 v1, 0x5

    aput v5, v8, v1

    aput v6, v8, v17

    aput v7, v8, v16

    const/16 v1, 0x8

    aput v0, v8, v1

    aput v2, v8, v9

    .line 12
    invoke-static {v8}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
