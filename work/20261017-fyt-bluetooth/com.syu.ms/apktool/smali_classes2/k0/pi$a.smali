.class public Lk0/pi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pi;


# direct methods
.method public constructor <init>(Lk0/pi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pi$a;->a:Lk0/pi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    sget v0, Lu0/b;->a0:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v6, 0x3

    const/16 v7, 0x8

    if-eq v0, v2, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 7
    :cond_4
    sget v0, Lw0/d;->h:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    move v0, v9

    goto :goto_0

    :pswitch_0
    move v0, v6

    goto :goto_0

    :pswitch_1
    move v0, v8

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v0, 0x12

    goto :goto_0

    :cond_6
    const/16 v0, 0x11

    :goto_0
    new-array v1, v1, [I

    const/16 v10, 0xe3

    aput v10, v1, v9

    const/16 v10, -0x40

    aput v10, v1, v2

    aput v7, v1, v8

    aput v2, v1, v6

    const/4 v6, 0x4

    aput v2, v1, v6

    aput v0, v1, v4

    .line 8
    sget v0, Lw0/d;->i:I

    and-int/lit16 v2, v0, 0xff

    aput v2, v1, v3

    const/4 v2, 0x7

    shr-int/2addr v0, v7

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    sget v0, Lw0/d;->j:I

    aput v0, v1, v7

    const/16 v0, 0x9

    aput v9, v1, v0

    aput v9, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_7
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x40
        0x8
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x40
        0x8
        0x7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x40
        0x8
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x40
        0x8
        0xb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x40
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
