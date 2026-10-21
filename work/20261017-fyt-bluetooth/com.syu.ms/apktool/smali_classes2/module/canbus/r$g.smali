.class public Lmodule/canbus/r$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/r;


# direct methods
.method public constructor <init>(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r$g;->a:Lmodule/canbus/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

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

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0xd

    new-array v8, v7, [I

    const/16 v9, 0xe3

    const/4 v10, 0x0

    aput v9, v8, v10

    const/16 v9, 0xa

    aput v9, v8, v4

    const/4 v11, 0x2

    const/16 v12, -0x35

    aput v12, v8, v11

    const/4 v13, 0x3

    aput v10, v8, v13

    const/4 v14, 0x4

    aput v6, v8, v14

    const/4 v15, 0x5

    aput v0, v8, v15

    const/16 v16, 0x6

    aput v10, v8, v16

    const/16 v17, 0x7

    const/16 v18, 0x8

    aput v18, v8, v17

    aput v1, v8, v18

    const/16 v19, 0x9

    aput v2, v8, v19

    aput v3, v8, v9

    const/16 v2, 0xb

    aput v5, v8, v2

    const/16 v3, 0xc

    aput v10, v8, v3

    .line 9
    invoke-static {v8}, Lz/k;->s([I)V

    .line 10
    sget v5, Lk0/nt;->a:I

    const v8, 0x7f0126

    if-eq v5, v8, :cond_0

    const v8, 0x870126

    if-ne v5, v8, :cond_1

    :cond_0
    const/16 v5, 0xf

    new-array v5, v5, [B

    const/16 v8, 0x5a

    aput-byte v8, v5, v10

    const/16 v8, -0x5b

    aput-byte v8, v5, v4

    aput-byte v9, v5, v11

    aput-byte v12, v5, v13

    aput-byte v10, v5, v14

    aput-byte v6, v5, v15

    aput-byte v0, v5, v16

    aput-byte v10, v5, v17

    aput-byte v10, v5, v18

    aput-byte v1, v5, v19

    aput-byte v10, v5, v9

    aput-byte v10, v5, v2

    aput-byte v10, v5, v3

    aput-byte v10, v5, v7

    const/16 v0, 0xe

    aput-byte v10, v5, v0

    .line 11
    invoke-static {v5}, Lmodule/canbus/r;->K3([B)V

    :cond_1
    return-void
.end method
