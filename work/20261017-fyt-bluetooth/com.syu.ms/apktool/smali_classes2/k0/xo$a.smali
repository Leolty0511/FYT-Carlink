.class public Lk0/xo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xo;


# direct methods
.method public constructor <init>(Lk0/xo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xo$a;->a:Lk0/xo;

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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v2

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0x9

    new-array v8, v7, [I

    const/4 v9, 0x0

    const/16 v10, 0xe3

    aput v10, v8, v9

    const/16 v11, 0xc6

    aput v11, v8, v2

    const/4 v12, 0x2

    const/4 v13, 0x6

    aput v13, v8, v12

    const/4 v14, 0x3

    aput v9, v8, v14

    const/4 v15, 0x4

    aput v1, v8, v15

    const/4 v1, 0x5

    aput v9, v8, v1

    aput v9, v8, v13

    const/16 v16, 0x7

    aput v9, v8, v16

    const/16 v17, 0x8

    aput v9, v8, v17

    .line 9
    invoke-static {v8}, Lz/k;->s([I)V

    new-array v7, v7, [I

    aput v10, v7, v9

    aput v11, v7, v2

    aput v13, v7, v12

    aput v2, v7, v14

    aput v3, v7, v15

    aput v4, v7, v1

    aput v5, v7, v13

    aput v6, v7, v16

    aput v0, v7, v17

    .line 10
    invoke-static {v7}, Lz/k;->s([I)V

    return-void
.end method
