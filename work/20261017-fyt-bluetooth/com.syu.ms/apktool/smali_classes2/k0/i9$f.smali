.class public Lk0/i9$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i9;


# direct methods
.method public constructor <init>(Lk0/i9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i9$f;->a:Lk0/i9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_a
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_b
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v1, [I

    .line 14
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v1, [I

    .line 17
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    new-array v0, v1, [I

    .line 18
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array v0, v1, [I

    .line 19
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_13
    new-array v0, v1, [I

    .line 20
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_14
    new-array v0, v1, [I

    .line 21
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x42
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x81
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x41
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xf
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xe
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xb
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0xa
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x9
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x8
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x7
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x6
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x5
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x3
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x4
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x12
        0x2
        0x2
        0x2
    .end array-data
.end method
