.class public Lk0/rn$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$d;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

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
    iget v7, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    .line 9
    iget v8, v0, Landroid/text/format/Time;->second:I

    int-to-byte v8, v8

    .line 10
    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    int-to-byte v9, v0

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, -0x39

    const/16 v18, 0xe3

    const/16 v19, 0x0

    const/16 v10, 0xa

    const/16 v20, 0x7

    if-nez v9, :cond_0

    new-array v0, v10, [I

    aput v18, v0, v19

    aput v17, v0, v4

    aput v20, v0, v16

    aput v2, v0, v15

    aput v3, v0, v14

    aput v5, v0, v13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v6

    aput v1, v0, v12

    aput v7, v0, v20

    aput v8, v0, v11

    const/16 v1, 0x9

    aput v20, v0, v1

    .line 11
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v9, v10, [I

    aput v18, v9, v19

    aput v17, v9, v4

    aput v20, v9, v16

    aput v2, v9, v15

    aput v3, v9, v14

    aput v5, v9, v13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v6

    aput v1, v9, v12

    aput v7, v9, v20

    aput v8, v9, v11

    int-to-byte v0, v0

    const/16 v1, 0x9

    aput v0, v9, v1

    .line 12
    invoke-static {v9}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
