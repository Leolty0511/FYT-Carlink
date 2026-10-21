.class public Lk0/rc$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/rc;


# direct methods
.method public constructor <init>(Lk0/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rc$n;->b:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lk0/rc$n;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget-object v3, v0, Lk0/rc$n;->a:Landroid/text/format/Time;

    iget v4, v3, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v4, -0x7d0

    int-to-byte v4, v4

    .line 5
    iget v5, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v5, v2

    int-to-byte v5, v5

    .line 6
    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    .line 7
    iget v7, v3, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    .line 8
    iget v8, v3, Landroid/text/format/Time;->minute:I

    int-to-byte v8, v8

    .line 9
    iget v9, v3, Landroid/text/format/Time;->second:I

    int-to-byte v9, v9

    .line 10
    sget v10, Lk0/nt;->c:I

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, -0x39

    const/16 v18, 0xe3

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x7

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    packed-switch v10, :pswitch_data_3

    new-array v3, v11, [I

    aput v18, v3, v19

    aput v17, v3, v2

    aput v20, v3, v16

    aput v4, v3, v15

    aput v5, v3, v14

    aput v6, v3, v13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v7

    aput v1, v3, v20

    aput v8, v3, v21

    aput v9, v3, v12

    .line 11
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_0
    const/16 v10, 0xa

    new-array v10, v10, [I

    aput v18, v10, v19

    aput v17, v10, v2

    aput v21, v10, v16

    aput v4, v10, v15

    aput v5, v10, v14

    aput v6, v10, v13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v7

    aput v1, v10, v20

    aput v8, v10, v21

    aput v9, v10, v12

    .line 12
    iget v1, v3, Landroid/text/format/Time;->weekDay:I

    int-to-byte v1, v1

    aput v1, v10, v11

    invoke-static {v10}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
