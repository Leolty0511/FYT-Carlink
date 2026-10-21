.class public Lk0/k9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/k9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/k9;


# direct methods
.method public constructor <init>(Lk0/k9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/k9$b;->a:Lk0/k9;

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

    .line 4
    sget v2, Lk0/nt;->c:I

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/16 v12, -0x35

    const/4 v13, 0x2

    const/16 v14, 0xe3

    const/16 v15, 0xd

    const/16 v16, 0xa

    const/4 v3, 0x1

    const/16 v17, 0x0

    if-ne v2, v3, :cond_0

    new-array v2, v15, [I

    aput v14, v2, v17

    aput v16, v2, v3

    aput v12, v2, v13

    aput v17, v2, v11

    .line 5
    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v10

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v2, v9

    aput v17, v2, v8

    aput v17, v2, v7

    aput v1, v2, v6

    aput v17, v2, v5

    aput v17, v2, v16

    aput v17, v2, v4

    const/16 v0, 0xc

    aput v17, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v2, v15, [I

    aput v14, v2, v17

    aput v16, v2, v3

    aput v12, v2, v13

    .line 6
    iget v12, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v12, v12, -0x7d0

    int-to-byte v12, v12

    aput v12, v2, v11

    iget v11, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v11, v3

    aput v11, v2, v10

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    aput v3, v2, v9

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v8

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v2, v7

    aput v1, v2, v6

    aput v17, v2, v5

    aput v17, v2, v16

    aput v17, v2, v4

    const/16 v0, 0xc

    aput v17, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
