.class public Lk0/xa$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xa;


# direct methods
.method public constructor <init>(Lk0/xa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xa$h;->a:Lk0/xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

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
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    .line 6
    iget v4, v0, Landroid/text/format/Time;->second:I

    int-to-byte v4, v4

    .line 7
    sget v5, Lk0/nt;->c:I

    const/16 v6, 0x42

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/16 v11, 0xe3

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v5, v6, :cond_0

    const/16 v6, 0x74

    if-eq v5, v6, :cond_0

    const/16 v6, 0x75

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    new-array v0, v7, [I

    aput v11, v0, v14

    aput v12, v0, v13

    const/16 v1, -0x4b

    aput v1, v0, v10

    aput v2, v0, v12

    aput v3, v0, v9

    aput v4, v0, v8

    .line 8
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    :pswitch_0
    const/16 v5, 0xd

    new-array v5, v5, [I

    aput v11, v5, v14

    const/16 v6, 0xa

    aput v6, v5, v13

    const/16 v11, -0x35

    aput v11, v5, v10

    aput v14, v5, v12

    aput v2, v5, v9

    aput v3, v5, v8

    and-int/lit8 v2, v4, 0x7f

    aput v2, v5, v7

    const/4 v2, 0x7

    .line 9
    iget v3, v0, Landroid/text/format/Time;->weekDay:I

    aput v3, v5, v2

    const/16 v2, 0x8

    aput v1, v5, v2

    const/16 v1, 0x9

    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    aput v2, v5, v1

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v1, v13

    aput v1, v5, v6

    const/16 v1, 0xb

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v5, v1

    const/16 v0, 0xc

    aput v14, v5, v0

    invoke-static {v5}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
