.class public Lk0/k0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/k0;


# direct methods
.method public constructor <init>(Lk0/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/k0$c;->a:Lk0/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    .line 4
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 6
    iget v5, v0, Landroid/text/format/Time;->hour:I

    .line 7
    iget v6, v0, Landroid/text/format/Time;->minute:I

    .line 8
    iget v0, v0, Landroid/text/format/Time;->second:I

    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xe3

    aput v9, v7, v8

    const/16 v8, 0xa7

    aput v8, v7, v3

    const/4 v3, 0x2

    const/4 v8, 0x7

    aput v8, v7, v3

    .line 9
    div-int/lit8 v3, v1, 0x64

    .line 10
    invoke-static {v3}, Ll0/c0;->L1(I)I

    move-result v3

    const/4 v9, 0x3

    aput v3, v7, v9

    rem-int/lit8 v1, v1, 0x64

    .line 11
    invoke-static {v1}, Ll0/c0;->L1(I)I

    move-result v1

    const/4 v3, 0x4

    aput v1, v7, v3

    .line 12
    invoke-static {v2}, Ll0/c0;->L1(I)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v7, v2

    .line 13
    invoke-static {v4}, Ll0/c0;->L1(I)I

    move-result v1

    const/4 v3, 0x6

    aput v1, v7, v3

    .line 14
    invoke-static {v5}, Ll0/c0;->L1(I)I

    move-result v1

    aput v1, v7, v8

    .line 15
    invoke-static {v6}, Ll0/c0;->L1(I)I

    move-result v1

    const/16 v3, 0x8

    aput v1, v7, v3

    .line 16
    invoke-static {v0}, Ll0/c0;->L1(I)I

    move-result v0

    const/16 v1, 0x9

    aput v0, v7, v1

    .line 17
    invoke-static {v7}, Lz/k;->s([I)V

    .line 18
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-array v0, v2, [I

    .line 19
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    .line 20
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v2, [I

    .line 21
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    .line 22
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v2, [I

    .line 23
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    .line 24
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0x66
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x80
        0x2
        0xf4
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x2
        0x66
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x80
        0x2
        0xf4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xee
        0x2
        0x66
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x80
        0x2
        0xf4
        0x0
    .end array-data
.end method
