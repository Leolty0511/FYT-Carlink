.class public Lk0/fm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fm;


# direct methods
.method public constructor <init>(Lk0/fm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fm$b;->a:Lk0/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    div-long/2addr v3, v5

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    .line 5
    iget v7, v1, Landroid/text/format/Time;->year:I

    add-int/lit16 v7, v7, -0x7d0

    int-to-byte v7, v7

    .line 6
    iget v8, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v8, v6

    int-to-byte v8, v8

    .line 7
    iget v9, v1, Landroid/text/format/Time;->monthDay:I

    int-to-byte v9, v9

    .line 8
    iget v10, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v10, v10

    .line 9
    iget v1, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v1, v1

    .line 10
    iget-object v11, v0, Lk0/fm$b;->a:Lk0/fm;

    invoke-static {v11}, Lk0/fm;->a3(Lk0/fm;)B

    move-result v11

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, -0x3a

    const/16 v19, 0xe3

    const/16 v12, 0x9

    const/16 v21, 0x6

    if-eq v11, v5, :cond_0

    new-array v11, v12, [I

    aput v19, v11, v2

    aput v18, v11, v6

    aput v21, v11, v17

    aput v2, v11, v16

    aput v5, v11, v15

    aput v2, v11, v14

    aput v2, v11, v21

    aput v2, v11, v13

    const/16 v20, 0x8

    aput v2, v11, v20

    .line 11
    invoke-static {v11}, Lz/k;->s([I)V

    .line 12
    iget-object v11, v0, Lk0/fm$b;->a:Lk0/fm;

    invoke-static {v11, v5}, Lk0/fm;->b3(Lk0/fm;B)B

    .line 13
    :cond_0
    iget-object v5, v0, Lk0/fm$b;->a:Lk0/fm;

    invoke-static {v5}, Lk0/fm;->c3(Lk0/fm;)J

    move-result-wide v22

    cmp-long v5, v22, v3

    if-eqz v5, :cond_1

    new-array v5, v12, [I

    aput v19, v5, v2

    aput v18, v5, v6

    aput v21, v5, v17

    aput v6, v5, v16

    aput v7, v5, v15

    aput v8, v5, v14

    aput v9, v5, v21

    aput v10, v5, v13

    const/16 v2, 0x8

    aput v1, v5, v2

    .line 14
    invoke-static {v5}, Lz/k;->s([I)V

    .line 15
    iget-object v1, v0, Lk0/fm$b;->a:Lk0/fm;

    invoke-static {v1, v3, v4}, Lk0/fm;->d3(Lk0/fm;J)J

    :cond_1
    return-void
.end method
