.class public Lk0/tm$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tm;


# direct methods
.method public constructor <init>(Lk0/tm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tm$d;->a:Lk0/tm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x4

    const v2, 0xf501c5

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_0
    const v2, 0xd801c6

    if-eq v0, v2, :cond_e

    const v2, 0x8501c7

    if-ne v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const v2, 0xde01c6

    if-ne v0, v2, :cond_2

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_2
    const v2, 0x6701c7

    if-ne v0, v2, :cond_3

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3
    const v2, 0xac01c7

    if-ne v0, v2, :cond_4

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4
    const v2, 0xad01c7

    if-eq v0, v2, :cond_d

    const v2, 0xae01c7

    if-ne v0, v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const v2, 0xb801c7

    if-ne v0, v2, :cond_6

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_6
    const v2, 0xea01c7

    if-ne v0, v2, :cond_7

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_7
    const v2, 0xeb01c7

    if-ne v0, v2, :cond_8

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_8
    const v2, 0x3801c8

    if-ne v0, v2, :cond_9

    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_9
    const v2, 0x5301c8

    if-ne v0, v2, :cond_a

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_a
    const v2, 0x6b01c8

    if-ne v0, v2, :cond_b

    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_b
    const v2, 0x6c01c8

    if-ne v0, v2, :cond_c

    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_c
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_d
    :goto_0
    new-array v0, v1, [I

    .line 14
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_e
    :goto_1
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xee
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x1
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xee
        0x1
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xee
        0x1
        0x7
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xee
        0x1
        0x8
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xee
        0x1
        0x9
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xee
        0x1
        0xa
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xee
        0x1
        0xb
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xee
        0x1
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xee
        0x1
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xee
        0x1
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xee
        0x1
        0x6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xee
        0x1
        0x2
    .end array-data
.end method
