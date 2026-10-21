.class public Lk0/sn$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sn;


# direct methods
.method public constructor <init>(Lk0/sn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sn$l;->a:Lk0/sn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

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

    if-nez v1, :cond_0

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    .line 5
    iput v2, v0, Landroid/text/format/Time;->hour:I

    :cond_0
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x38

    aput v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x4

    aput v5, v2, v3

    const/4 v3, 0x3

    .line 6
    iget v6, v0, Landroid/text/format/Time;->minute:I

    aput v6, v2, v3

    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v2, v5

    const/4 v0, 0x5

    aput v1, v2, v0

    const/4 v1, 0x6

    aput v4, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    .line 7
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x2
        0x0
        0x10
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x2
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x2
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x2
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x2
        0x0
        0x20
    .end array-data
.end method
