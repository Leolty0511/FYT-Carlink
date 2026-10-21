.class public Lmodule/canbus/t;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/t$h;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static final F:[I

.field public static final G:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/t$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:B

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Z

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/t;->F:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/t;->G:Lo1/f;

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
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lmodule/canbus/t;->e:I

    const/16 v1, 0x3d

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

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

    const/16 v6, 0xb

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v6, 0xc

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v6, 0xd

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v6, 0xe

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v6, 0xf

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v6, 0x10

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v6, 0x11

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v6, 0x12

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v6, 0x13

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v6, 0x14

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v6, 0x15

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v6, 0x16

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v6, 0x17

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v6, 0x18

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v6, 0x19

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v6, 0x1a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v6, 0x1b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v6, 0x1c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v6, 0x1d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v6, 0x1e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v6, 0x1f

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v6, 0x20

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v6, 0x21

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v6, 0x22

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v6, 0x23

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v6, 0x24

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v6, 0x25

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v6, 0x26

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v6, 0x27

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v6, 0x28

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v6, 0x29

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v6, 0x2a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v6, 0x2b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v6, 0x2c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v6, 0x2d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v6, 0x2e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    const/16 v6, 0x2f

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v6, 0x30

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v6, 0x31

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/16 v6, 0x32

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    const/16 v6, 0x33

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    const/16 v6, 0x34

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    const/16 v6, 0x35

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/16 v6, 0x36

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    const/16 v6, 0x37

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    const/16 v6, 0x38

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    const/16 v6, 0x39

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/16 v6, 0x3a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3b

    const/16 v6, 0x3b

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/t;->f:[[I

    .line 4
    iput v4, p0, Lmodule/canbus/t;->g:I

    .line 5
    iput v4, p0, Lmodule/canbus/t;->h:I

    .line 6
    iput v4, p0, Lmodule/canbus/t;->i:I

    .line 7
    new-instance v1, Lmodule/canbus/t$a;

    invoke-direct {v1, p0}, Lmodule/canbus/t$a;-><init>(Lmodule/canbus/t;)V

    iput-object v1, p0, Lmodule/canbus/t;->j:Ljava/lang/Runnable;

    .line 8
    iput-byte v5, p0, Lmodule/canbus/t;->k:B

    .line 9
    new-instance v1, Lmodule/canbus/t$b;

    invoke-direct {v1, p0}, Lmodule/canbus/t$b;-><init>(Lmodule/canbus/t;)V

    iput-object v1, p0, Lmodule/canbus/t;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lmodule/canbus/t$c;

    invoke-direct {v1, p0}, Lmodule/canbus/t$c;-><init>(Lmodule/canbus/t;)V

    iput-object v1, p0, Lmodule/canbus/t;->m:Ljava/lang/Runnable;

    .line 11
    iput-boolean v4, p0, Lmodule/canbus/t;->n:Z

    .line 12
    iput v4, p0, Lmodule/canbus/t;->o:I

    .line 13
    new-instance v1, Lmodule/canbus/t$d;

    invoke-direct {v1, p0}, Lmodule/canbus/t$d;-><init>(Lmodule/canbus/t;)V

    iput-object v1, p0, Lmodule/canbus/t;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lmodule/canbus/t$e;

    invoke-direct {v1, p0}, Lmodule/canbus/t$e;-><init>(Lmodule/canbus/t;)V

    iput-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    .line 15
    iput v4, p0, Lmodule/canbus/t;->r:I

    .line 16
    iput v4, p0, Lmodule/canbus/t;->s:I

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lmodule/canbus/t;->t:F

    .line 18
    iput v0, p0, Lmodule/canbus/t;->u:I

    .line 19
    iput v0, p0, Lmodule/canbus/t;->v:I

    .line 20
    new-instance v0, Lmodule/canbus/t$f;

    invoke-direct {v0, p0}, Lmodule/canbus/t$f;-><init>(Lmodule/canbus/t;)V

    iput-object v0, p0, Lmodule/canbus/t;->w:Ljava/lang/Runnable;

    const/16 v0, 0xc8

    .line 21
    iput v0, p0, Lmodule/canbus/t;->x:I

    .line 22
    new-instance v0, Lmodule/canbus/t$g;

    invoke-direct {v0, p0}, Lmodule/canbus/t$g;-><init>(Lmodule/canbus/t;)V

    iput-object v0, p0, Lmodule/canbus/t;->y:Ljava/lang/Runnable;

    .line 23
    iput v4, p0, Lmodule/canbus/t;->z:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x6
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x22
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_12
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_16
    .array-data 4
        0x87
        0x15
    .end array-data

    :array_17
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_18
    .array-data 4
        0x96
        0x1d
    .end array-data

    :array_19
    .array-data 4
        0x97
        0x22
    .end array-data

    :array_1a
    .array-data 4
        0x98
        0x23
    .end array-data

    :array_1b
    .array-data 4
        0x99
        0x20
    .end array-data

    :array_1c
    .array-data 4
        0x9a
        0x21
    .end array-data

    :array_1d
    .array-data 4
        0x9b
        0x22
    .end array-data

    :array_1e
    .array-data 4
        0x9c
        0x21
    .end array-data

    :array_1f
    .array-data 4
        0x9d
        0x23
    .end array-data

    :array_20
    .array-data 4
        0x9e
        0x20
    .end array-data

    :array_21
    .array-data 4
        0x9f
        0x35
    .end array-data

    :array_22
    .array-data 4
        0xa0
        0x1
    .end array-data

    :array_23
    .array-data 4
        0xa4
        0x36
    .end array-data

    :array_24
    .array-data 4
        0xa8
        0x12
    .end array-data

    :array_25
    .array-data 4
        0xaa
        0x1d
    .end array-data

    :array_26
    .array-data 4
        0xab
        0x5
    .end array-data

    :array_27
    .array-data 4
        0xac
        0x2
    .end array-data

    :array_28
    .array-data 4
        0xaf
        0x5
    .end array-data

    :array_29
    .array-data 4
        0xb0
        0x12
    .end array-data

    :array_2a
    .array-data 4
        0xb3
        0x18
    .end array-data

    :array_2b
    .array-data 4
        0xb4
        0x12
    .end array-data

    :array_2c
    .array-data 4
        0xb5
        0x1a
    .end array-data

    :array_2d
    .array-data 4
        0xb7
        0x37
    .end array-data

    :array_2e
    .array-data 4
        0xb9
        0x19
    .end array-data

    :array_2f
    .array-data 4
        0xbf
        0x5
    .end array-data

    :array_30
    .array-data 4
        0xc0
        0x19
    .end array-data

    :array_31
    .array-data 4
        0xc1
        0x3f
    .end array-data

    :array_32
    .array-data 4
        0xc2
        0x26
    .end array-data

    :array_33
    .array-data 4
        0xc3
        0xc
    .end array-data

    :array_34
    .array-data 4
        0xc5
        0x7
    .end array-data

    :array_35
    .array-data 4
        0xc6
        0x8
    .end array-data

    :array_36
    .array-data 4
        0xc7
        0x12
    .end array-data

    :array_37
    .array-data 4
        0xc8
        0x1a
    .end array-data

    :array_38
    .array-data 4
        0xc9
        0x15
    .end array-data

    :array_39
    .array-data 4
        0xca
        0x37
    .end array-data

    :array_3a
    .array-data 4
        0xcb
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0xd4
        0x2
    .end array-data

    :array_3c
    .array-data 4
        0xe1
        0x3f
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->z:I

    return p0
.end method

.method public static synthetic B3(Lmodule/canbus/t;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/t;->z:I

    return p1
.end method

.method public static synthetic C3(Lmodule/canbus/t;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/t;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/t;->z:I

    return v0
.end method

.method public static synthetic D3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/t;->E:I

    return v0
.end method

.method public static synthetic E3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/t;->E:I

    return p0
.end method

.method public static synthetic F3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/t;->F:[I

    return-object v0
.end method

.method public static H3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/t;->G:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/t$h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/t$h;->a(I)V

    :cond_0
    return-void
.end method

.method public static b3()V
    .locals 14

    const/16 v0, 0x22

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput v4, v1, v2

    const/16 v3, 0x91

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 2
    sget v3, Lu0/b;->a0:I

    const/4 v5, 0x7

    shl-int/2addr v3, v5

    and-int/lit16 v3, v3, 0x80

    const/4 v6, 0x2

    aput v3, v1, v6

    const/4 v3, 0x3

    .line 3
    invoke-static {}, Lmodule/canbus/t;->c3()I

    move-result v7

    aput v7, v1, v3

    .line 4
    sget v3, Lu0/b;->D:I

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    sget v3, Lw0/d;->h:I

    const/high16 v7, 0x10000

    sub-int v8, v3, v7

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/16 v13, 0xa

    if-eqz v8, :cond_3

    sub-int v8, v3, v7

    if-eq v4, v8, :cond_3

    sub-int/2addr v3, v7

    if-ne v6, v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget v3, Lw0/d;->j:I

    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 7
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 8
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 9
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 10
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 11
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    .line 13
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 14
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 15
    sget v3, Lw0/d;->i:I

    const v4, 0x186a0

    rem-int v4, v3, v4

    div-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 16
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 17
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v13

    const/16 v4, 0xb

    .line 18
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v4

    :goto_2
    const/16 v3, 0x23

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 19
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 20
    :cond_4
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static c3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v1, 0xfe

    goto :goto_1

    :cond_0
    :pswitch_2
    move v1, v2

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_5
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_8
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_9
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v5, v0, v2

    if-nez v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    sub-int v5, v0, v2

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v3

    if-ne v4, v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v3

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v4, :cond_6

    const/16 v1, 0x10

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static d3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xd

    if-eq v0, v6, :cond_7

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :goto_0
    :pswitch_0
    move v1, v6

    goto :goto_2

    :pswitch_1
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_2

    .line 2
    :pswitch_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_4
    move v1, v2

    goto :goto_2

    .line 3
    :pswitch_5
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v6, v0, v2

    if-nez v6, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    sub-int v6, v0, v2

    if-ne v5, v6, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    sub-int v2, v0, v2

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v4

    goto :goto_2

    :pswitch_6
    const/16 v1, 0x9

    goto :goto_2

    :cond_7
    :pswitch_7
    const/16 v1, 0xc

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_8

    const/16 v4, 0x10

    goto :goto_3

    .line 5
    :cond_8
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v4, v1

    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static e3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static g3(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static h3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j3(I)I
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    :cond_0
    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/t;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/t;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic m3(Lmodule/canbus/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->s:I

    return p0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/t;->D:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/t;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/t;->s:I

    return p1
.end method

.method public static synthetic p3(Lmodule/canbus/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/t;->L3()V

    return-void
.end method

.method public static synthetic q3(Lmodule/canbus/t;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->t:F

    return p0
.end method

.method public static synthetic r3(Lmodule/canbus/t;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/t;->t:F

    return p1
.end method

.method public static synthetic s3(Lmodule/canbus/t;F)F
    .locals 1

    .line 1
    iget v0, p0, Lmodule/canbus/t;->t:F

    rem-float/2addr v0, p1

    iput v0, p0, Lmodule/canbus/t;->t:F

    return v0
.end method

.method public static synthetic t3(Lmodule/canbus/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->v:I

    return p0
.end method

.method public static synthetic u3(Lmodule/canbus/t;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/t;->v:I

    return p1
.end method

.method public static synthetic v3(Lmodule/canbus/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->r:I

    return p0
.end method

.method public static synthetic w3(Lmodule/canbus/t;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/t;->r:I

    return p1
.end method

.method public static synthetic x3(Lmodule/canbus/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->u:I

    return p0
.end method

.method public static synthetic y3(Lmodule/canbus/t;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/t;->u:I

    return p1
.end method

.method public static synthetic z3(Lmodule/canbus/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/t;->x:I

    return p0
.end method


# virtual methods
.method public G3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x6c

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final I3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/t;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/lt;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lk0/lt;->R2([I)V

    return-void
.end method

.method public final J3()V
    .locals 3

    const-string v0, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final K3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput v5, v1, v4

    const/16 v6, 0xfd

    aput v6, v1, v5

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v5

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final declared-synchronized L3()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    sget v1, Lmodule/canbus/t;->D:I

    .line 4
    sget v2, Lmodule/canbus/t;->E:I

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-gt v1, v2, :cond_1

    sub-int v0, v2, v1

    if-lt v0, v4, :cond_3

    move v0, v4

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_3

    sub-int/2addr v1, v2

    if-lt v1, v4, :cond_2

    const/16 v0, 0xfb

    goto :goto_0

    :cond_2
    rsub-int v0, v1, 0xff

    add-int/2addr v0, v3

    .line 5
    :cond_3
    :goto_0
    invoke-static {v3, v0}, Lmodule/canbus/t;->H3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_32

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget v4, v1, v2

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Air codeCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "      value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v5, 0x29

    if-eq v4, v5, :cond_30

    const/16 v5, 0x2a

    const/16 v7, 0x10

    if-eq v4, v5, :cond_2e

    const/16 v5, 0x37

    const/16 v9, 0x20

    const/16 v10, 0x3d

    const/16 v11, 0xe3

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-eq v4, v5, :cond_2b

    const/16 v5, 0x38

    if-eq v4, v5, :cond_28

    const/16 v5, 0x43

    if-eq v4, v5, :cond_23

    const/16 v5, 0x44

    const/16 v15, 0xc

    const/16 v6, 0xb

    const/4 v9, 0x7

    if-eq v4, v5, :cond_a

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 4
    :pswitch_0
    aget v1, v1, v8

    if-eqz v1, :cond_32

    new-array v1, v14, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    aget v2, v1, v8

    if-eqz v2, :cond_32

    .line 9
    aget v1, v1, v8

    const/16 v2, 0x4e

    const/16 v3, 0x3a

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_32

    .line 11
    invoke-virtual {v0, v2}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 12
    :cond_1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_32

    .line 13
    invoke-virtual {v0, v2}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 14
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_32

    const/16 v1, 0x15

    .line 15
    invoke-virtual {v0, v1}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 16
    :pswitch_3
    aget v4, v1, v8

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 17
    invoke-virtual {v0, v6}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 18
    :cond_2
    aget v4, v1, v8

    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    .line 19
    invoke-virtual {v0, v15}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    :cond_3
    new-array v4, v14, [I

    aput v11, v4, v2

    aput v3, v4, v8

    aput v10, v4, v3

    const/16 v2, 0x27

    aput v2, v4, v12

    .line 20
    aget v1, v1, v8

    aput v1, v4, v13

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 21
    :pswitch_4
    aget v2, v1, v8

    if-ne v2, v8, :cond_4

    .line 22
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v8, :cond_32

    .line 23
    invoke-virtual {v0, v9}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 24
    :cond_4
    aget v1, v1, v8

    if-nez v1, :cond_32

    .line 25
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_32

    .line 26
    invoke-virtual {v0, v9}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 27
    :pswitch_5
    aget v1, v1, v8

    if-eqz v1, :cond_5

    .line 28
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-nez v1, :cond_32

    const/4 v1, 0x6

    .line 29
    invoke-virtual {v0, v1}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x6

    .line 30
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v7

    if-ne v2, v8, :cond_32

    .line 31
    invoke-virtual {v0, v1}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 32
    :pswitch_6
    aget v1, v1, v8

    const/16 v2, 0x41

    if-eqz v1, :cond_6

    .line 33
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_32

    .line 34
    invoke-virtual {v0, v14}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 35
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_32

    .line 36
    invoke-virtual {v0, v14}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 37
    :pswitch_7
    aget v1, v1, v8

    if-eqz v1, :cond_7

    .line 38
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    if-nez v1, :cond_32

    .line 39
    invoke-virtual {v0, v13}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0xd

    .line 40
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_32

    .line 41
    invoke-virtual {v0, v13}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 42
    :pswitch_8
    aget v1, v1, v8

    if-eqz v1, :cond_8

    .line 43
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v6

    if-nez v1, :cond_32

    .line 44
    invoke-virtual {v0, v3}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 45
    :cond_8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v6

    if-ne v1, v8, :cond_32

    .line 46
    invoke-virtual {v0, v3}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 47
    :pswitch_9
    aget v1, v1, v8

    if-eqz v1, :cond_9

    .line 48
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    if-nez v1, :cond_32

    .line 49
    invoke-virtual {v0, v6}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0xa

    .line 50
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_32

    .line 51
    invoke-virtual {v0, v8}, Lmodule/canbus/t;->k3(I)V

    goto/16 :goto_1

    .line 52
    :cond_a
    sget v2, Lk0/nt;->a:I

    const v4, 0x210140

    const/16 v5, 0x9

    const/16 v7, 0x8

    if-eq v2, v4, :cond_17

    const v4, 0x260140

    if-eq v2, v4, :cond_17

    const v4, 0x2c0140

    if-eq v2, v4, :cond_17

    const v4, 0x2d0140

    if-eq v2, v4, :cond_17

    const v4, 0x2e0140

    if-eq v2, v4, :cond_17

    const v4, 0x2f0140

    if-ne v2, v4, :cond_b

    goto/16 :goto_0

    .line 53
    :cond_b
    aget v2, v1, v8

    if-ne v2, v8, :cond_c

    new-array v1, v9, [I

    .line 54
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 55
    :cond_c
    aget v2, v1, v8

    if-ne v2, v3, :cond_d

    new-array v1, v9, [I

    .line 56
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 57
    :cond_d
    aget v2, v1, v8

    if-ne v2, v12, :cond_e

    new-array v1, v9, [I

    .line 58
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 59
    :cond_e
    aget v2, v1, v8

    if-ne v2, v13, :cond_f

    new-array v1, v9, [I

    .line 60
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 61
    :cond_f
    aget v2, v1, v8

    if-ne v2, v14, :cond_10

    new-array v1, v9, [I

    .line 62
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 63
    :cond_10
    aget v2, v1, v8

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    new-array v1, v9, [I

    .line 64
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 65
    :cond_11
    aget v2, v1, v8

    if-ne v2, v9, :cond_12

    new-array v1, v9, [I

    .line 66
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 67
    :cond_12
    aget v2, v1, v8

    if-ne v2, v7, :cond_13

    new-array v1, v9, [I

    .line 68
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 69
    :cond_13
    aget v2, v1, v8

    if-ne v2, v5, :cond_14

    new-array v1, v9, [I

    .line 70
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 71
    :cond_14
    aget v2, v1, v8

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    new-array v1, v9, [I

    .line 72
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 73
    :cond_15
    aget v2, v1, v8

    if-ne v2, v6, :cond_16

    new-array v1, v9, [I

    .line 74
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 75
    :cond_16
    aget v1, v1, v8

    if-ne v1, v15, :cond_32

    new-array v1, v9, [I

    .line 76
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 77
    :cond_17
    :goto_0
    aget v2, v1, v8

    if-ne v2, v8, :cond_18

    new-array v1, v9, [I

    .line 78
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 79
    :cond_18
    aget v2, v1, v8

    if-ne v2, v3, :cond_19

    new-array v1, v9, [I

    .line 80
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 81
    :cond_19
    aget v2, v1, v8

    if-ne v2, v12, :cond_1a

    new-array v1, v9, [I

    .line 82
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 83
    :cond_1a
    aget v2, v1, v8

    if-ne v2, v13, :cond_1b

    new-array v1, v9, [I

    .line 84
    fill-array-data v1, :array_12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 85
    :cond_1b
    aget v2, v1, v8

    if-ne v2, v14, :cond_1c

    new-array v1, v9, [I

    .line 86
    fill-array-data v1, :array_13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 87
    :cond_1c
    aget v2, v1, v8

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1d

    new-array v1, v9, [I

    .line 88
    fill-array-data v1, :array_14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 89
    :cond_1d
    aget v2, v1, v8

    if-ne v2, v9, :cond_1e

    new-array v1, v9, [I

    .line 90
    fill-array-data v1, :array_15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 91
    :cond_1e
    aget v2, v1, v8

    if-ne v2, v7, :cond_1f

    new-array v1, v9, [I

    .line 92
    fill-array-data v1, :array_16

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 93
    :cond_1f
    aget v2, v1, v8

    if-ne v2, v5, :cond_20

    new-array v1, v9, [I

    .line 94
    fill-array-data v1, :array_17

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 95
    :cond_20
    aget v2, v1, v8

    const/16 v3, 0xa

    if-ne v2, v3, :cond_21

    new-array v1, v9, [I

    .line 96
    fill-array-data v1, :array_18

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 97
    :cond_21
    aget v2, v1, v8

    if-ne v2, v6, :cond_22

    new-array v1, v9, [I

    .line 98
    fill-array-data v1, :array_19

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 99
    fill-array-data v1, :array_1a

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 100
    fill-array-data v1, :array_1b

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 101
    fill-array-data v1, :array_1c

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 102
    fill-array-data v1, :array_1d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 103
    :cond_22
    aget v1, v1, v8

    if-ne v1, v15, :cond_32

    new-array v1, v9, [I

    .line 104
    fill-array-data v1, :array_1e

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 105
    fill-array-data v1, :array_1f

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 106
    fill-array-data v1, :array_20

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 107
    fill-array-data v1, :array_21

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 108
    fill-array-data v1, :array_22

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 109
    :cond_23
    aget v1, v1, v8

    if-eq v1, v3, :cond_27

    if-eq v1, v12, :cond_26

    if-eq v1, v13, :cond_25

    if-eq v1, v14, :cond_24

    goto/16 :goto_1

    :cond_24
    new-array v1, v14, [I

    .line 110
    fill-array-data v1, :array_23

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_25
    new-array v1, v14, [I

    .line 111
    fill-array-data v1, :array_24

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_26
    new-array v1, v14, [I

    .line 112
    fill-array-data v1, :array_25

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_27
    new-array v1, v14, [I

    .line 113
    fill-array-data v1, :array_26

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 114
    :cond_28
    aget v4, v1, v8

    if-gt v4, v7, :cond_29

    new-array v1, v14, [I

    .line 115
    fill-array-data v1, :array_27

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 116
    :cond_29
    aget v4, v1, v8

    if-lt v4, v9, :cond_2a

    new-array v1, v14, [I

    .line 117
    fill-array-data v1, :array_28

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2a
    new-array v4, v14, [I

    aput v11, v4, v2

    aput v3, v4, v8

    aput v10, v4, v3

    const/16 v2, 0x26

    aput v2, v4, v12

    .line 118
    aget v1, v1, v8

    mul-int/2addr v1, v3

    aput v1, v4, v13

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_1

    .line 119
    :cond_2b
    aget v4, v1, v8

    if-gt v4, v7, :cond_2c

    new-array v1, v14, [I

    .line 120
    fill-array-data v1, :array_29

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 121
    :cond_2c
    aget v4, v1, v8

    if-lt v4, v9, :cond_2d

    new-array v1, v14, [I

    .line 122
    fill-array-data v1, :array_2a

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2d
    new-array v4, v14, [I

    aput v11, v4, v2

    aput v3, v4, v8

    aput v10, v4, v3

    const/16 v2, 0x25

    aput v2, v4, v12

    .line 123
    aget v1, v1, v8

    mul-int/2addr v1, v3

    aput v1, v4, v13

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_1

    .line 124
    :cond_2e
    aget v1, v1, v8

    if-eqz v1, :cond_2f

    const/16 v1, 0xf

    .line 125
    invoke-virtual {v0, v1}, Lmodule/canbus/t;->k3(I)V

    goto :goto_1

    .line 126
    :cond_2f
    invoke-virtual {v0, v7}, Lmodule/canbus/t;->k3(I)V

    goto :goto_1

    .line 127
    :cond_30
    aget v1, v1, v8

    if-eqz v1, :cond_31

    const/16 v1, 0xd

    .line 128
    invoke-virtual {v0, v1}, Lmodule/canbus/t;->k3(I)V

    goto :goto_1

    :cond_31
    const/16 v1, 0xe

    .line 129
    invoke-virtual {v0, v1}, Lmodule/canbus/t;->k3(I)V

    :cond_32
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x3d
        0x26
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x3d
        0x27
        0x7
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6d
        0x2
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6d
        0x2
        0x1
        0xff
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6d
        0x3
        0x0
        0xff
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6d
        0x3
        0x1
        0xff
        0xff
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6d
        0x4
        0x0
        0xff
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        0x6d
        0x4
        0x1
        0xff
        0xff
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x4
        0x6d
        0x5
        0x0
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x4
        0x6d
        0x5
        0x1
        0xff
        0xff
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x4
        0x6d
        0x15
        0x0
        0xff
        0xff
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x4
        0x6d
        0x15
        0x1
        0xff
        0xff
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x4
        0x6d
        0x6
        0x0
        0xff
        0xff
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x4
        0x6d
        0x6
        0x1
        0xff
        0xff
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x0
        0xff
        0xff
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x1
        0xff
        0xff
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x0
        0xff
        0xff
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x1
        0xff
        0xff
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x0
        0xff
        0xff
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x1
        0xff
        0xff
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x0
        0xff
        0xff
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x1
        0xff
        0xff
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0xff
        0xff
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x1
        0xff
        0xff
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x0
        0xff
        0xff
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x0
        0xff
        0xff
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x0
        0xff
        0xff
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x0
        0xff
        0xff
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0xff
        0xff
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x1
        0xff
        0xff
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x1
        0xff
        0xff
    .end array-data

    :array_20
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x1
        0xff
        0xff
    .end array-data

    :array_21
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x1
        0xff
        0xff
    .end array-data

    :array_22
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x1
        0xff
        0xff
    .end array-data

    :array_23
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x7
    .end array-data

    :array_24
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x6
    .end array-data

    :array_25
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x5
    .end array-data

    :array_26
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x4
    .end array-data

    :array_27
    .array-data 4
        0xe3
        0x2
        0x3d
        0x26
        0xfe
    .end array-data

    :array_28
    .array-data 4
        0xe3
        0x2
        0x3d
        0x26
        0xff
    .end array-data

    :array_29
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xfe
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->g:I

    const-string v3, "com.syu.canbus"

    .line 6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    .line 8
    iput v2, v0, Lk0/mt;->f:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->b:I

    .line 11
    iput v2, v0, Lk0/mt;->g:I

    .line 12
    iput v1, v0, Lk0/mt;->l:I

    .line 13
    iget-object v0, p0, Lmodule/canbus/t;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 16
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 17
    iput v2, v0, Lk0/mt;->l:I

    const/4 v3, 0x2

    .line 18
    iput v3, v0, Lk0/mt;->h:I

    .line 19
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/t;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/t;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    .line 22
    invoke-virtual {p0}, Lmodule/canbus/t;->init()V

    .line 23
    iget-object v0, p0, Lmodule/canbus/t;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 24
    invoke-virtual {p0}, Lmodule/canbus/t;->I3()V

    goto :goto_0

    .line 25
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 26
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 27
    :pswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->q:I

    .line 28
    iput v2, v0, Lk0/mt;->i:I

    .line 29
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 30
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 31
    :cond_0
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/t;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/t;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 33
    :pswitch_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 34
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, v0, Lk0/mt;->m:[I

    .line 35
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 36
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x44
        0x43
        0x3b
        0x3c
        0x3d
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x70

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_77

    const/16 v3, -0x5a

    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v2, v3, :cond_76

    const/16 v3, -0x18

    const/4 v14, 0x5

    if-eq v2, v3, :cond_6a

    const/16 v3, -0x10

    if-eq v2, v3, :cond_69

    const/16 v3, 0x18

    const/4 v15, 0x7

    if-eq v2, v3, :cond_68

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_67

    const/16 v3, 0x41

    const/16 v12, 0x12

    if-eq v2, v3, :cond_54

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_53

    const/16 v3, 0x11

    const/16 v13, 0xd

    if-eq v2, v3, :cond_3c

    if-eq v2, v12, :cond_3a

    const/16 v3, 0x21

    if-eq v2, v3, :cond_34

    const/16 v3, 0x22

    if-eq v2, v3, :cond_29

    const/16 v3, 0x31

    if-eq v2, v3, :cond_7

    const/16 v3, 0x32

    if-eq v2, v3, :cond_6

    const/16 v3, 0x61

    if-eq v2, v3, :cond_5

    const/16 v3, 0x62

    if-eq v2, v3, :cond_2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_1

    const/16 v3, 0x68

    if-eq v2, v3, :cond_0

    goto/16 :goto_3b

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const/16 v3, 0x96

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 3
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x97

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 4
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x98

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 5
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x82

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 6
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x83

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 7
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x84

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 8
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v6, v8, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 9
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v6, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v6, v7

    .line 10
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 11
    aget-byte v9, v1, v6

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 12
    aget-byte v9, v1, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    .line 13
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v11

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    .line 14
    aget-byte v9, v1, v6

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    .line 15
    aget-byte v9, v1, v6

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    .line 16
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    .line 17
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 18
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v11

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v8, [I

    .line 19
    aget-byte v9, v1, v6

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v8, [I

    .line 20
    aget-byte v6, v1, v6

    shr-int/2addr v6, v5

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x5

    .line 21
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    .line 22
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 23
    aget-byte v9, v1, v6

    shr-int/2addr v9, v10

    and-int/2addr v9, v11

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    .line 24
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 25
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 26
    aget-byte v9, v1, v6

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v8, [I

    .line 27
    aget-byte v9, v1, v6

    shr-int/lit8 v4, v9, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v8, [I

    .line 28
    aget-byte v4, v1, v6

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    .line 29
    aget-byte v4, v1, v6

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v8, [I

    .line 30
    aget-byte v4, v1, v6

    shr-int/2addr v4, v7

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 31
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v15

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v8, [I

    .line 32
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v8, [I

    .line 33
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v8, [I

    .line 34
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v8, [I

    .line 35
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 36
    aget-byte v2, v1, v2

    const/16 v3, 0xb0

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 37
    aget-byte v9, v1, v6

    shr-int/lit8 v4, v9, 0x6

    and-int/2addr v4, v11

    aput v4, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb1

    new-array v4, v8, [I

    .line 38
    aget-byte v5, v1, v6

    shr-int/2addr v5, v14

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb5

    new-array v4, v8, [I

    .line 39
    aget-byte v1, v1, v6

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v15

    aput v4, v3, v7

    .line 40
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v15

    aput v4, v3, v7

    .line 41
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v3, v8, [I

    and-int/2addr v2, v11

    aput v2, v3, v7

    .line 42
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_2
    const/16 v2, 0x9d

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 43
    aget-byte v12, v1, v6

    shr-int/2addr v12, v4

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    .line 44
    aget-byte v12, v1, v6

    shr-int/2addr v12, v5

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    .line 45
    aget-byte v12, v1, v6

    shr-int/2addr v12, v8

    and-int/2addr v12, v15

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 46
    iget v2, v0, Lmodule/canbus/t;->i:I

    aget-byte v3, v1, v6

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    if-eq v2, v3, :cond_4

    .line 47
    aget-byte v2, v1, v6

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    iput v2, v0, Lmodule/canbus/t;->i:I

    if-ne v2, v8, :cond_4

    .line 48
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.havah6.WC_0320_HavalH9SeatSetAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 49
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.syu.canbus"

    const-string v6, "com.syu.carinfo.havah6.WC_0320_HavalH9SeatSetAct"

    .line 50
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.havah6.WC_0320_HavalH9SeatSetAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 56
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    :cond_4
    :goto_0
    const/16 v2, 0xa0

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x5

    .line 57
    aget-byte v12, v1, v6

    shr-int/2addr v12, v4

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    .line 58
    aget-byte v12, v1, v6

    shr-int/2addr v12, v5

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    .line 59
    aget-byte v6, v1, v6

    shr-int/2addr v6, v8

    and-int/2addr v6, v15

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 60
    aget-byte v12, v1, v6

    shr-int/2addr v12, v4

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    .line 61
    aget-byte v12, v1, v6

    shr-int/2addr v12, v5

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v8, [I

    .line 62
    aget-byte v12, v1, v6

    shr-int/2addr v12, v10

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v8, [I

    .line 63
    aget-byte v12, v1, v6

    shr-int/2addr v12, v8

    and-int/2addr v12, v8

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v8, [I

    .line 64
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x7

    .line 65
    aget-byte v12, v1, v6

    shr-int/2addr v12, v15

    and-int/2addr v12, v8

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v8, [I

    .line 66
    aget-byte v12, v1, v6

    shr-int/2addr v12, v14

    and-int/2addr v12, v11

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    .line 67
    aget-byte v12, v1, v6

    shr-int/lit8 v5, v12, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    .line 68
    aget-byte v5, v1, v6

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    .line 69
    aget-byte v5, v1, v6

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 70
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    .line 71
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    .line 72
    aget-byte v1, v1, v5

    shr-int/2addr v1, v14

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_5
    const/16 v2, 0xc2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 73
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v8, [I

    .line 74
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 75
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_6
    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 76
    aget-byte v5, v1, v4

    shl-int/2addr v5, v9

    const v10, 0xff00

    and-int/2addr v5, v10

    add-int/lit8 v10, p2, 0x5

    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    or-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 77
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    aget-byte v5, v1, v10

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 78
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 80
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 81
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 82
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 83
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 84
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 85
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    add-int/lit8 v9, p2, 0x4

    .line 88
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    add-int/lit8 v15, p2, 0x5

    .line 89
    aget-byte v15, v1, v15

    and-int/2addr v15, v6

    add-int/lit8 v16, p2, 0x6

    .line 90
    aget-byte v14, v1, v16

    and-int/2addr v14, v6

    add-int/lit8 v16, p2, 0x7

    .line 91
    aget-byte v12, v1, v16

    and-int/2addr v12, v6

    add-int/lit8 v16, p2, 0x8

    .line 92
    aget-byte v5, v1, v16

    and-int/2addr v5, v6

    add-int/lit8 v17, p2, 0x9

    .line 93
    aget-byte v4, v1, v17

    and-int/2addr v4, v6

    add-int/lit8 v18, p2, 0xa

    .line 94
    aget-byte v10, v1, v18

    and-int/2addr v10, v6

    add-int/lit8 v18, p2, 0xb

    .line 95
    aget-byte v11, v1, v18

    and-int/2addr v11, v6

    add-int/lit8 v18, p2, 0xc

    .line 96
    aget-byte v7, v1, v18

    and-int/2addr v7, v6

    add-int/lit8 v18, p2, 0xd

    .line 97
    aget-byte v13, v1, v18

    and-int/2addr v13, v6

    .line 98
    sget v6, Lk0/nt;->a:I

    const v8, 0x50140

    move/from16 p3, v4

    const/16 v4, 0x1b

    if-eq v6, v8, :cond_19

    const v8, 0x60140

    if-eq v6, v8, :cond_19

    const v8, 0x70140

    if-eq v6, v8, :cond_19

    const v8, 0x180140

    if-eq v6, v8, :cond_19

    const v8, 0x190140

    if-eq v6, v8, :cond_19

    const v8, 0x1a0140

    if-eq v6, v8, :cond_19

    const v8, 0x210140

    if-eq v6, v8, :cond_19

    const v8, 0x260140

    if-eq v6, v8, :cond_19

    const v8, 0x2c0140

    if-eq v6, v8, :cond_19

    const v8, 0x2d0140

    if-eq v6, v8, :cond_19

    const v8, 0x2e0140

    if-eq v6, v8, :cond_19

    const v8, 0x2f0140

    if-ne v6, v8, :cond_8

    goto/16 :goto_a

    :cond_8
    const/16 v6, 0xa

    const/4 v7, 0x1

    new-array v8, v7, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v7

    const/4 v11, 0x0

    aput v10, v8, v11

    .line 99
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v8, v7, [I

    shr-int/lit8 v10, v2, 0x2

    and-int/2addr v10, v7

    aput v10, v8, v11

    .line 100
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v8, v7, [I

    shr-int/2addr v2, v11

    const/4 v10, 0x3

    and-int/2addr v2, v10

    aput v2, v8, v11

    .line 101
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v6, v7, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v7

    aput v8, v6, v11

    .line 102
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v6, v3, 0x3

    and-int/2addr v6, v7

    aput v6, v2, v11

    const/16 v6, 0xd

    .line 103
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x47

    new-array v6, v7, [I

    shr-int/lit8 v8, v3, 0x1

    const/4 v10, 0x3

    and-int/2addr v8, v10

    aput v8, v6, v11

    .line 104
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v6, v7, [I

    shr-int/2addr v3, v11

    and-int/2addr v3, v7

    aput v3, v6, v11

    .line 105
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v7, [I

    shr-int/lit8 v6, v9, 0x7

    and-int/2addr v6, v7

    aput v6, v3, v11

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v7, [I

    shr-int/lit8 v6, v9, 0x6

    and-int/2addr v6, v7

    aput v6, v3, v11

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v6, v9, 0x5

    and-int/2addr v6, v7

    aput v6, v3, v11

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    shr-int/lit8 v6, v9, 0x4

    and-int/2addr v6, v7

    aput v6, v3, v11

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    shr-int/lit8 v6, v9, 0x0

    const/4 v8, 0x3

    and-int/2addr v6, v8

    aput v6, v3, v11

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    const/4 v6, 0x2

    shr-int/lit8 v7, v9, 0x2

    and-int/lit8 v6, v7, 0x3

    aput v6, v3, v11

    .line 111
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 112
    sget v2, Lk0/nt;->a:I

    const v3, 0x210140

    if-eq v2, v3, :cond_b

    const v3, 0x260140

    if-eq v2, v3, :cond_b

    const v3, 0x2c0140

    if-eq v2, v3, :cond_b

    const v3, 0x2d0140

    if-eq v2, v3, :cond_b

    const v3, 0x2e0140

    if-eq v2, v3, :cond_b

    const v3, 0x2f0140

    if-ne v2, v3, :cond_9

    goto :goto_1

    :cond_9
    shr-int/lit8 v2, v15, 0x7

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 113
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 114
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/t;->J3()V

    goto :goto_2

    :cond_a
    const/4 v2, 0x6

    const/4 v6, 0x0

    .line 115
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 116
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v3, 0x1

    shr-int/lit8 v2, v15, 0x0

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 117
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 118
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/t;->J3()V

    goto :goto_2

    :cond_c
    const/4 v2, 0x6

    const/4 v6, 0x0

    .line 119
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 120
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/16 v2, 0x1f

    new-array v7, v3, [I

    shr-int/lit8 v8, v15, 0x0

    const/4 v9, 0x3

    and-int/2addr v8, v9

    aput v8, v7, v6

    .line 121
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v7, v3, [I

    const/4 v8, 0x2

    shr-int/lit8 v10, v15, 0x2

    and-int/2addr v10, v9

    aput v10, v7, v6

    .line 122
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    if-eq v14, v3, :cond_11

    if-eq v14, v8, :cond_10

    if-eq v14, v9, :cond_f

    const/4 v2, 0x4

    if-eq v14, v2, :cond_e

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_4
    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    move v2, v3

    move v7, v2

    goto :goto_5

    :cond_f
    move v7, v3

    const/4 v2, 0x0

    :goto_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_10
    move v6, v3

    move v7, v6

    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    move v6, v3

    const/4 v2, 0x0

    goto :goto_4

    :goto_6
    new-array v8, v3, [I

    const/4 v9, 0x0

    aput v2, v8, v9

    const/16 v2, 0x12

    .line 123
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v3, [I

    aput v6, v8, v9

    .line 124
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v3, [I

    aput v7, v6, v9

    .line 125
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v6, v3, [I

    aput v12, v6, v9

    .line 126
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 127
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 128
    aget-byte v2, v1, v17

    const/16 v3, 0xff

    and-int/lit16 v5, v2, 0xff

    .line 129
    aget-byte v1, v1, v16

    and-int/2addr v1, v3

    goto :goto_7

    :cond_12
    const/16 v3, 0xff

    move/from16 v1, p3

    :goto_7
    and-int/lit16 v2, v5, 0xff

    const/16 v5, 0xfe

    if-ne v2, v5, :cond_13

    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v6, -0x2

    const/4 v7, 0x0

    aput v6, v2, v7

    .line 130
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ne v2, v3, :cond_14

    new-array v2, v5, [I

    const/4 v6, -0x3

    aput v6, v2, v7

    .line 131
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_14
    new-array v6, v5, [I

    const/4 v8, 0x5

    mul-int/2addr v2, v8

    aput v2, v6, v7

    .line 132
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :goto_8
    and-int/2addr v1, v3

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_15

    new-array v1, v5, [I

    const/4 v2, -0x2

    aput v2, v1, v7

    const/16 v2, 0x1c

    .line 133
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_15
    const/16 v2, 0x1c

    if-ne v1, v3, :cond_16

    new-array v1, v5, [I

    const/4 v3, -0x3

    aput v3, v1, v7

    .line 134
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array v3, v5, [I

    const/4 v4, 0x5

    mul-int/2addr v1, v4

    aput v1, v3, v7

    .line 135
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    and-int/lit16 v1, v13, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_17

    .line 136
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_3b

    :cond_17
    if-nez v13, :cond_18

    .line 137
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_3b

    :cond_18
    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 138
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_3b

    :cond_19
    :goto_a
    const/16 v6, 0xa

    const/4 v8, 0x1

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v8

    const/16 v19, 0x0

    aput v15, v13, v19

    .line 139
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x2b

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v8

    aput v15, v13, v19

    .line 140
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x2a

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v8

    aput v15, v13, v19

    .line 141
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    const/4 v13, 0x3

    shr-int/2addr v2, v13

    and-int/2addr v2, v8

    aput v2, v6, v19

    const/16 v2, 0xd

    .line 142
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v6, v8, [I

    shr-int/lit8 v13, v3, 0x6

    and-int/2addr v13, v8

    aput v13, v6, v19

    .line 143
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v6, v8, [I

    shr-int/lit8 v13, v3, 0x4

    and-int/2addr v13, v8

    aput v13, v6, v19

    .line 144
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v6, v8, [I

    shr-int/lit8 v13, v3, 0x2

    and-int/2addr v13, v8

    aput v13, v6, v19

    .line 145
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v6, v8, [I

    shr-int/lit8 v13, v3, 0x0

    and-int/2addr v13, v8

    aput v13, v6, v19

    .line 146
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v6, v8, [I

    shr-int/lit8 v13, v3, 0x3

    and-int/2addr v13, v8

    aput v13, v6, v19

    .line 147
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v6, v8, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v6, v19

    .line 148
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v8, [I

    shr-int/lit8 v6, v9, 0x5

    and-int/2addr v6, v8

    aput v6, v3, v19

    .line 149
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/lit8 v6, v9, 0x4

    and-int/2addr v6, v8

    aput v6, v3, v19

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 151
    sget v2, Lk0/nt;->a:I

    const v3, 0x210140

    if-eq v2, v3, :cond_1b

    const v3, 0x260140

    if-eq v2, v3, :cond_1b

    const v3, 0x2c0140

    if-eq v2, v3, :cond_1b

    const v3, 0x2d0140

    if-eq v2, v3, :cond_1b

    const v3, 0x2e0140

    if-eq v2, v3, :cond_1b

    const v3, 0x2f0140

    if-ne v2, v3, :cond_1a

    goto :goto_b

    :cond_1a
    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v6, v3, [I

    shr-int/lit8 v8, v9, 0x2

    const/4 v13, 0x3

    and-int/2addr v8, v13

    const/4 v15, 0x0

    aput v8, v6, v15

    .line 152
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v6, v3, [I

    shr-int/lit8 v3, v9, 0x0

    and-int/2addr v3, v13

    aput v3, v6, v15

    .line 153
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/4 v15, 0x3

    goto :goto_c

    :cond_1b
    :goto_b
    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v6, v3, [I

    shr-int/lit8 v8, v9, 0x6

    and-int/2addr v8, v3

    const/4 v13, 0x4

    shl-int/2addr v8, v13

    shr-int/lit8 v13, v9, 0x0

    const/4 v15, 0x3

    and-int/2addr v13, v15

    or-int/2addr v8, v13

    const/4 v13, 0x0

    aput v8, v6, v13

    .line 154
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v6, v3, [I

    shr-int/lit8 v8, v9, 0x7

    and-int/2addr v8, v3

    const/4 v3, 0x4

    shl-int/2addr v8, v3

    const/4 v3, 0x2

    shr-int/2addr v9, v3

    and-int/lit8 v3, v9, 0x3

    or-int/2addr v3, v8

    aput v3, v6, v13

    .line 155
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_c
    if-eq v14, v15, :cond_1e

    const/4 v2, 0x5

    if-eq v14, v2, :cond_1d

    const/4 v2, 0x6

    if-eq v14, v2, :cond_1c

    packed-switch v14, :pswitch_data_0

    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x0

    :goto_e
    const/4 v6, 0x1

    const/16 v20, 0x0

    goto :goto_13

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_f

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_10

    :pswitch_2
    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    goto :goto_11

    :pswitch_3
    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x0

    :goto_11
    const/4 v6, 0x1

    const/16 v20, 0x1

    goto :goto_13

    :cond_1c
    const/4 v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 v2, 0x1

    goto :goto_12

    :cond_1e
    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x1

    goto :goto_e

    :goto_13
    new-array v8, v6, [I

    const/4 v9, 0x0

    aput v20, v8, v9

    const/16 v13, 0x12

    .line 156
    invoke-static {v13, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x13

    new-array v13, v6, [I

    aput v2, v13, v9

    .line 157
    invoke-static {v8, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v6, [I

    aput v3, v8, v9

    .line 158
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    aput v12, v3, v9

    .line 159
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 160
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 161
    aget-byte v2, v1, v17

    const/16 v3, 0xff

    and-int/lit16 v5, v2, 0xff

    .line 162
    aget-byte v1, v1, v16

    and-int/2addr v1, v3

    goto :goto_14

    :cond_1f
    const/16 v3, 0xff

    move/from16 v1, p3

    :goto_14
    and-int/lit16 v2, v5, 0xff

    const/16 v5, 0xfe

    if-ne v2, v5, :cond_20

    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v6, -0x2

    const/4 v8, 0x0

    aput v6, v2, v8

    .line 163
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_20
    const/4 v5, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_21

    new-array v2, v5, [I

    const/4 v6, -0x3

    aput v6, v2, v8

    .line 164
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_21
    new-array v6, v5, [I

    const/4 v9, 0x5

    mul-int/2addr v2, v9

    aput v2, v6, v8

    .line 165
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :goto_15
    and-int/2addr v1, v3

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_22

    new-array v1, v5, [I

    const/4 v2, -0x2

    aput v2, v1, v8

    const/16 v2, 0x1c

    .line 166
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_22
    const/16 v2, 0x1c

    if-ne v1, v3, :cond_23

    new-array v1, v5, [I

    const/4 v3, -0x3

    aput v3, v1, v8

    .line 167
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_23
    new-array v3, v5, [I

    const/4 v4, 0x5

    mul-int/2addr v1, v4

    aput v1, v3, v8

    .line 168
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_16
    const/4 v1, 0x2

    if-eq v10, v1, :cond_26

    const/4 v1, 0x3

    if-eq v10, v1, :cond_25

    const/4 v1, 0x4

    if-eq v10, v1, :cond_24

    const/4 v1, 0x0

    :goto_17
    const/4 v2, 0x0

    goto :goto_19

    :cond_24
    const/4 v1, 0x1

    goto :goto_17

    :cond_25
    const/4 v1, 0x1

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    :goto_18
    const/4 v2, 0x1

    :goto_19
    const/16 v3, 0x2e

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    .line 169
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2f

    new-array v3, v4, [I

    aput v2, v3, v6

    .line 170
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2c

    new-array v2, v4, [I

    aput v11, v2, v6

    .line 171
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xfe

    if-ne v7, v1, :cond_27

    const/16 v1, 0x28

    new-array v2, v4, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 172
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_27
    const/16 v1, 0xff

    if-ne v7, v1, :cond_28

    const/16 v1, 0x28

    new-array v2, v4, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 173
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_28
    const/16 v1, 0x28

    new-array v2, v4, [I

    const/4 v3, 0x5

    mul-int/2addr v7, v3

    aput v7, v2, v6

    .line 174
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 175
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 176
    aget-byte v1, v1, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2a

    goto/16 :goto_3b

    .line 177
    :cond_2a
    iget v2, v0, Lmodule/canbus/t;->h:I

    if-eq v1, v2, :cond_7a

    if-le v1, v2, :cond_2c

    const/4 v2, 0x0

    .line 178
    :goto_1a
    iget v3, v0, Lmodule/canbus/t;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_2b

    const/16 v3, 0x1f

    const/4 v4, 0x0

    .line 179
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2b
    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 180
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto :goto_1c

    :cond_2c
    if-ge v1, v2, :cond_2e

    const/4 v2, 0x0

    .line 181
    :goto_1b
    iget v3, v0, Lmodule/canbus/t;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2d

    const/16 v3, 0x1e

    const/4 v4, 0x0

    .line 182
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    const/16 v2, 0x1e

    const/4 v3, 0x1

    .line 183
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 184
    :cond_2e
    :goto_1c
    iput v1, v0, Lmodule/canbus/t;->h:I

    goto/16 :goto_3b

    .line 185
    :cond_2f
    iget v2, v0, Lmodule/canbus/t;->g:I

    if-eq v1, v2, :cond_7a

    if-le v1, v2, :cond_31

    const/4 v2, 0x0

    .line 186
    :goto_1d
    iget v3, v0, Lmodule/canbus/t;->g:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_30

    const/4 v3, 0x0

    .line 187
    invoke-static {v15, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_30
    const/4 v4, 0x1

    .line 188
    invoke-static {v15, v4}, Ll0/b0;->l0(II)V

    goto :goto_1f

    :cond_31
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_33

    move v2, v3

    .line 189
    :goto_1e
    iget v5, v0, Lmodule/canbus/t;->g:I

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_32

    .line 190
    invoke-static {v9, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_1e

    .line 191
    :cond_32
    invoke-static {v9, v4}, Ll0/b0;->l0(II)V

    .line 192
    :cond_33
    :goto_1f
    iput v1, v0, Lmodule/canbus/t;->g:I

    goto/16 :goto_3b

    :cond_34
    add-int/lit8 v2, p2, 0x2

    .line 193
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lmodule/canbus/t;->d:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 194
    aget-byte v1, v1, v2

    const/4 v2, 0x0

    .line 195
    :goto_20
    iget-object v3, v0, Lmodule/canbus/t;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_36

    .line 196
    iget v4, v0, Lmodule/canbus/t;->d:I

    aget-object v5, v3, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v4, v5, :cond_35

    if-eqz v4, :cond_36

    .line 197
    iput v2, v0, Lmodule/canbus/t;->e:I

    goto :goto_21

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_36
    :goto_21
    const/16 v4, 0xff

    and-int/2addr v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_37

    .line 198
    array-length v1, v3

    if-ge v2, v1, :cond_7a

    .line 199
    aget-object v1, v3, v2

    aget v1, v1, v4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_3b

    :cond_37
    if-nez v1, :cond_7a

    .line 200
    iget v1, v0, Lmodule/canbus/t;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_38

    const/16 v2, 0xff

    if-eq v1, v2, :cond_39

    .line 201
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_22

    :cond_38
    const/16 v2, 0xff

    .line 202
    :cond_39
    :goto_22
    iput v2, v0, Lmodule/canbus/t;->e:I

    goto/16 :goto_3b

    :cond_3a
    move v2, v5

    add-int/lit8 v3, p2, 0x4

    .line 203
    aget-byte v1, v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    const/4 v3, 0x0

    .line 204
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v2, 0x1

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 205
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v3

    const/4 v5, 0x2

    .line 206
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_23

    :cond_3b
    const/4 v2, 0x1

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v3

    .line 207
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v2

    aput v5, v4, v3

    const/4 v5, 0x2

    .line 208
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    :goto_23
    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v2

    aput v5, v4, v3

    const/4 v5, 0x3

    .line 209
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v2

    aput v5, v4, v3

    const/4 v5, 0x4

    .line 210
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v2

    aput v5, v4, v3

    const/4 v5, 0x5

    .line 211
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v2, [I

    const/4 v5, 0x2

    shr-int/2addr v1, v5

    and-int/2addr v1, v2

    aput v1, v4, v3

    .line 212
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_3c
    add-int/lit8 v2, p2, 0x4

    .line 213
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 214
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 215
    iput v2, v0, Lmodule/canbus/t;->c:I

    const/4 v2, 0x0

    .line 216
    :goto_24
    iget-object v4, v0, Lmodule/canbus/t;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_3e

    .line 217
    iget v5, v0, Lmodule/canbus/t;->c:I

    aget-object v6, v4, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_3d

    if-eqz v5, :cond_3e

    .line 218
    iput v2, v0, Lmodule/canbus/t;->b:I

    goto :goto_25

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 219
    :cond_3e
    :goto_25
    iget v5, v0, Lmodule/canbus/t;->c:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4d

    const/4 v6, 0x6

    if-eq v5, v6, :cond_44

    const/16 v6, 0x1f

    if-eq v5, v6, :cond_41

    const/16 v5, 0xff

    and-int/2addr v3, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3f

    .line 220
    array-length v3, v4

    if-ge v2, v3, :cond_51

    .line 221
    aget-object v2, v4, v2

    aget v2, v2, v5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_3f
    if-nez v3, :cond_51

    .line 222
    iget v2, v0, Lmodule/canbus/t;->b:I

    array-length v3, v4

    const/16 v6, 0xff

    if-ge v2, v3, :cond_40

    if-eq v2, v6, :cond_40

    .line 223
    aget-object v2, v4, v2

    aget v2, v2, v5

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 224
    :cond_40
    iput v6, v0, Lmodule/canbus/t;->b:I

    goto/16 :goto_2a

    :cond_41
    const/4 v5, 0x1

    const/16 v6, 0xff

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v5, :cond_51

    .line 225
    sget v2, Lk0/nt;->a:I

    const v3, 0x210140

    if-eq v2, v3, :cond_43

    const v3, 0x260140

    if-eq v2, v3, :cond_43

    const v3, 0x2c0140

    if-eq v2, v3, :cond_43

    const v3, 0x2d0140

    if-eq v2, v3, :cond_43

    const v3, 0x2e0140

    if-eq v2, v3, :cond_43

    const v3, 0x2f0140

    if-ne v2, v3, :cond_42

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_26

    :cond_42
    const/16 v2, 0x35

    const/4 v3, 0x0

    .line 226
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    const/4 v4, 0x1

    .line 227
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_43
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v2, 0x12

    .line 228
    :goto_26
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 229
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_44
    const/16 v2, 0xff

    const/4 v4, 0x1

    and-int/2addr v3, v2

    if-ne v3, v4, :cond_51

    .line 230
    sget v2, Lk0/nt;->a:I

    const v3, 0xa0140

    if-eq v2, v3, :cond_4c

    const v3, 0xc0140

    if-eq v2, v3, :cond_4c

    const v3, 0x2a0140

    if-eq v2, v3, :cond_4c

    const v3, 0x2b0140

    if-eq v2, v3, :cond_4c

    const v3, 0x130140

    if-eq v2, v3, :cond_4c

    const v3, 0x140140

    if-eq v2, v3, :cond_4c

    const v3, 0x210140

    if-eq v2, v3, :cond_4c

    const v3, 0x260140

    if-eq v2, v3, :cond_4c

    const v3, 0x2c0140

    if-eq v2, v3, :cond_4c

    const v3, 0x2d0140

    if-eq v2, v3, :cond_4c

    const v3, 0x2e0140

    if-eq v2, v3, :cond_4c

    const v3, 0x2f0140

    if-ne v2, v3, :cond_45

    goto :goto_28

    :cond_45
    const v3, 0x110140

    if-ne v2, v3, :cond_46

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 231
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    const/4 v2, 0x1

    .line 232
    invoke-static {v3, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_46
    const v3, 0x1d0140

    if-eq v2, v3, :cond_4a

    const v3, 0x1e0140

    if-ne v2, v3, :cond_47

    goto :goto_27

    .line 233
    :cond_47
    sget v2, Lh0/c;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_49

    .line 234
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_48

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 235
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    const/4 v4, 0x1

    .line 236
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_48
    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 237
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 238
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_49
    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 239
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 240
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_4a
    :goto_27
    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 241
    sget v5, Lh0/c;->E:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4b

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4b

    .line 242
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 243
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_4b
    const/16 v2, 0x1a

    .line 244
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 245
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_4c
    :goto_28
    const/16 v2, 0x1a

    const/4 v3, 0x0

    .line 246
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    const/4 v4, 0x1

    .line 247
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_2a

    :cond_4d
    const/16 v2, 0xff

    const/4 v4, 0x1

    and-int/2addr v3, v2

    if-ne v3, v4, :cond_51

    .line 248
    sget v2, Lk0/nt;->a:I

    const v3, 0xa0140

    if-eq v2, v3, :cond_50

    const v3, 0xc0140

    if-eq v2, v3, :cond_50

    const v3, 0x2a0140

    if-eq v2, v3, :cond_50

    const v3, 0x2b0140

    if-eq v2, v3, :cond_50

    const v3, 0x130140

    if-eq v2, v3, :cond_50

    const v3, 0x140140

    if-eq v2, v3, :cond_50

    const v3, 0x110140

    if-eq v2, v3, :cond_50

    const v3, 0x210140

    if-eq v2, v3, :cond_50

    const v3, 0x260140

    if-eq v2, v3, :cond_50

    const v3, 0x2c0140

    if-eq v2, v3, :cond_50

    const v3, 0x2d0140

    if-eq v2, v3, :cond_50

    const v3, 0x2e0140

    if-eq v2, v3, :cond_50

    const v3, 0x2f0140

    if-ne v2, v3, :cond_4e

    goto :goto_29

    .line 249
    :cond_4e
    sget v2, Lh0/c;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4f

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 250
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    const/4 v4, 0x1

    .line 251
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_2a

    :cond_4f
    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 252
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 253
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_2a

    :cond_50
    :goto_29
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 254
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    const/4 v3, 0x1

    .line 255
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 256
    :cond_51
    :goto_2a
    sget v2, Lk0/nt;->a:I

    const v3, 0x50140

    if-eq v2, v3, :cond_52

    const v3, 0x60140

    if-eq v2, v3, :cond_52

    const v3, 0x70140

    if-eq v2, v3, :cond_52

    const v3, 0x180140

    if-eq v2, v3, :cond_52

    const v3, 0x190140

    if-eq v2, v3, :cond_52

    const v3, 0x1a0140

    if-eq v2, v3, :cond_52

    const v3, 0x210140

    if-eq v2, v3, :cond_52

    const v3, 0x260140

    if-eq v2, v3, :cond_52

    const v3, 0x2c0140

    if-eq v2, v3, :cond_52

    const v3, 0x2d0140

    if-eq v2, v3, :cond_52

    const v3, 0x2e0140

    if-eq v2, v3, :cond_52

    const v3, 0x2f0140

    if-eq v2, v3, :cond_52

    add-int/lit8 v2, p2, 0x9

    .line 257
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    const/16 v3, 0x157c

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_2b

    :cond_52
    add-int/lit8 v2, p2, 0x9

    .line 258
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    const/16 v3, 0x21c

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Lk0/qt;->i(IIZI)V

    :goto_2b
    const/16 v2, 0x9c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 259
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_53
    move v5, v6

    move v4, v7

    const/16 v2, 0xc4

    const/4 v3, 0x1

    new-array v6, v3, [I

    add-int/lit8 v7, p2, 0x4

    .line 260
    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    aput v7, v6, v4

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v3, [I

    const/4 v6, 0x5

    add-int/lit8 v6, p2, 0x5

    .line 261
    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    aput v1, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3b

    :cond_54
    move v6, v14

    .line 262
    sget v2, Lk0/nt;->c:I

    if-eq v2, v6, :cond_58

    const/4 v3, 0x6

    if-eq v2, v3, :cond_58

    if-eq v2, v15, :cond_58

    const/16 v3, 0x18

    if-eq v2, v3, :cond_58

    const/16 v3, 0x19

    if-eq v2, v3, :cond_58

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_55

    goto/16 :goto_2d

    :cond_55
    const/16 v3, 0x21

    if-eq v2, v3, :cond_57

    const/16 v3, 0x26

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_57

    const/16 v3, 0x30

    if-ne v2, v3, :cond_56

    goto :goto_2c

    :cond_56
    add-int/lit8 v2, p2, 0x2

    .line 263
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 264
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->i3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 265
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->i3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 266
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 267
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 268
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->g3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 269
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->g3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 270
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    goto/16 :goto_2e

    :cond_57
    :goto_2c
    add-int/lit8 v2, p2, 0x2

    .line 271
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 272
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->h3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 273
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->h3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 274
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 275
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 276
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->h3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 277
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->h3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 278
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    goto :goto_2e

    :cond_58
    :goto_2d
    add-int/lit8 v2, p2, 0x2

    .line 279
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 280
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->j3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 281
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->j3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 282
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 283
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 284
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->i3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 285
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->i3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 286
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/t;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    .line 287
    :goto_2e
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_65

    const/16 v3, 0x12

    if-ne v2, v3, :cond_59

    goto/16 :goto_34

    :cond_59
    const/4 v3, 0x5

    if-eq v2, v3, :cond_61

    const/4 v3, 0x6

    if-eq v2, v3, :cond_61

    if-eq v2, v15, :cond_61

    const/16 v3, 0x18

    if-eq v2, v3, :cond_61

    const/16 v3, 0x19

    if-eq v2, v3, :cond_61

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_5a

    goto/16 :goto_32

    :cond_5a
    const/16 v3, 0x21

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x26

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5b

    goto :goto_30

    :cond_5b
    add-int/lit8 v2, p2, 0x6

    .line 288
    aget-byte v2, v1, v2

    if-nez v2, :cond_5d

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, v1, v2

    if-nez v2, :cond_5d

    add-int/lit8 v2, p2, 0x8

    aget-byte v2, v1, v2

    if-nez v2, :cond_5d

    add-int/lit8 v2, p2, 0x9

    aget-byte v1, v1, v2

    if-eqz v1, :cond_5c

    goto :goto_2f

    :cond_5c
    const/4 v1, 0x0

    .line 289
    invoke-static {v1}, Lu0/d;->C2(I)V

    goto/16 :goto_3b

    .line 290
    :cond_5d
    :goto_2f
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_7a

    const/4 v1, 0x1

    .line 291
    invoke-static {v1}, Lu0/d;->C2(I)V

    const/4 v1, 0x4

    .line 292
    sput v1, Ll0/c0;->k:I

    .line 293
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_3b

    :cond_5e
    :goto_30
    add-int/lit8 v2, p2, 0x6

    .line 294
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_60

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_60

    add-int/lit8 v2, p2, 0x8

    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_60

    add-int/lit8 v2, p2, 0x9

    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_5f

    goto :goto_31

    :cond_5f
    const/4 v1, 0x0

    .line 295
    invoke-static {v1}, Lu0/d;->C2(I)V

    goto/16 :goto_3b

    .line 296
    :cond_60
    :goto_31
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_7a

    const/4 v1, 0x1

    .line 297
    invoke-static {v1}, Lu0/d;->C2(I)V

    const/4 v1, 0x4

    .line 298
    sput v1, Ll0/c0;->k:I

    .line 299
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_3b

    :cond_61
    :goto_32
    add-int/lit8 v2, p2, 0x6

    .line 300
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v4, 0x4

    if-le v2, v4, :cond_64

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-le v2, v15, :cond_63

    add-int/lit8 v2, p2, 0x8

    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-le v2, v15, :cond_63

    add-int/lit8 v2, p2, 0x9

    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const/4 v2, 0x4

    if-gt v1, v2, :cond_62

    goto :goto_33

    :cond_62
    const/4 v1, 0x0

    .line 301
    invoke-static {v1}, Lu0/d;->C2(I)V

    goto/16 :goto_3b

    :cond_63
    const/4 v2, 0x4

    goto :goto_33

    :cond_64
    move v2, v4

    .line 302
    :goto_33
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_7a

    const/4 v3, 0x1

    .line 303
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 304
    sput v2, Ll0/c0;->k:I

    .line 305
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_3b

    :cond_65
    :goto_34
    const/4 v3, 0x1

    add-int/lit8 v2, p2, 0xc

    .line 306
    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_66

    .line 307
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto/16 :goto_3b

    :cond_66
    const/4 v2, 0x0

    .line 308
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto/16 :goto_3b

    :cond_67
    move v4, v5

    move v2, v7

    move v3, v8

    add-int/lit8 v4, p2, 0x4

    .line 309
    aget-byte v5, v1, v4

    shr-int/lit8 v2, v5, 0x0

    and-int/2addr v2, v3

    aget-byte v5, v1, v4

    shr-int/2addr v5, v3

    and-int/2addr v5, v3

    aget-byte v1, v1, v4

    const/4 v4, 0x2

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    invoke-static {v2, v5, v1}, Ll0/c0;->c(III)V

    goto/16 :goto_3b

    :cond_68
    move v3, v8

    move v2, v11

    add-int/lit8 v4, p2, 0x3

    .line 310
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v3

    aget-byte v6, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v3

    aget-byte v1, v1, v4

    shr-int/2addr v1, v2

    and-int/2addr v1, v3

    invoke-static {v5, v6, v1}, Ll0/c0;->c(III)V

    goto/16 :goto_3b

    .line 311
    :cond_69
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_6a
    move v3, v10

    move v2, v11

    .line 312
    sget v4, Lk0/nt;->c:I

    if-eq v4, v2, :cond_7a

    if-eqz v4, :cond_7a

    if-ne v4, v3, :cond_6b

    goto/16 :goto_3b

    :cond_6b
    add-int/lit8 v2, p2, 0x4

    .line 313
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 314
    aget-byte v5, v1, v4

    and-int/2addr v5, v3

    .line 315
    sget v3, Lk0/nt;->a:I

    const v6, 0x210140

    if-eq v3, v6, :cond_71

    const v6, 0x260140

    if-eq v3, v6, :cond_71

    const v6, 0x2c0140

    if-eq v3, v6, :cond_71

    const v6, 0x2d0140

    if-eq v3, v6, :cond_71

    const v6, 0x2e0140

    if-eq v3, v6, :cond_71

    const v6, 0x2f0140

    if-ne v3, v6, :cond_6c

    goto :goto_36

    .line 316
    :cond_6c
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 317
    sget v1, Lmodule/canbus/t;->A:I

    if-eq v1, v2, :cond_7a

    .line 318
    sput v2, Lmodule/canbus/t;->A:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_6d

    .line 319
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_3b

    .line 320
    :cond_6d
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_3b

    :cond_6e
    const/4 v1, 0x1

    if-eqz v5, :cond_6f

    .line 321
    invoke-static {v1}, Lk0/qt;->a(I)V

    goto :goto_35

    :cond_6f
    const/4 v1, 0x0

    .line 322
    invoke-static {v1}, Lk0/qt;->a(I)V

    :goto_35
    if-eqz v2, :cond_70

    .line 323
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 324
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_3b

    .line 325
    :cond_70
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 326
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_3b

    .line 327
    :cond_71
    :goto_36
    sget v2, Lmodule/canbus/t;->A:I

    aget-byte v3, v1, v4

    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-eq v2, v3, :cond_7a

    .line 328
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    sput v1, Lmodule/canbus/t;->A:I

    .line 329
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_7a

    .line 330
    sget v1, Lmodule/canbus/t;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_74

    .line 331
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_72

    const/16 v1, 0xc0

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 332
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 333
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0xc8

    .line 334
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 335
    iput-boolean v2, v0, Lmodule/canbus/t;->n:Z

    .line 336
    invoke-static {}, Lo1/u;->z()I

    goto :goto_37

    :cond_72
    const/4 v4, 0x0

    .line 337
    :goto_37
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 338
    sget v1, Ly0/f;->x:I

    if-nez v1, :cond_73

    sget v1, Ly0/f;->c:I

    sget v2, Ly0/f;->R:I

    mul-int/2addr v1, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    goto :goto_38

    :cond_73
    const/4 v1, 0x0

    :goto_38
    float-to-int v1, v1

    .line 339
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lmodule/canbus/t;->o:I

    .line 340
    invoke-static {v1}, Ly0/h;->t0(I)V

    goto/16 :goto_3b

    :cond_74
    if-nez v1, :cond_7a

    .line 341
    iget v1, v0, Lmodule/canbus/t;->o:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 342
    iget-boolean v1, v0, Lmodule/canbus/t;->n:Z

    if-eqz v1, :cond_75

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_75

    const-wide/16 v1, 0x64

    .line 343
    invoke-static {v1, v2}, La/i;->a0(J)V

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 344
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    const/4 v3, 0x1

    .line 345
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    const-wide/16 v4, 0x15e

    .line 346
    invoke-static {v4, v5}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v4, "false"

    .line 347
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc0

    new-array v3, v3, [I

    aput v2, v3, v2

    .line 348
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_39

    :cond_75
    const/4 v2, 0x0

    .line 349
    :goto_39
    iput-boolean v2, v0, Lmodule/canbus/t;->n:Z

    goto/16 :goto_3b

    :cond_76
    const/16 v2, 0x8e

    const/4 v3, 0x1

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x2

    .line 350
    aget-byte v6, v1, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const/4 v8, 0x0

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v3, [I

    add-int/lit8 v6, p2, 0x3

    .line 351
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v3, [I

    add-int/lit8 v6, p2, 0x4

    .line 352
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v3, [I

    add-int/lit8 v6, p2, 0x5

    .line 353
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v3, [I

    add-int/lit8 v6, p2, 0x6

    .line 354
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v3, [I

    add-int/lit8 v6, p2, 0x7

    .line 355
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v3, [I

    add-int/lit8 v6, p2, 0x8

    .line 356
    aget-byte v7, v1, v6

    const/4 v9, 0x2

    shr-int/2addr v7, v9

    const/4 v9, 0x3

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v3, [I

    .line 357
    aget-byte v4, v1, v6

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 358
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 359
    aget-byte v1, v1, v5

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0x26

    .line 360
    invoke-static {v1, v8, v2}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/t;->D:I

    goto :goto_3b

    :cond_77
    move v2, v6

    .line 361
    sget v3, Lmodule/canbus/t;->B:I

    add-int/lit8 v4, p2, 0x3

    aget-byte v5, v1, v4

    and-int/2addr v5, v2

    if-eq v3, v5, :cond_79

    .line 362
    aget-byte v3, v1, v4

    and-int/2addr v3, v2

    sput v3, Lmodule/canbus/t;->B:I

    const/4 v2, 0x1

    if-ne v3, v2, :cond_78

    .line 363
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 364
    invoke-static {}, Lo1/u;->z()I

    goto :goto_3a

    :cond_78
    if-nez v3, :cond_79

    .line 365
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 366
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    const/4 v3, 0x1

    .line 367
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 368
    :cond_79
    :goto_3a
    sget v2, Lmodule/canbus/t;->C:I

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    aget-byte v4, v1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-eq v2, v4, :cond_7a

    .line 369
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    sput v1, Lmodule/canbus/t;->C:I

    .line 370
    invoke-static {v1}, Ly0/h;->t0(I)V

    :cond_7a
    :goto_3b
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/t;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/t;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/t;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lmodule/canbus/t;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xc6

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

    const/16 p3, 0x3eb

    const/16 p4, 0x2c

    const/4 v0, 0x1

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq p1, p3, :cond_0

    const/4 p3, 0x7

    const/4 v7, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array p1, p3, [I

    aput v1, p1, v6

    aput v4, p1, v0

    const/16 p3, 0x5f

    aput p3, p1, v5

    .line 1
    aget p3, p2, v6

    aput p3, p1, v3

    aget p3, p2, v0

    aput p3, p1, v4

    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 2
    :pswitch_1
    sget p1, Lk0/nt;->U:I

    if-ne p1, v0, :cond_5

    .line 3
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v6

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_1

    :pswitch_2
    new-array p1, v7, [I

    aput v1, p1, v6

    aput v3, p1, v0

    const/16 p3, -0x60

    aput p3, p1, v5

    aput v6, p1, v3

    .line 4
    aget p2, p2, v6

    aput p2, p1, v4

    aput v6, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :pswitch_3
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1c

    new-array p1, p1, [I

    aput v1, p1, v6

    const/16 v1, 0x19

    aput v1, p1, v0

    aput p4, p1, v5

    .line 6
    aget p4, p2, v6

    aput p4, p1, v3

    aget p4, p2, v0

    aput p4, p1, v4

    aget p4, p2, v5

    aput p4, p1, v2

    aget p4, p2, v3

    aput p4, p1, v7

    aget p2, p2, v4

    aput p2, p1, p3

    const/16 p2, 0x8

    aput v6, p1, p2

    const/16 p2, 0x9

    aput v6, p1, p2

    const/16 p2, 0xa

    aput v6, p1, p2

    const/16 p2, 0xb

    aput v6, p1, p2

    const/16 p2, 0xc

    aput v6, p1, p2

    const/16 p2, 0xd

    aput v6, p1, p2

    const/16 p2, 0xe

    aput v6, p1, p2

    const/16 p2, 0xf

    aput v6, p1, p2

    const/16 p2, 0x10

    aput v6, p1, p2

    const/16 p2, 0x11

    aput v6, p1, p2

    const/16 p2, 0x12

    aput v6, p1, p2

    const/16 p2, 0x13

    aput v6, p1, p2

    const/16 p2, 0x14

    aput v6, p1, p2

    const/16 p2, 0x15

    aput v6, p1, p2

    const/16 p2, 0x16

    aput v6, p1, p2

    const/16 p2, 0x17

    aput v6, p1, p2

    const/16 p2, 0x18

    aput v6, p1, p2

    aput v6, p1, v1

    const/16 p2, 0x1a

    aput v6, p1, p2

    const/16 p2, 0x1b

    aput v6, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 7
    :pswitch_4
    invoke-static {p2, v5}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v6

    aput v5, p1, v0

    const/16 p3, 0x6c

    aput p3, p1, v5

    .line 8
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 9
    :pswitch_5
    invoke-static {p2, v5}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v6

    aput v5, p1, v0

    const/16 p3, -0x53

    aput p3, p1, v5

    .line 10
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 11
    :pswitch_6
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    aput v1, p1, v6

    aput v4, p1, v0

    const/16 p3, 0x6f

    aput p3, p1, v5

    .line 12
    aget p3, p2, v6

    aput p3, p1, v3

    aget p3, p2, v0

    aput p3, p1, v4

    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 13
    :pswitch_7
    invoke-static {p2, v5}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v6

    aput v5, p1, v0

    const/16 p3, -0x66

    aput p3, p1, v5

    .line 14
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 15
    :pswitch_8
    invoke-static {p2, v5}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    aput v1, p1, v6

    aput v4, p1, v0

    const/16 p3, 0x6d

    aput p3, p1, v5

    .line 16
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v4

    const/16 p2, 0xff

    aput p2, p1, v2

    aput p2, p1, v7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 17
    :pswitch_9
    invoke-static {p2, v5}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v6

    aput v5, p1, v0

    const/16 p3, 0x3d

    aput p3, p1, v5

    .line 18
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 19
    :pswitch_a
    invoke-static {p2, v0}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    aget p1, p2, v6

    invoke-virtual {p0, p3, p1}, Lmodule/canbus/t;->G3(II)V

    goto/16 :goto_1

    .line 21
    :pswitch_b
    invoke-static {p2, v0}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    aget p1, p2, v6

    invoke-virtual {p0, v2, p1}, Lmodule/canbus/t;->G3(II)V

    goto :goto_1

    .line 23
    :pswitch_c
    invoke-static {p2, v0}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    aget p1, p2, v6

    invoke-virtual {p0, v7, p1}, Lmodule/canbus/t;->G3(II)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 25
    array-length p1, p2

    if-lt p1, v0, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v6

    aput v5, p1, v0

    const/4 p3, -0x3

    aput p3, p1, v5

    aput v3, p1, v3

    .line 26
    aget p2, p2, v6

    add-int/2addr p2, v4

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 27
    :cond_1
    sget p1, Lk0/nt;->c:I

    const/16 p2, 0x21

    if-eq p1, p2, :cond_4

    const/16 p2, 0x26

    if-eq p1, p2, :cond_4

    if-eq p1, p4, :cond_4

    const/16 p2, 0x2d

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2e

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_4

    const/16 p2, 0x30

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_5

    .line 29
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 30
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_1

    .line 31
    :cond_3
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_1

    .line 33
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lmodule/canbus/t;->K3(I)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/t;->F:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/t;->E:I

    :cond_0
    return-void
.end method

.method public a3()V
    .locals 17

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lmodule/canbus/t;->d3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->f:I

    if-ne v3, v5, :cond_a

    .line 4
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/16 v12, 0xa

    const/16 v13, 0x30

    if-eq v3, v5, :cond_5

    const/16 v5, 0xb

    const/16 v6, 0x3a

    const/16 v14, 0x3e7

    const/4 v15, 0x5

    const/16 v16, 0x39

    if-eq v3, v10, :cond_3

    if-eq v3, v9, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    sget v3, Lu0/b;->r3:I

    if-gt v3, v14, :cond_2

    .line 6
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 7
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 8
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_1

    :cond_2
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_1
    aput v4, v1, v8

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 10
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 11
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    .line 13
    :cond_3
    sget v3, Lo0/e;->B:I

    if-gt v3, v14, :cond_4

    .line 14
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 15
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 16
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_2

    :cond_4
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_2
    aput v4, v1, v8

    .line 17
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 18
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 19
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 20
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x3

    aput v13, v1, v3

    .line 21
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    rem-int/2addr v3, v11

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aput v3, v1, v10

    .line 22
    sget v3, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v14, v3, v10

    if-eqz v14, :cond_8

    sub-int v14, v3, v10

    if-eq v5, v14, :cond_8

    sub-int/2addr v3, v10

    if-ne v6, v3, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v5, :cond_7

    .line 24
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v11

    .line 25
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 26
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 27
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    :cond_7
    aput v13, v1, v11

    .line 28
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 29
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 30
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    .line 31
    :cond_8
    :goto_3
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_9

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_4

    :cond_9
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_4
    aput v5, v1, v11

    .line 32
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 33
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v7

    .line 34
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v12

    :cond_a
    :goto_5
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_6
    if-ge v2, v0, :cond_b

    add-int/lit8 v4, v2, 0x1

    .line 35
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/t;->G:Lo1/f;

    new-instance v1, Lmodule/canbus/t$h;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmodule/canbus/t$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final k3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput v5, v1, v4

    const/16 v6, 0x3d

    aput v6, v1, v5

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v5

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
