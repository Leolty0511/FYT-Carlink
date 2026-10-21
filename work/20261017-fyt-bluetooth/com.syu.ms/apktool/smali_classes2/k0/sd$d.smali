.class public Lk0/sd$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sd;


# direct methods
.method public constructor <init>(Lk0/sd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sd$d;->a:Lk0/sd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/sd$d;->a:Lk0/sd;

    iget v1, v0, Lk0/sd;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/sd;->j:I

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/sd;->j:I

    new-array v0, v4, [I

    const/16 v5, 0xe3

    aput v5, v0, v1

    const/16 v1, 0xdd

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    .line 3
    invoke-static {}, Lk0/sd;->c3()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x4

    invoke-static {}, Lk0/sd;->d3()I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5d

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v4, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v4, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v4, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v4, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v4, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v4, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v4, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array v0, v4, [I

    .line 13
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    :pswitch_9
    new-array v0, v2, [I

    .line 14
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    :pswitch_a
    new-array v0, v4, [I

    .line 15
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    :pswitch_b
    new-array v0, v4, [I

    .line 16
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x37
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5f
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x67
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x87
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x22
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x21
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x20
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xee
        0x3
        0x10
        0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x13
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x11
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x10
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xee
        0x3
        0x10
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xee
        0x2
        0x10
        0x1
    .end array-data
.end method
