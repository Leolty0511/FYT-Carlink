.class public Lk0/pj$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pj;


# direct methods
.method public constructor <init>(Lk0/pj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pj$f;->a:Lk0/pj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/pj$f;->a:Lk0/pj;

    iget-byte v1, v0, Lk0/pj;->t:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/pj;->t:B

    if-lez v1, :cond_2

    .line 2
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v1, [I

    .line 14
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_c
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_e
    new-array v0, v1, [I

    .line 17
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    .line 18
    :goto_0
    sget v0, Lk0/nt;->c:I

    const v2, 0xc901bb

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Lk0/pj$f;->a:Lk0/pj;

    iget-byte v0, v0, Lk0/pj;->t:B

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    new-array v0, v1, [I

    .line 20
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array v0, v1, [I

    .line 21
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-static {v0}, Lk0/pj;->h3(Lk0/pj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lk0/pj$f;->a:Lk0/pj;

    const/16 v1, 0xa

    iput-byte v1, v0, Lk0/pj;->t:B

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3701bb -> :sswitch_e
        0x3801bb -> :sswitch_d
        0x3901bb -> :sswitch_c
        0x3c01bb -> :sswitch_b
        0x3d01bb -> :sswitch_a
        0x4701bc -> :sswitch_d
        0x4801bc -> :sswitch_9
        0x4901bb -> :sswitch_8
        0x4901bc -> :sswitch_7
        0x4a01bb -> :sswitch_6
        0x4a01bc -> :sswitch_d
        0x4b01bc -> :sswitch_9
        0x4c01bc -> :sswitch_7
        0x4d01bc -> :sswitch_d
        0x4e01bc -> :sswitch_9
        0x4f01bc -> :sswitch_7
        0x5001bc -> :sswitch_d
        0x5101bc -> :sswitch_9
        0x5201bc -> :sswitch_7
        0x5401bb -> :sswitch_5
        0x6401bb -> :sswitch_d
        0x6501bb -> :sswitch_d
        0x6601bc -> :sswitch_4
        0x6701bc -> :sswitch_4
        0x6801bb -> :sswitch_3
        0x6801bc -> :sswitch_4
        0x6901bc -> :sswitch_4
        0x7801bb -> :sswitch_c
        0x7901bb -> :sswitch_d
        0x7a01bb -> :sswitch_d
        0x7b01bb -> :sswitch_d
        0x7c01bb -> :sswitch_2
        0x7d01bb -> :sswitch_4
        0x7e01bb -> :sswitch_4
        0x7f01bb -> :sswitch_4
        0x8001bb -> :sswitch_4
        0x8101bb -> :sswitch_1
        0x8201bb -> :sswitch_0
        0x9c01bc -> :sswitch_d
        0x9d01bc -> :sswitch_9
        0x9e01bc -> :sswitch_7
        0x9f01bc -> :sswitch_c
        0xa001bc -> :sswitch_b
        0xa101bc -> :sswitch_a
        0xa201bc -> :sswitch_d
        0xa301bc -> :sswitch_9
        0xa401bc -> :sswitch_7
        0xa501bc -> :sswitch_d
        0xa601bc -> :sswitch_9
        0xa701bc -> :sswitch_7
        0xa801bc -> :sswitch_d
        0xa901bc -> :sswitch_9
        0xaa01bc -> :sswitch_7
        0xab01bc -> :sswitch_d
        0xac01bc -> :sswitch_9
        0xad01bc -> :sswitch_7
        0xae01bc -> :sswitch_c
        0xaf01bc -> :sswitch_b
        0xb001bc -> :sswitch_a
        0xb101bc -> :sswitch_4
        0xb201bc -> :sswitch_4
        0xb301bc -> :sswitch_4
        0xb401bc -> :sswitch_4
        0xb501bc -> :sswitch_4
        0xb601bc -> :sswitch_4
        0xb901bb -> :sswitch_b
        0xba01bb -> :sswitch_a
        0xbb01bb -> :sswitch_c
        0xbc01bb -> :sswitch_b
        0xbd01bb -> :sswitch_a
        0xbe01bb -> :sswitch_d
        0xbf01bb -> :sswitch_d
        0xc001bb -> :sswitch_9
        0xc101bb -> :sswitch_9
        0xc201bb -> :sswitch_9
        0xc301bb -> :sswitch_9
        0xc401bb -> :sswitch_9
        0xc501bb -> :sswitch_9
        0xc601bb -> :sswitch_9
        0xc701bb -> :sswitch_9
        0xc801bb -> :sswitch_7
        0xc901bb -> :sswitch_7
        0xca01bb -> :sswitch_7
        0xcb01bb -> :sswitch_7
        0xcc01bb -> :sswitch_7
        0xcd01bb -> :sswitch_7
        0xce01bb -> :sswitch_7
        0xcf01bb -> :sswitch_7
        0xd701bb -> :sswitch_4
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x2f
        0x1b
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x2e
        0x1b
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x2b
        0x1b
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x2a
        0x1b
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x30
        0x1b
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x27
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x26
        0x1b
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x21
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x25
        0x1b
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x29
        0x1b
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x23
        0x1b
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x22
        0x1b
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x1b
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x1b
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x20
        0x1b
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0xad
        0x1
        0x1b
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0xad
        0x1
        0x0
    .end array-data
.end method
