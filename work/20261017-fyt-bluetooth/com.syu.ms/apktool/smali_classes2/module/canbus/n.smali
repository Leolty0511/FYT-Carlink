.class public Lmodule/canbus/n;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/n$h;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static final E:[I

.field public static final F:[I

.field public static final G:[I

.field public static final H:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/n$h;",
            ">;"
        }
    .end annotation
.end field

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:F

.field public k:I

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/n;->E:[I

    const/16 v0, 0x15

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lmodule/canbus/n;->F:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/n;->G:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/n;->H:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/n;->c:I

    const/16 v1, 0x11

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/n;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/n$a;

    invoke-direct {v1, p0}, Lmodule/canbus/n$a;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    .line 5
    iput-byte v4, p0, Lmodule/canbus/n;->f:B

    .line 6
    new-instance v1, Lmodule/canbus/n$b;

    invoke-direct {v1, p0}, Lmodule/canbus/n$b;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lmodule/canbus/n$c;

    invoke-direct {v1, p0}, Lmodule/canbus/n$c;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lmodule/canbus/n$d;

    invoke-direct {v1, p0}, Lmodule/canbus/n$d;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->i:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lmodule/canbus/n;->j:F

    const/16 v1, 0xff

    .line 10
    iput v1, p0, Lmodule/canbus/n;->k:I

    .line 11
    iput v1, p0, Lmodule/canbus/n;->l:I

    .line 12
    new-instance v1, Lmodule/canbus/n$e;

    invoke-direct {v1, p0}, Lmodule/canbus/n$e;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lmodule/canbus/n$f;

    invoke-direct {v1, p0}, Lmodule/canbus/n$f;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->n:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 14
    iput v1, p0, Lmodule/canbus/n;->o:I

    .line 15
    new-instance v1, Lmodule/canbus/n$g;

    invoke-direct {v1, p0}, Lmodule/canbus/n$g;-><init>(Lmodule/canbus/n;)V

    iput-object v1, p0, Lmodule/canbus/n;->p:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lmodule/canbus/n;->q:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x19
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x6
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x43
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x44
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x0
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/n;->k:I

    return p1
.end method

.method public static synthetic B3(Lmodule/canbus/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/n;->r:I

    return p0
.end method

.method public static synthetic C3(Lmodule/canbus/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/n;->r:I

    return p1
.end method

.method public static synthetic D3(Lmodule/canbus/n;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/n;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/n;->r:I

    return v0
.end method

.method public static synthetic E3(Lmodule/canbus/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/n;->N3()V

    return-void
.end method

.method public static synthetic F3(Lmodule/canbus/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/n;->o:I

    return p0
.end method

.method public static synthetic G3(Lmodule/canbus/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/n;->q:I

    return p0
.end method

.method public static synthetic H3(Lmodule/canbus/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/n;->q:I

    return p1
.end method

.method public static synthetic I3(Lmodule/canbus/n;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/n;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/n;->q:I

    return v0
.end method

.method public static synthetic J3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->t:I

    return v0
.end method

.method public static synthetic K3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/n;->t:I

    return p0
.end method

.method public static synthetic L3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/n;->E:[I

    return-object v0
.end method

.method public static M3(IIIIIII)V
    .locals 7

    .line 1
    sget-object v0, Lmodule/canbus/n;->H:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmodule/canbus/n$h;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lmodule/canbus/n$h;->a(IIIIII)V

    :cond_0
    return-void
.end method

.method public static a3()V
    .locals 11

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x5

    aput v4, v1, v2

    .line 1
    invoke-static {v1}, Lmodule/canbus/n;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x4

    if-eq v5, v2, :cond_1

    if-eq v5, v8, :cond_0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    .line 4
    aget v2, v1, v4

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xc0

    sget v5, Lu0/b;->t3:I

    rem-int/lit16 v8, v5, 0xe10

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v2, v8

    aput v2, v1, v4

    .line 5
    rem-int/lit8 v5, v5, 0x3c

    aput v5, v1, v7

    goto :goto_2

    .line 6
    :cond_0
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    .line 7
    aget v2, v1, v4

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xc0

    sget v5, Lo0/e;->r:I

    rem-int/lit8 v8, v5, 0x3c

    add-int/lit16 v8, v8, 0xff

    and-int/2addr v2, v8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    .line 8
    rem-int/lit16 v5, v5, 0xe10

    div-int/lit8 v5, v5, 0x3c

    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v7

    goto :goto_2

    .line 9
    :cond_1
    sget v5, Lw0/d;->j:I

    and-int/lit16 v5, v5, 0xff

    .line 10
    sget v9, Lw0/d;->h:I

    const/4 v10, 0x3

    if-eqz v9, :cond_3

    if-eq v9, v2, :cond_2

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    aput v2, v1, v8

    goto :goto_0

    :pswitch_2
    aput v2, v1, v8

    goto :goto_0

    :pswitch_3
    aput v3, v1, v8

    goto :goto_0

    :cond_2
    aput v8, v1, v8

    goto :goto_0

    :cond_3
    aput v10, v1, v8

    .line 11
    :goto_0
    rem-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    .line 12
    aget v2, v1, v8

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    goto :goto_1

    .line 13
    :cond_4
    aget v5, v1, v8

    shl-int/2addr v2, v10

    add-int/2addr v5, v2

    aput v5, v1, v8

    .line 14
    :goto_1
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    :goto_2
    new-array v2, v6, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 15
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 16
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->z:I

    return v0
.end method

.method public static b3([I)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xe

    .line 3
    aput v0, p0, v4

    goto :goto_0

    .line 4
    :pswitch_0
    aput v2, p0, v4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 5
    aput v0, p0, v4

    goto :goto_0

    .line 6
    :pswitch_2
    aput v1, p0, v4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    .line 7
    aput v0, p0, v4

    goto :goto_0

    .line 8
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_1

    .line 9
    aput v4, p0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    const/16 v0, 0x9

    .line 10
    aput v0, p0, v4

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 11
    aput v2, p0, v4

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    .line 12
    aput v0, p0, v4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    .line 13
    aput v0, p0, v4

    goto :goto_0

    .line 14
    :pswitch_7
    aput v3, p0, v4

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d3(Lmodule/canbus/n;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/n;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lmodule/canbus/n;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/n;->j:F

    return p0
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->s:I

    return v0
.end method

.method public static synthetic g3(Lmodule/canbus/n;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/n;->j:F

    return p1
.end method

.method public static synthetic h3(Lmodule/canbus/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/n;->P3()V

    return-void
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->u:I

    return v0
.end method

.method public static synthetic j3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/n;->u:I

    return p0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->x:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->v:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/n;->v:I

    return p0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->y:I

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->w:I

    return v0
.end method

.method public static synthetic p3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/n;->w:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/n;->O3()V

    return-void
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->A:I

    return v0
.end method

.method public static synthetic s3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/n;->A:I

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/n;->l:I

    return p0
.end method

.method public static synthetic u3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->C:I

    return v0
.end method

.method public static synthetic v3(Lmodule/canbus/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/n;->l:I

    return p1
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->B:I

    return v0
.end method

.method public static synthetic x3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/n;->B:I

    return p0
.end method

.method public static synthetic y3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/n;->D:I

    return v0
.end method

.method public static synthetic z3(Lmodule/canbus/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/n;->k:I

    return p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final N3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/n;->P3()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/n;->O3()V

    return-void
.end method

.method public final declared-synchronized O3()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_1
    sget v2, Lmodule/canbus/n;->t:I

    sget v3, Lmodule/canbus/n;->D:I

    sget v4, Lmodule/canbus/n;->C:I

    sget v5, Lmodule/canbus/n;->z:I

    sget v6, Lmodule/canbus/n;->y:I

    sget v7, Lmodule/canbus/n;->x:I

    invoke-static/range {v1 .. v7}, Lmodule/canbus/n;->M3(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public P2([I)V
    .locals 6

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    sget p1, Lk0/nt;->c:I

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2
    sget-object p1, Lmodule/canbus/n;->F:[I

    sget-object v2, Ly0/f;->c0:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/16 v5, 0x14

    invoke-static {v4, v3, v5}, Lo1/o0;->a(III)I

    move-result v4

    aget v4, p1, v4

    sput v4, Lmodule/canbus/n;->x:I

    .line 3
    aget v1, v2, v1

    invoke-static {v1, v3, v5}, Lo1/o0;->a(III)I

    move-result v1

    aget v1, p1, v1

    sput v1, Lmodule/canbus/n;->y:I

    .line 4
    aget v0, v2, v0

    invoke-static {v0, v3, v5}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/n;->z:I

    :cond_1
    return-void
.end method

.method public final declared-synchronized P3()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/n;->s:I

    sget v1, Lmodule/canbus/n;->t:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lmodule/canbus/n;->s:I

    .line 4
    iput v2, p0, Lmodule/canbus/n;->r:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5
    sput v0, Lmodule/canbus/n;->s:I

    .line 6
    iput v2, p0, Lmodule/canbus/n;->r:I

    goto :goto_0

    .line 7
    :cond_2
    sput v1, Lmodule/canbus/n;->s:I

    :goto_0
    const/4 v1, 0x1

    .line 8
    sget v2, Lmodule/canbus/n;->s:I

    sget v3, Lmodule/canbus/n;->D:I

    sget v4, Lmodule/canbus/n;->C:I

    sget v5, Lmodule/canbus/n;->z:I

    sget v6, Lmodule/canbus/n;->y:I

    sget v7, Lmodule/canbus/n;->x:I

    invoke-static/range {v1 .. v7}, Lmodule/canbus/n;->M3(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lk0/nt;->c:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lmodule/canbus/n;->G:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    div-int/2addr v0, v2

    aget v0, p1, v0

    sput v0, Lmodule/canbus/n;->C:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    div-int/2addr v0, v2

    aget p1, p1, v0

    sput p1, Lmodule/canbus/n;->D:I

    :cond_1
    return-void
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmodule/canbus/n;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget v0, Lk0/nt;->c:I

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/n;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    :cond_1
    sget v0, Lk0/nt;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v3, :cond_5

    const-string v6, "com.syu.canbus"

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v3, v0, Lk0/mt;->e:I

    .line 12
    iput v5, v0, Lk0/mt;->f:I

    .line 13
    iput v5, v0, Lk0/mt;->g:I

    .line 14
    iput v5, v0, Lk0/mt;->b:I

    .line 15
    iput v5, v0, Lk0/mt;->c:I

    .line 16
    iput v5, v0, Lk0/mt;->d:I

    .line 17
    iput v5, v0, Lk0/mt;->o:I

    goto/16 :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 19
    iput v3, v0, Lk0/mt;->e:I

    .line 20
    iput v5, v0, Lk0/mt;->f:I

    .line 21
    iput v3, v0, Lk0/mt;->g:I

    .line 22
    iput v3, v0, Lk0/mt;->b:I

    .line 23
    iput v3, v0, Lk0/mt;->c:I

    .line 24
    iput v3, v0, Lk0/mt;->d:I

    .line 25
    iput v5, v0, Lk0/mt;->o:I

    .line 26
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lmodule/canbus/n;->init()V

    .line 28
    iget-object v0, p0, Lmodule/canbus/n;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 29
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    :cond_3
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 31
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 32
    iput v3, v0, Lk0/mt;->e:I

    .line 33
    iput v5, v0, Lk0/mt;->f:I

    .line 34
    iput v3, v0, Lk0/mt;->g:I

    .line 35
    iput v5, v0, Lk0/mt;->b:I

    .line 36
    iput v5, v0, Lk0/mt;->c:I

    .line 37
    iput v5, v0, Lk0/mt;->d:I

    .line 38
    iput v5, v0, Lk0/mt;->o:I

    .line 39
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 40
    :cond_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 41
    iput v3, v0, Lk0/mt;->e:I

    .line 42
    iput v5, v0, Lk0/mt;->f:I

    .line 43
    iput v5, v0, Lk0/mt;->g:I

    .line 44
    iput v3, v0, Lk0/mt;->b:I

    .line 45
    iput v3, v0, Lk0/mt;->c:I

    .line 46
    iput v3, v0, Lk0/mt;->d:I

    .line 47
    iput v5, v0, Lk0/mt;->o:I

    .line 48
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {p0}, Lmodule/canbus/n;->init()V

    .line 50
    iget-object v0, p0, Lmodule/canbus/n;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 51
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    const/16 v8, 0x7f

    if-eq v2, v8, :cond_7

    const/4 v8, 0x4

    if-eq v2, v8, :cond_6

    const/4 v9, 0x5

    if-eq v2, v9, :cond_5

    const/16 v10, 0x50

    const/16 v11, 0xd

    const/16 v12, 0xf

    const/4 v13, 0x7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/16 v2, 0x3f

    new-array v3, v7, [I

    add-int/lit8 v14, p2, 0x2

    .line 2
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v5

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x40

    new-array v3, v7, [I

    .line 3
    aget-byte v15, v1, v14

    shr-int/2addr v15, v8

    and-int/2addr v15, v5

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    .line 4
    aget-byte v15, v1, v14

    shr-int/2addr v15, v4

    and-int/2addr v15, v5

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v7, [I

    .line 5
    aget-byte v15, v1, v14

    shr-int/2addr v15, v7

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v7, [I

    .line 6
    aget-byte v14, v1, v14

    shr-int/2addr v14, v6

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x44

    new-array v3, v7, [I

    add-int/lit8 v14, p2, 0x3

    .line 7
    aget-byte v15, v1, v14

    shr-int/2addr v15, v13

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x45

    new-array v3, v7, [I

    .line 8
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x46

    new-array v3, v7, [I

    .line 9
    aget-byte v15, v1, v14

    shr-int/2addr v15, v9

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x47

    new-array v3, v7, [I

    .line 10
    aget-byte v15, v1, v14

    shr-int/2addr v15, v8

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v3, v7, [I

    .line 11
    aget-byte v15, v1, v14

    shr-int/2addr v15, v5

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x49

    new-array v3, v7, [I

    .line 12
    aget-byte v15, v1, v14

    shr-int/2addr v15, v4

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v3, v7, [I

    .line 13
    aget-byte v14, v1, v14

    shr-int/2addr v14, v6

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v3, v7, [I

    add-int/lit8 v14, p2, 0x4

    .line 14
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v5

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v7, [I

    .line 15
    aget-byte v15, v1, v14

    shr-int/2addr v15, v9

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    .line 16
    aget-byte v15, v1, v14

    shr-int/2addr v15, v8

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4e

    new-array v3, v7, [I

    .line 17
    aget-byte v15, v1, v14

    shr-int/2addr v15, v4

    and-int/2addr v15, v5

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4f

    new-array v3, v7, [I

    .line 18
    aget-byte v14, v1, v14

    shr-int/2addr v14, v6

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 19
    aget-byte v14, v1, v3

    shr-int/2addr v14, v13

    and-int/2addr v14, v7

    aput v14, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x51

    new-array v10, v7, [I

    .line 20
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v7

    aput v3, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x52

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x6

    .line 21
    aget-byte v14, v1, v10

    shr-int/2addr v14, v13

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x53

    new-array v3, v7, [I

    .line 22
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x54

    new-array v3, v7, [I

    .line 23
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x55

    new-array v3, v7, [I

    .line 24
    aget-byte v14, v1, v10

    shr-int/2addr v14, v5

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x56

    new-array v3, v7, [I

    .line 25
    aget-byte v14, v1, v10

    shr-int/2addr v14, v4

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x57

    new-array v3, v7, [I

    .line 26
    aget-byte v14, v1, v10

    shr-int/2addr v14, v7

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x58

    new-array v3, v7, [I

    .line 27
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x59

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x7

    .line 28
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5a

    new-array v3, v7, [I

    .line 29
    aget-byte v14, v1, v10

    shr-int/2addr v14, v4

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5b

    new-array v3, v7, [I

    .line 30
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5c

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x8

    .line 31
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v12

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5d

    new-array v3, v7, [I

    .line 32
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v12

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5e

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x9

    .line 33
    aget-byte v12, v1, v10

    shr-int/2addr v12, v13

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5f

    new-array v3, v7, [I

    .line 34
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x60

    new-array v3, v7, [I

    .line 35
    aget-byte v12, v1, v10

    shr-int/2addr v12, v9

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x61

    new-array v3, v7, [I

    .line 36
    aget-byte v12, v1, v10

    shr-int/2addr v12, v8

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    .line 37
    aget-byte v12, v1, v10

    shr-int/2addr v12, v5

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    .line 38
    aget-byte v12, v1, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    .line 39
    aget-byte v12, v1, v10

    shr-int/2addr v12, v7

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    .line 40
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0xa

    .line 41
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 42
    aget-byte v12, v1, v10

    shr-int/2addr v12, v9

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 43
    aget-byte v12, v1, v10

    shr-int/2addr v12, v8

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 44
    aget-byte v12, v1, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v5

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 45
    aget-byte v12, v1, v10

    shr-int/2addr v12, v7

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 46
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0xb

    .line 47
    aget-byte v12, v1, v10

    shr-int/lit8 v8, v12, 0x4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 48
    aget-byte v8, v1, v10

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 49
    aget-byte v8, v1, v10

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 50
    aget-byte v8, v1, v10

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 51
    aget-byte v8, v1, v10

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xc

    .line 52
    aget-byte v10, v1, v8

    shr-int/lit8 v9, v10, 0x5

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 53
    aget-byte v9, v1, v8

    shr-int/2addr v9, v5

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 54
    aget-byte v5, v1, v8

    shr-int/lit8 v4, v5, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 55
    aget-byte v4, v1, v8

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 56
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 57
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 58
    aget-byte v10, v1, v3

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v5

    aput v10, v2, v6

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 59
    aget-byte v10, v1, v3

    shr-int/2addr v10, v8

    and-int/2addr v10, v5

    aput v10, v2, v6

    const/16 v10, 0x8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 60
    aget-byte v10, v1, v3

    shr-int/2addr v10, v4

    and-int/2addr v10, v5

    aput v10, v2, v6

    const/16 v10, 0x9

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 61
    aget-byte v10, v1, v3

    shr-int/2addr v10, v7

    and-int/2addr v10, v7

    aput v10, v2, v6

    const/16 v10, 0xa

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 62
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 63
    aget-byte v10, v1, v3

    shr-int/2addr v10, v13

    and-int/2addr v10, v7

    aput v10, v2, v6

    const/16 v10, 0xc

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 64
    aget-byte v10, v1, v3

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v10, v7, [I

    .line 65
    aget-byte v14, v1, v3

    shr-int/2addr v14, v9

    and-int/2addr v14, v7

    aput v14, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 66
    aget-byte v10, v1, v3

    shr-int/2addr v10, v8

    and-int/2addr v10, v7

    aput v10, v2, v6

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v10, v7, [I

    .line 67
    aget-byte v14, v1, v3

    shr-int/2addr v14, v5

    and-int/2addr v14, v7

    aput v14, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v10, v7, [I

    .line 68
    aget-byte v14, v1, v3

    shr-int/2addr v14, v4

    and-int/2addr v14, v7

    aput v14, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v10, v7, [I

    .line 69
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x4

    .line 70
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    .line 71
    aget-byte v14, v1, v10

    shr-int/2addr v14, v9

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    .line 72
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v7, [I

    .line 73
    aget-byte v14, v1, v10

    shr-int/2addr v14, v4

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v7, [I

    .line 74
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x5

    .line 75
    aget-byte v14, v1, v10

    shr-int/2addr v14, v13

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v7, [I

    .line 76
    aget-byte v10, v1, v10

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x6

    .line 77
    aget-byte v14, v1, v10

    shr-int/2addr v14, v13

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v7, [I

    .line 78
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v7, [I

    .line 79
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    .line 80
    aget-byte v14, v1, v10

    shr-int/2addr v14, v5

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 81
    aget-byte v14, v1, v10

    shr-int/2addr v14, v4

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v7, [I

    .line 82
    aget-byte v14, v1, v10

    shr-int/2addr v14, v7

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v7, [I

    .line 83
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x7

    .line 84
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v3, v7, [I

    .line 85
    aget-byte v14, v1, v10

    shr-int/2addr v14, v4

    and-int/2addr v14, v5

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v7, [I

    .line 86
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x8

    .line 87
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v12

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    .line 88
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v12

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x9

    .line 89
    aget-byte v12, v1, v10

    shr-int/2addr v12, v13

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x27

    new-array v3, v7, [I

    .line 90
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v7, [I

    .line 91
    aget-byte v12, v1, v10

    shr-int/2addr v12, v9

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x29

    new-array v3, v7, [I

    .line 92
    aget-byte v12, v1, v10

    shr-int/2addr v12, v8

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v7, [I

    .line 93
    aget-byte v12, v1, v10

    shr-int/2addr v12, v5

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v7, [I

    .line 94
    aget-byte v12, v1, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v7, [I

    .line 95
    aget-byte v12, v1, v10

    shr-int/2addr v12, v7

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v7, [I

    .line 96
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0xa

    .line 97
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v7, [I

    .line 98
    aget-byte v12, v1, v10

    shr-int/2addr v12, v9

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x30

    new-array v3, v7, [I

    .line 99
    aget-byte v12, v1, v10

    shr-int/2addr v12, v8

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v7, [I

    .line 100
    aget-byte v12, v1, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v5

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v7, [I

    .line 101
    aget-byte v12, v1, v10

    shr-int/2addr v12, v7

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x33

    new-array v3, v7, [I

    .line 102
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0xb

    .line 103
    aget-byte v12, v1, v10

    shr-int/lit8 v8, v12, 0x4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v7, [I

    .line 104
    aget-byte v8, v1, v10

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v7, [I

    .line 105
    aget-byte v8, v1, v10

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v7, [I

    .line 106
    aget-byte v8, v1, v10

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v7, [I

    .line 107
    aget-byte v8, v1, v10

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xc

    .line 108
    aget-byte v10, v1, v8

    shr-int/lit8 v9, v10, 0x5

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v3, v7, [I

    .line 109
    aget-byte v9, v1, v8

    shr-int/2addr v9, v5

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3b

    new-array v3, v7, [I

    .line 110
    aget-byte v5, v1, v8

    shr-int/lit8 v4, v5, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3c

    new-array v3, v7, [I

    .line 111
    aget-byte v4, v1, v8

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3d

    new-array v3, v7, [I

    .line 112
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 113
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    .line 115
    :pswitch_3
    sget v2, Lk0/nt;->c:I

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 117
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    if-lt v1, v10, :cond_1

    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, -0x190

    int-to-double v6, v1

    mul-double/2addr v6, v4

    add-double/2addr v6, v2

    double-to-int v1, v6

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    mul-int/2addr v1, v9

    int-to-double v8, v1

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    add-double/2addr v6, v2

    double-to-int v1, v6

    rsub-int v1, v1, 0x3e8

    :goto_0
    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    if-lt v1, v10, :cond_3

    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, -0x190

    goto :goto_1

    :cond_3
    mul-int/2addr v1, v9

    rsub-int v1, v1, 0x190

    rsub-int v1, v1, 0x3e8

    .line 118
    :goto_1
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 120
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 121
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 122
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 123
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 124
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 125
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 126
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 127
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 128
    :cond_5
    sget v2, Lk0/nt;->c:I

    if-ne v2, v5, :cond_e

    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-ne v2, v7, :cond_e

    add-int/lit8 v2, p2, 0x3

    .line 130
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/n;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 131
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/n;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 132
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/n;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 133
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lmodule/canbus/n;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    .line 134
    :cond_6
    sget v2, Lk0/nt;->c:I

    if-ne v2, v5, :cond_e

    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-ne v2, v7, :cond_e

    add-int/lit8 v2, p2, 0x3

    .line 136
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/n;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 137
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/n;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 138
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/n;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 139
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lmodule/canbus/n;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_5

    .line 140
    :cond_7
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    .line 141
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lk0/nt;->c:I

    if-eq v2, v4, :cond_9

    if-ne v2, v5, :cond_e

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 142
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 143
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 144
    iput v2, v0, Lmodule/canbus/n;->c:I

    move v2, v6

    .line 145
    :goto_3
    iget-object v4, v0, Lmodule/canbus/n;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_b

    .line 146
    iget v5, v0, Lmodule/canbus/n;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_a

    if-eqz v5, :cond_b

    .line 147
    iput v2, v0, Lmodule/canbus/n;->b:I

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    and-int/2addr v1, v3

    if-ne v1, v7, :cond_c

    .line 148
    array-length v1, v4

    if-ge v2, v1, :cond_e

    .line 149
    aget-object v1, v4, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_c
    if-nez v1, :cond_e

    .line 150
    iget v1, v0, Lmodule/canbus/n;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_d

    if-eq v1, v3, :cond_d

    .line 151
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 152
    :cond_d
    iput v3, v0, Lmodule/canbus/n;->b:I

    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/n;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lmodule/canbus/n;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lmodule/canbus/n;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/n;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x77

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 8

    const/16 p3, 0xe3

    const/16 p4, 0x39

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne p1, p4, :cond_0

    new-array p1, v2, [I

    aput p3, p1, v5

    aput v3, p1, v4

    aput v6, p1, v6

    .line 1
    aget p2, p2, v5

    aput p2, p1, v1

    aput v5, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 2
    :cond_0
    array-length v7, p2

    if-lt v7, v6, :cond_1

    .line 3
    aget p2, p2, v4

    packed-switch p1, :pswitch_data_0

    move p4, v3

    goto/16 :goto_0

    :pswitch_0
    const/16 p4, 0x61

    goto/16 :goto_0

    :pswitch_1
    const/16 p4, 0x51

    goto/16 :goto_0

    :pswitch_2
    const/16 p4, 0x52

    goto/16 :goto_0

    :pswitch_3
    const/16 p4, 0x53

    goto/16 :goto_0

    :pswitch_4
    const/16 p4, 0x54

    goto/16 :goto_0

    :pswitch_5
    const/16 p4, 0x55

    goto/16 :goto_0

    :pswitch_6
    const/16 p4, 0x41

    goto/16 :goto_0

    :pswitch_7
    const/16 p4, 0x42

    goto/16 :goto_0

    :pswitch_8
    const/16 p4, 0x43

    goto/16 :goto_0

    :pswitch_9
    const/16 p4, 0x44

    goto/16 :goto_0

    :pswitch_a
    const/16 p4, 0x45

    goto/16 :goto_0

    :pswitch_b
    const/16 p4, 0x3a

    goto/16 :goto_0

    :pswitch_c
    const/16 p4, 0x3c

    goto/16 :goto_0

    :pswitch_d
    const/16 p4, 0x3b

    goto/16 :goto_0

    :pswitch_e
    const/16 p4, 0x3d

    goto/16 :goto_0

    :pswitch_f
    const/16 p4, 0x3e

    goto/16 :goto_0

    :pswitch_10
    const/16 p4, 0x31

    goto/16 :goto_0

    :pswitch_11
    const/16 p4, 0x32

    goto/16 :goto_0

    :pswitch_12
    const/16 p4, 0x33

    goto/16 :goto_0

    :pswitch_13
    const/16 p4, 0x34

    goto/16 :goto_0

    :pswitch_14
    const/16 p4, 0x35

    goto/16 :goto_0

    :pswitch_15
    const/16 p4, 0x36

    goto/16 :goto_0

    :pswitch_16
    const/16 p4, 0x37

    goto/16 :goto_0

    :pswitch_17
    const/16 p4, 0x38

    goto/16 :goto_0

    :pswitch_18
    const/16 p4, 0x2c

    goto/16 :goto_0

    :pswitch_19
    const/16 p4, 0x2b

    goto/16 :goto_0

    :pswitch_1a
    const/16 p4, 0x26

    goto/16 :goto_0

    :pswitch_1b
    const/16 p4, 0x27

    goto/16 :goto_0

    :pswitch_1c
    const/16 p4, 0x28

    goto/16 :goto_0

    :pswitch_1d
    const/16 p4, 0x21

    goto/16 :goto_0

    :pswitch_1e
    const/16 p4, 0x22

    goto :goto_0

    :pswitch_1f
    const/16 p4, 0x23

    goto :goto_0

    :pswitch_20
    const/16 p4, 0x24

    goto :goto_0

    :pswitch_21
    const/16 p4, 0x25

    goto :goto_0

    :pswitch_22
    const/16 p4, 0x2a

    goto :goto_0

    :pswitch_23
    const/16 p4, 0x29

    goto :goto_0

    :pswitch_24
    const/16 p4, 0x13

    goto :goto_0

    :pswitch_25
    const/16 p4, 0x12

    goto :goto_0

    :pswitch_26
    const/16 p4, 0xd

    goto :goto_0

    :pswitch_27
    const/16 p4, 0xe

    goto :goto_0

    :pswitch_28
    const/16 p4, 0xf

    goto :goto_0

    :pswitch_29
    const/16 p4, 0x10

    goto :goto_0

    :pswitch_2a
    const/16 p4, 0x11

    goto :goto_0

    :pswitch_2b
    const/4 p4, 0x6

    goto :goto_0

    :pswitch_2c
    const/4 p4, 0x7

    goto :goto_0

    :pswitch_2d
    const/16 p4, 0x8

    goto :goto_0

    :pswitch_2e
    const/16 p4, 0x9

    goto :goto_0

    :pswitch_2f
    const/16 p4, 0xa

    goto :goto_0

    :pswitch_30
    const/16 p4, 0xb

    goto :goto_0

    :pswitch_31
    const/16 p4, 0xc

    goto :goto_0

    :pswitch_32
    move p4, v4

    goto :goto_0

    :pswitch_33
    move p4, v6

    goto :goto_0

    :pswitch_34
    move p4, v1

    goto :goto_0

    :pswitch_35
    move p4, v0

    goto :goto_0

    :pswitch_36
    move p4, v2

    :goto_0
    :pswitch_37
    if-eq p4, v3, :cond_1

    if-eq p2, v3, :cond_1

    new-array p1, v2, [I

    aput p3, p1, v5

    const/16 p3, 0x8a

    aput p3, p1, v4

    aput v6, p1, v6

    aput p4, p1, v1

    aput p2, p1, v0

    .line 4
    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_37
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lmodule/canbus/n;->E:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/n;->t:I

    :cond_1
    return-void
.end method

.method public c3(I)I
    .locals 1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    return p1
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/n;->H:Lo1/f;

    new-instance v1, Lmodule/canbus/n$h;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/n$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
