.class public Lk0/ge$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ge;


# direct methods
.method public constructor <init>(Lk0/ge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ge$e;->a:Lk0/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ge$e;->a:Lk0/ge;

    iget v1, v0, Lk0/ge;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/ge;->m:I

    const/4 v2, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v2, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v2, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array v0, v2, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_a
    new-array v0, v2, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_b
    new-array v0, v2, [I

    .line 14
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array v0, v2, [I

    .line 15
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v2, [I

    .line 16
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v2, [I

    .line 17
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array v0, v2, [I

    .line 18
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v2, [I

    .line 19
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    new-array v0, v2, [I

    .line 20
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array v0, v2, [I

    .line 21
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lk0/ge;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lk0/ge$e;->a:Lk0/ge;

    iput v2, v0, Lk0/ge;->m:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_12
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_12
        :pswitch_7
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x23
        0xd
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x22
        0xd
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x21
        0xd
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x20
        0xd
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x1e
        0xd
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x1d
        0xd
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x1c
        0xd
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x1a
        0xd
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x11
        0xd
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x1f
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x18
        0xd
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0xd
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x17
        0xd
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x16
        0xd
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0xd
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0xd
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0xd
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x2
        0x24
        0x1b
        0xd
    .end array-data
.end method
