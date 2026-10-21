.class public Lk0/zr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zr;


# direct methods
.method public constructor <init>(Lk0/zr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zr$a;->a:Lk0/zr;

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

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

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

    move-object/from16 v7, p0

    .line 9
    iget-object v8, v7, Lk0/zr$a;->a:Lk0/zr;

    iget v9, v8, Lk0/zr;->i:I

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, -0x3a

    const/16 v17, 0xe3

    const/16 v10, 0x9

    const/16 v18, 0x6

    const/16 v19, 0x0

    if-eq v9, v1, :cond_0

    .line 10
    iput v1, v8, Lk0/zr;->i:I

    new-array v8, v10, [I

    aput v17, v8, v19

    aput v16, v8, v2

    aput v18, v8, v15

    aput v19, v8, v14

    aput v1, v8, v13

    aput v19, v8, v12

    aput v19, v8, v18

    aput v19, v8, v11

    const/16 v1, 0x8

    aput v19, v8, v1

    .line 11
    invoke-static {v8}, Lz/k;->s([I)V

    :cond_0
    new-array v1, v10, [I

    aput v17, v1, v19

    aput v16, v1, v2

    aput v18, v1, v15

    aput v2, v1, v14

    aput v3, v1, v13

    aput v4, v1, v12

    aput v5, v1, v18

    aput v6, v1, v11

    const/16 v2, 0x8

    aput v0, v1, v2

    .line 12
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
