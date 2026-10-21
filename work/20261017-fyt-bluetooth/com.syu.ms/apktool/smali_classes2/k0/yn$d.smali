.class public Lk0/yn$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yn;


# direct methods
.method public constructor <init>(Lk0/yn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yn$d;->a:Lk0/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/yn$d;->a:Lk0/yn;

    iget v1, v0, Lk0/yn;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/yn;->j:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    .line 2
    sget v3, Lu0/b;->a0:I

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_c
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_e
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lk0/yn;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lk0/yn$d;->a:Lk0/yn;

    const/4 v1, 0x5

    iput v1, v0, Lk0/yn;->j:I

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x101c5 -> :sswitch_e
        0x201c5 -> :sswitch_d
        0x1a01c7 -> :sswitch_c
        0x1b01c7 -> :sswitch_b
        0x1c01c7 -> :sswitch_a
        0x1d01c7 -> :sswitch_9
        0x1e01c7 -> :sswitch_8
        0x1f01c7 -> :sswitch_7
        0x2001c7 -> :sswitch_6
        0x4101c7 -> :sswitch_5
        0x7501c4 -> :sswitch_4
        0x7601c4 -> :sswitch_3
        0x9c01c7 -> :sswitch_2
        0xd201c6 -> :sswitch_1
        0xd301c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0xd
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x15
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0xa
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0xb
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x14
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x82
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xe2
        0x1
        0x81
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x80
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xe2
        0x1
        0x13
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xe2
        0x1
        0x12
    .end array-data
.end method
