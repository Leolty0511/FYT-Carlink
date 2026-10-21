.class public Lk0/i8$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i8;


# direct methods
.method public constructor <init>(Lk0/i8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i8$e;->a:Lk0/i8;

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

    add-int/lit16 v1, v1, -0x7d0

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 7
    sget v6, Lk0/nt;->a:I

    const v7, 0x1c00ff

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/16 v11, 0x9

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/16 v15, 0xe3

    const/16 v16, 0x3

    const/4 v10, 0x6

    const/16 v17, 0x0

    if-eq v6, v7, :cond_3

    const v7, 0x1d00ff

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const v7, 0x600ff

    if-eq v6, v7, :cond_2

    const v7, 0x700ff

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    new-array v5, v11, [I

    aput v15, v5, v17

    const/16 v6, 0xa6

    aput v6, v5, v3

    aput v10, v5, v14

    aput v1, v5, v16

    aput v2, v5, v13

    aput v4, v5, v12

    .line 8
    iget v1, v0, Landroid/text/format/Time;->hour:I

    aput v1, v5, v10

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v5, v9

    aput v17, v5, v8

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_2

    :cond_2
    :goto_0
    new-array v1, v10, [I

    aput v15, v1, v17

    const/16 v2, 0xc9

    aput v2, v1, v3

    aput v16, v1, v14

    .line 9
    iget v2, v0, Landroid/text/format/Time;->minute:I

    aput v2, v1, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v1, v13

    aput v5, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_3
    :goto_1
    new-array v5, v11, [I

    aput v15, v5, v17

    const/16 v6, 0xc9

    aput v6, v5, v3

    aput v10, v5, v14

    .line 10
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v5, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v5, v13

    aput v4, v5, v12

    aput v2, v5, v10

    aput v1, v5, v9

    aput v17, v5, v8

    invoke-static {v5}, Lz/k;->s([I)V

    :goto_2
    return-void
.end method
