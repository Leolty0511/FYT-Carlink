.class public Lk0/gh$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gh;


# direct methods
.method public constructor <init>(Lk0/gh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gh$h;->a:Lk0/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    .line 4
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    int-to-byte v2, v2

    const/16 v3, 0xc

    if-le v1, v3, :cond_0

    add-int/lit8 v1, v1, -0xc

    int-to-byte v1, v1

    :cond_0
    const/16 v4, 0x9

    new-array v5, v4, [I

    const/16 v6, 0xe3

    const/4 v7, 0x0

    aput v6, v5, v7

    const/16 v6, 0x85

    const/4 v8, 0x1

    aput v6, v5, v8

    const/4 v6, 0x2

    const/4 v9, 0x6

    aput v9, v5, v6

    const/4 v10, 0x3

    aput v7, v5, v10

    const/4 v11, 0x4

    aput v7, v5, v11

    const/4 v12, 0x5

    aput v7, v5, v12

    aput v1, v5, v9

    const/4 v13, 0x7

    aput v0, v5, v13

    const/16 v14, 0x8

    aput v7, v5, v14

    .line 6
    invoke-static {v5}, Lz/k;->s([I)V

    .line 7
    sget v5, Lk0/nt;->a:I

    const v15, 0x3e01c7

    if-eq v5, v15, :cond_1

    const v15, 0x3f01c7

    if-eq v5, v15, :cond_1

    const v15, 0x4801c7

    if-ne v5, v15, :cond_2

    :cond_1
    const/16 v5, 0xf

    new-array v5, v5, [B

    const/16 v15, 0x5a

    aput-byte v15, v5, v7

    const/16 v15, -0x5b

    aput-byte v15, v5, v8

    const/16 v8, 0xa

    aput-byte v8, v5, v6

    const/16 v6, -0x35

    aput-byte v6, v5, v10

    aput-byte v7, v5, v11

    aput-byte v1, v5, v12

    aput-byte v0, v5, v9

    aput-byte v7, v5, v13

    aput-byte v7, v5, v14

    aput-byte v2, v5, v4

    aput-byte v7, v5, v8

    const/16 v0, 0xb

    aput-byte v7, v5, v0

    aput-byte v7, v5, v3

    const/16 v0, 0xd

    aput-byte v7, v5, v0

    const/16 v0, 0xe

    aput-byte v7, v5, v0

    .line 8
    invoke-static {v5}, Lk0/gh;->U3([B)V

    .line 9
    :cond_2
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v12, [B

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->q([B)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4e01c7 -> :sswitch_0
        0x4f01c7 -> :sswitch_0
        0x5001c7 -> :sswitch_0
        0x5101c7 -> :sswitch_0
        0x5401c7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x6at
        -0x1t
        0x0t
        0x0t
        0x69t
    .end array-data
.end method
