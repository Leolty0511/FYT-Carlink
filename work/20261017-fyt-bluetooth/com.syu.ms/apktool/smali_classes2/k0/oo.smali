.class public Lk0/oo;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/oo$l;
    }
.end annotation


# static fields
.field public static H:I

.field public static I:I

.field public static J:I

.field public static final K:[I

.field public static final L:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lk0/oo$l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:J

.field public G:I

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Lo1/g0;

.field public final j:I

.field public final k:I

.field public l:I

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Ljava/lang/Runnable;

.field public t:I

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/oo;->K:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lk0/oo;->L:Lo1/f;

    return-void

    nop

    :array_0
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/oo;->c:I

    const/16 v1, 0xb

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    iput-object v2, p0, Lk0/oo;->d:[[I

    .line 4
    iput v0, p0, Lk0/oo;->f:I

    const/16 v2, 0x2e

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_b

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    const/16 v4, 0x1b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    const/16 v4, 0x1c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    const/16 v4, 0x1d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    const/16 v4, 0x1e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    const/16 v4, 0x1f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    const/16 v4, 0x20

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    const/16 v6, 0x21

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    const/16 v6, 0x22

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    const/16 v6, 0x23

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    const/16 v6, 0x24

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    const/16 v6, 0x25

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    const/16 v6, 0x26

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    const/16 v6, 0x27

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    const/16 v6, 0x28

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    const/16 v6, 0x29

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_35

    const/16 v6, 0x2a

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    const/16 v6, 0x2b

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    const/16 v6, 0x2c

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    const/16 v6, 0x2d

    aput-object v1, v2, v6

    iput-object v2, p0, Lk0/oo;->g:[[I

    .line 6
    iput v0, p0, Lk0/oo;->h:I

    .line 7
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/oo;->i:Lo1/g0;

    .line 8
    iput v5, p0, Lk0/oo;->j:I

    .line 9
    iput v3, p0, Lk0/oo;->k:I

    .line 10
    iput v0, p0, Lk0/oo;->l:I

    .line 11
    iput v0, p0, Lk0/oo;->m:I

    .line 12
    new-instance v1, Lk0/oo$c;

    invoke-direct {v1, p0}, Lk0/oo$c;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/oo$d;

    invoke-direct {v1, p0}, Lk0/oo$d;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/oo$e;

    invoke-direct {v1, p0}, Lk0/oo$e;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/oo$f;

    invoke-direct {v1, p0}, Lk0/oo$f;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lk0/oo;->r:I

    .line 17
    new-instance v1, Lk0/oo$g;

    invoke-direct {v1, p0}, Lk0/oo$g;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    const/16 v1, 0xc8

    .line 18
    iput v1, p0, Lk0/oo;->t:I

    .line 19
    new-instance v1, Lk0/oo$h;

    invoke-direct {v1, p0}, Lk0/oo$h;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->u:Ljava/lang/Runnable;

    .line 20
    iput v0, p0, Lk0/oo;->v:I

    .line 21
    iput v0, p0, Lk0/oo;->w:I

    .line 22
    new-instance v1, Lk0/oo$i;

    invoke-direct {v1, p0}, Lk0/oo$i;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->x:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Lk0/oo$j;

    invoke-direct {v1, p0}, Lk0/oo$j;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->y:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/oo$k;

    invoke-direct {v1, p0}, Lk0/oo$k;-><init>(Lk0/oo;)V

    iput-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lk0/oo;->A:I

    .line 26
    iput-boolean v0, p0, Lk0/oo;->B:Z

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lk0/oo;->C:Ljava/lang/String;

    .line 28
    new-instance v0, Lk0/oo$a;

    invoke-direct {v0, p0}, Lk0/oo$a;-><init>(Lk0/oo;)V

    iput-object v0, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lk0/oo$b;

    invoke-direct {v0, p0}, Lk0/oo$b;-><init>(Lk0/oo;)V

    iput-object v0, p0, Lk0/oo;->E:Ljava/lang/Runnable;

    const-wide/16 v2, -0x1

    .line 30
    iput-wide v2, p0, Lk0/oo;->F:J

    .line 31
    iput v1, p0, Lk0/oo;->G:I

    return-void

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x17
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x18
        0xd
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x1e
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x10
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x9
        0x15
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x36
    .end array-data

    :array_15
    .array-data 4
        0xb
        0x35
    .end array-data

    :array_16
    .array-data 4
        0xc
        0x42
    .end array-data

    :array_17
    .array-data 4
        0xd
        0x41
    .end array-data

    :array_18
    .array-data 4
        0xe
        0x40
    .end array-data

    :array_19
    .array-data 4
        0xf
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x10
        0x19
    .end array-data

    :array_1b
    .array-data 4
        0x11
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x12
        0x22
    .end array-data

    :array_1d
    .array-data 4
        0x13
        0x23
    .end array-data

    :array_1e
    .array-data 4
        0x14
        0x20
    .end array-data

    :array_1f
    .array-data 4
        0x15
        0x21
    .end array-data

    :array_20
    .array-data 4
        0x1a
        0x12
    .end array-data

    :array_21
    .array-data 4
        0x1b
        0x2
    .end array-data

    :array_22
    .array-data 4
        0x1c
        0x11
    .end array-data

    :array_23
    .array-data 4
        0x1d
        0x26
    .end array-data

    :array_24
    .array-data 4
        0x31
        0x28
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x29
    .end array-data

    :array_26
    .array-data 4
        0x33
        0x2a
    .end array-data

    :array_27
    .array-data 4
        0x34
        0x2b
    .end array-data

    :array_28
    .array-data 4
        0x35
        0x2c
    .end array-data

    :array_29
    .array-data 4
        0x36
        0x2d
    .end array-data

    :array_2a
    .array-data 4
        0x3f
        0xd
    .end array-data

    :array_2b
    .array-data 4
        0x42
        0x48
    .end array-data

    :array_2c
    .array-data 4
        0x43
        0x47
    .end array-data

    :array_2d
    .array-data 4
        0x44
        0x1f
    .end array-data

    :array_2e
    .array-data 4
        0x45
        0x1e
    .end array-data

    :array_2f
    .array-data 4
        0x46
        0x3e
    .end array-data

    :array_30
    .array-data 4
        0x48
        0x37
    .end array-data

    :array_31
    .array-data 4
        0x49
        0x3a
    .end array-data

    :array_32
    .array-data 4
        0x4a
        0x3a
    .end array-data

    :array_33
    .array-data 4
        0x4b
        0x1
    .end array-data

    :array_34
    .array-data 4
        0x4c
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x4d
        0x5
    .end array-data

    :array_36
    .array-data 4
        0x4e
        0x4
    .end array-data

    :array_37
    .array-data 4
        0x4f
        0x3
    .end array-data

    :array_38
    .array-data 4
        0x50
        0x40
    .end array-data
.end method

.method public static synthetic A3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/oo;->J:I

    return p0
.end method

.method public static synthetic B3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/oo;->K:[I

    return-object v0
.end method

.method public static synthetic C3()I
    .locals 1

    .line 1
    sget v0, Lk0/oo;->I:I

    return v0
.end method

.method public static synthetic D3(Lk0/oo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/oo;->H3()V

    return-void
.end method

.method public static E3(II)V
    .locals 1

    .line 1
    sget-object v0, Lk0/oo;->L:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/oo$l;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lk0/oo$l;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic d3(Lk0/oo;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/oo;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/oo;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/oo;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/oo;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/oo;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/oo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/oo;->G3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/oo;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/oo;->F3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic i3(Lk0/oo;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/oo;->A:I

    return p0
.end method

.method public static synthetic j3(Lk0/oo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/oo;->A:I

    return p1
.end method

.method public static synthetic k3(Lk0/oo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/oo;->C:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l3(Lk0/oo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oo;->C:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m3(Lk0/oo;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/oo;->I3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic n3(Lk0/oo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/oo;->B:Z

    return p0
.end method

.method public static synthetic o3(Lk0/oo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/oo;->B:Z

    return p1
.end method

.method public static synthetic p3(Lk0/oo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/oo;->F:J

    return-wide v0
.end method

.method public static synthetic q3(Lk0/oo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/oo;->F:J

    return-wide p1
.end method

.method public static synthetic r3(Lk0/oo;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/oo;->G:I

    return p0
.end method

.method public static synthetic s3(Lk0/oo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/oo;->G:I

    return p1
.end method

.method public static synthetic t3(Lk0/oo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/oo;->a3()V

    return-void
.end method

.method public static synthetic u3(Lk0/oo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/oo;->c3()V

    return-void
.end method

.method public static synthetic v3(Lk0/oo;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/oo;->t:I

    return p0
.end method

.method public static synthetic w3(Lk0/oo;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/oo;->v:I

    return p0
.end method

.method public static synthetic x3(Lk0/oo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/oo;->v:I

    return p1
.end method

.method public static synthetic y3(Lk0/oo;)I
    .locals 2

    .line 1
    iget v0, p0, Lk0/oo;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk0/oo;->v:I

    return v0
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lk0/oo;->J:I

    return v0
.end method


# virtual methods
.method public final F3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    shl-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    add-int/2addr v7, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p2, v1, 0xff

    const/4 v0, 0x4

    add-int/2addr p2, v0

    .line 6
    new-array p2, p2, [I

    const/16 v4, -0x1d

    .line 7
    aput v4, p2, v3

    .line 8
    aput p1, p2, v5

    const/4 p1, 0x2

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    .line 9
    aput v4, p2, p1

    const/4 p1, 0x3

    const/16 v4, 0x11

    .line 10
    aput v4, p2, p1

    :goto_1
    if-ge v3, v1, :cond_2

    add-int p1, v0, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final G3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/oo;->H:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x97

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/oo;->i:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/oo;->H:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/oo;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized H3()V
    .locals 4

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

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget v1, Lk0/oo;->I:I

    .line 3
    sget v2, Lk0/oo;->J:I

    const/16 v3, 0x21

    if-ge v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    const/16 v0, 0x31

    .line 4
    :cond_2
    :goto_0
    invoke-static {v3, v0}, Lk0/oo;->E3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    int-to-byte v6, p1

    .line 6
    aput v6, v1, v3

    const/4 v3, 0x4

    .line 7
    aput v5, v1, v3

    if-ne p1, v5, :cond_1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x9e01c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/oo;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/oo;->x:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/oo;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->h:I

    .line 11
    sget v3, Lk0/nt;->a:I

    const/4 v4, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 12
    :sswitch_0
    iput v2, v0, Lk0/mt;->b:I

    .line 13
    iput v4, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 14
    :sswitch_1
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 15
    :sswitch_2
    iput v4, v0, Lk0/mt;->h:I

    .line 16
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    .line 17
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 19
    :goto_1
    sget v0, Lk0/nt;->a:I

    const v1, 0x1c01c4

    if-eq v0, v1, :cond_2

    const v1, 0x3e01c4

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    iget-object v0, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 28
    :cond_2
    iget-object v0, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 29
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 33
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1c01c4 -> :sswitch_2
        0x1f01c4 -> :sswitch_2
        0x3e01c4 -> :sswitch_2
        0x4d01c4 -> :sswitch_1
        0x4e01c4 -> :sswitch_1
        0x9e01c7 -> :sswitch_0
        0xb101c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6d

    const/16 v4, 0xa

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_28

    const/16 v3, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x6

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-eq v2, v3, :cond_19

    const/16 v15, 0x30

    if-eq v2, v15, :cond_18

    const/16 v15, 0x7a

    const/4 v8, 0x4

    if-eq v2, v15, :cond_17

    const/16 v15, 0x28

    const v16, 0xff00

    if-eq v2, v15, :cond_16

    const/16 v15, 0x29

    if-eq v2, v15, :cond_15

    const/16 v15, 0x7f

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_10

    :pswitch_0
    const/16 v2, 0xad

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v7, [I

    .line 3
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_1
    const/16 v2, 0x3f5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 4
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_2
    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 5
    aget-byte v9, v1, v4

    shr-int/2addr v9, v12

    and-int/2addr v9, v14

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 6
    aget-byte v9, v1, v4

    shr-int/2addr v9, v8

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 7
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 8
    aget-byte v3, v1, v4

    shr-int/2addr v3, v13

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 9
    aget-byte v3, v1, v4

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0x80

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 10
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 14
    aget-byte v9, v1, v4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 15
    aget-byte v9, v1, v4

    shr-int/2addr v9, v12

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    .line 16
    aget-byte v9, v1, v4

    shr-int/lit8 v8, v9, 0x4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 17
    aget-byte v8, v1, v4

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    .line 18
    aget-byte v8, v1, v4

    shr-int/2addr v8, v13

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 19
    aget-byte v8, v1, v4

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 20
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 21
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_3
    const/16 v2, 0x98

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 22
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 23
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 24
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 25
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 26
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 27
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 28
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 29
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 30
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    .line 31
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v14

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 32
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v14

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 33
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v14

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 34
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v14

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 35
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 36
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    .line 37
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    .line 38
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    .line 39
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 40
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    .line 41
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    .line 42
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v7, [I

    .line 43
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    .line 44
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 45
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v14

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v7, [I

    .line 46
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v7, [I

    .line 47
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_4
    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 48
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int v4, v4, v16

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 49
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_5
    const/16 v2, 0x69

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 50
    aget-byte v8, v1, v8

    shl-int/2addr v8, v9

    and-int v8, v8, v16

    add-int/lit8 v11, p2, 0x2

    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    or-int/2addr v8, v11

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 51
    aget-byte v8, v1, v8

    shl-int/2addr v8, v9

    and-int v8, v8, v16

    add-int/lit8 v11, p2, 0x4

    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    or-int/2addr v8, v11

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v7, [I

    add-int/lit8 v7, p2, 0x8

    .line 52
    aget-byte v7, v1, v7

    shl-int/lit8 v3, v7, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v3, v7

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    shl-int/2addr v7, v9

    and-int v7, v7, v16

    or-int/2addr v3, v7

    add-int/lit8 v7, p2, 0x6

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_6
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 53
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int v4, v4, v16

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 54
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int v4, v4, v16

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 55
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int v4, v4, v16

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 56
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int v4, v4, v16

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 61
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 62
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 63
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 64
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 65
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 66
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 67
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 68
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 69
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v7, [I

    .line 70
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 71
    sget v2, Lk0/oo;->H:I

    if-ne v2, v7, :cond_2a

    .line 72
    iget v2, v0, Lk0/oo;->l:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    if-eq v2, v3, :cond_2a

    .line 73
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    iput v1, v0, Lk0/oo;->l:I

    if-ne v1, v7, :cond_1

    .line 74
    invoke-static {v7}, Lk0/qt;->a(I)V

    const/16 v1, 0x14

    .line 75
    iput v1, v0, Lk0/oo;->m:I

    .line 76
    iget-object v1, v0, Lk0/oo;->n:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    .line 77
    :cond_1
    iget v1, v0, Lk0/oo;->m:I

    if-lez v1, :cond_2

    .line 78
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lk0/oo;->o:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 79
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lk0/oo;->o:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    invoke-static {v1, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto/16 :goto_10

    .line 80
    :cond_2
    invoke-static {v6}, Lk0/qt;->a(I)V

    .line 81
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lk0/oo;->p:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 82
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lk0/oo;->p:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 83
    iget-object v1, v0, Lk0/oo;->n:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 85
    aget-byte v9, v1, v4

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x4

    .line 86
    aget-byte v11, v1, v10

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x5

    .line 87
    aget-byte v13, v1, v12

    and-int/2addr v13, v5

    if-nez v3, :cond_3

    if-nez v9, :cond_3

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    .line 88
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 89
    :cond_3
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_4

    sget v6, Ll0/c0;->h:I

    if-ne v6, v9, :cond_4

    sget v6, Ll0/c0;->i:I

    if-ne v6, v11, :cond_4

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_5

    .line 90
    :cond_4
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_5

    .line 91
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 92
    sput v8, Ll0/c0;->k:I

    .line 93
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 94
    :cond_5
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 95
    sput v9, Ll0/c0;->h:I

    .line 96
    sput v11, Ll0/c0;->i:I

    .line 97
    sput v13, Ll0/c0;->j:I

    .line 98
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 99
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 100
    aget-byte v2, v1, v10

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 101
    aget-byte v1, v1, v12

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 105
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_10

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v9, v1, v2

    new-array v15, v7, [I

    shr-int/lit8 v16, v9, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 107
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    const/16 v15, 0xb

    new-array v4, v7, [I

    shr-int/lit8 v16, v9, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v6

    .line 108
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v15, v7, [I

    shr-int/lit8 v16, v9, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 109
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v15, v9, 0x4

    and-int/2addr v15, v7

    aput v15, v4, v6

    .line 110
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v4, v7, [I

    shr-int/lit8 v15, v9, 0x3

    and-int/2addr v15, v7

    aput v15, v4, v6

    .line 111
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v4, v7, [I

    shr-int/lit8 v15, v9, 0x2

    and-int/2addr v15, v7

    aput v15, v4, v6

    .line 112
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/16 v4, 0xf

    .line 113
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x24

    new-array v15, v7, [I

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v15, v6

    .line 114
    invoke-static {v3, v15}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x3

    .line 115
    aget-byte v9, v1, v3

    new-array v15, v7, [I

    shr-int/lit8 v16, v9, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    const/16 v8, 0x12

    .line 116
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    const/16 v15, 0x13

    new-array v8, v7, [I

    shr-int/lit8 v18, v9, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v8, v6

    .line 117
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x14

    new-array v15, v7, [I

    shr-int/lit8 v18, v9, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v15, v6

    .line 118
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x15

    new-array v15, v7, [I

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    aput v9, v15, v6

    .line 119
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    new-array v9, v12, [I

    add-int/lit8 v15, p2, 0x4

    .line 120
    aget-byte v8, v1, v15

    and-int/2addr v8, v5

    aput v8, v9, v6

    add-int/lit8 v8, p2, 0x5

    aget-byte v10, v1, v8

    and-int/2addr v10, v5

    aput v10, v9, v7

    aget-byte v10, v1, v3

    shr-int/2addr v10, v12

    and-int/2addr v10, v11

    aput v10, v9, v13

    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v4

    aput v3, v9, v14

    aget-byte v2, v1, v2

    const/4 v3, 0x6

    shr-int/2addr v2, v3

    and-int/2addr v2, v7

    const/4 v3, 0x4

    aput v2, v9, v3

    const-string v2, ""

    const/16 v3, 0x414

    invoke-static {v3, v9, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    .line 121
    aget-byte v2, v1, v15

    and-int/2addr v2, v5

    .line 122
    aget-byte v3, v1, v8

    and-int/2addr v3, v5

    const-string v9, "persist.fyt.reversetemp"

    .line 123
    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 124
    aget-byte v2, v1, v8

    and-int/2addr v2, v5

    .line 125
    aget-byte v3, v1, v15

    and-int/2addr v3, v5

    :cond_6
    const/4 v8, -0x2

    const/16 v9, 0x1b

    if-eqz v2, :cond_8

    const/16 v10, 0x7f

    if-eq v2, v10, :cond_7

    new-array v10, v7, [I

    aput v2, v10, v6

    .line 126
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v7, [I

    const/4 v10, -0x3

    aput v10, v2, v6

    .line 127
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v7, [I

    aput v8, v2, v6

    .line 128
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eqz v3, :cond_a

    const/16 v2, 0x7f

    if-eq v3, v2, :cond_9

    const/16 v2, 0x1c

    new-array v9, v7, [I

    aput v3, v9, v6

    .line 129
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    const/16 v2, 0x1c

    new-array v3, v7, [I

    const/4 v9, -0x3

    aput v9, v3, v6

    .line 130
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    const/16 v2, 0x1c

    new-array v3, v7, [I

    aput v8, v3, v6

    .line 131
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x35

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x6

    .line 132
    aget-byte v10, v1, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v3, v7, [I

    .line 133
    aget-byte v10, v1, v9

    shr-int/2addr v10, v14

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v7, [I

    .line 134
    aget-byte v10, v1, v9

    const/4 v15, 0x4

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    .line 135
    aget-byte v10, v1, v9

    const/4 v15, 0x6

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v7, [I

    .line 136
    aget-byte v10, v1, v9

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v7, [I

    .line 137
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v7, [I

    .line 138
    aget-byte v10, v1, v9

    shr-int/2addr v10, v7

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v7, [I

    .line 139
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x8

    .line 140
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v11

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x9

    .line 141
    aget-byte v15, v1, v10

    const/16 v17, 0x4

    shr-int/lit8 v15, v15, 0x4

    and-int/2addr v15, v4

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 142
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 143
    aget-byte v10, v1, v4

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v7, [I

    .line 144
    aget-byte v10, v1, v4

    const/4 v15, 0x6

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v7, [I

    .line 145
    aget-byte v10, v1, v4

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v7, [I

    .line 146
    aget-byte v10, v1, v4

    const/4 v12, 0x4

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 147
    aget-byte v3, v1, v4

    shr-int/2addr v3, v13

    and-int/2addr v3, v14

    aput v3, v2, v6

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v10, v7, [I

    .line 148
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v14

    aput v4, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    .line 149
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    if-nez v2, :cond_b

    new-array v2, v7, [I

    aput v8, v2, v6

    const/16 v4, 0x28

    .line 150
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    const/16 v4, 0x28

    .line 151
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_c

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 152
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v2, v7, [I

    .line 153
    aget-byte v8, v1, v9

    and-int/2addr v3, v8

    aput v3, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x7

    .line 154
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_d

    .line 155
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_10

    :cond_d
    const-string v2, "persist.fyt.temperature"

    .line 156
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_f

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_e

    rsub-int v1, v1, 0x100

    const/16 v2, 0x12

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x528

    goto :goto_5

    :cond_e
    const/16 v2, 0x12

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x528

    :goto_5
    const/16 v2, 0xa

    .line 157
    div-int/2addr v1, v2

    mul-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_f
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_10

    rsub-int v1, v1, 0x100

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_6

    :cond_10
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 158
    :goto_6
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_10

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 160
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 161
    iput v2, v0, Lk0/oo;->c:I

    move v2, v6

    .line 162
    :goto_7
    iget-object v3, v0, Lk0/oo;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 163
    iget v4, v0, Lk0/oo;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_11

    if-eqz v4, :cond_12

    .line 164
    iput v2, v0, Lk0/oo;->b:I

    goto :goto_8

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_13

    .line 165
    array-length v1, v3

    if-ge v2, v1, :cond_2a

    .line 166
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_13
    if-nez v1, :cond_2a

    .line 167
    iget v1, v0, Lk0/oo;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_14

    if-eq v1, v5, :cond_14

    .line 168
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 169
    :cond_14
    iput v5, v0, Lk0/oo;->b:I

    goto/16 :goto_10

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 170
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_10

    :cond_16
    const/16 v2, 0x408

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 171
    aget-byte v8, v1, v4

    shl-int/2addr v8, v9

    and-int v8, v8, v16

    add-int/lit8 v10, p2, 0x3

    aget-byte v11, v1, v10

    and-int/2addr v11, v5

    or-int/2addr v8, v11

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 172
    aget-byte v11, v1, v8

    and-int/2addr v11, v5

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v7, [I

    .line 173
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v7, [I

    .line 174
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int v4, v4, v16

    aget-byte v1, v1, v10

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_17
    const/16 v2, 0xa6

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 175
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v7, [I

    .line 176
    aget-byte v5, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v7, [I

    .line 177
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 178
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v7, [I

    .line 179
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v7, [I

    .line 180
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v7, [I

    .line 181
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 182
    :cond_18
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 183
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 184
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 185
    iput v2, v0, Lk0/oo;->f:I

    move v2, v6

    .line 186
    :goto_9
    iget-object v3, v0, Lk0/oo;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 187
    iget v4, v0, Lk0/oo;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_1a

    if-eqz v4, :cond_1b

    .line 188
    iput v2, v0, Lk0/oo;->e:I

    goto :goto_a

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 189
    :cond_1b
    :goto_a
    iget v4, v0, Lk0/oo;->f:I

    if-eq v4, v7, :cond_26

    if-eq v4, v13, :cond_24

    if-eq v4, v12, :cond_22

    const/4 v8, 0x6

    if-eq v4, v8, :cond_20

    const/16 v8, 0xf1

    if-eq v4, v8, :cond_1e

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_1c

    .line 190
    array-length v1, v3

    if-ge v2, v1, :cond_2a

    .line 191
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1c
    if-nez v1, :cond_2a

    .line 192
    iget v1, v0, Lk0/oo;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_1d

    if-eq v1, v5, :cond_1d

    .line 193
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 194
    :cond_1d
    iput v5, v0, Lk0/oo;->e:I

    goto/16 :goto_10

    :cond_1e
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_2a

    .line 195
    iget v1, v0, Lk0/oo;->h:I

    add-int/2addr v1, v7

    iput v1, v0, Lk0/oo;->h:I

    if-le v1, v7, :cond_1f

    .line 196
    iput v6, v0, Lk0/oo;->h:I

    :cond_1f
    const/16 v1, 0xa5

    new-array v2, v7, [I

    .line 197
    iget v3, v0, Lk0/oo;->h:I

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_20
    move v2, v6

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_21

    const/16 v3, 0x1f

    .line 198
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    const/16 v3, 0x1f

    .line 199
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_22
    move v2, v6

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_23

    const/16 v3, 0x1e

    .line 200
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    const/16 v1, 0x1e

    .line 201
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_24
    move v2, v6

    :goto_d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_25

    .line 202
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 203
    :cond_25
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_26
    move v2, v6

    :goto_e
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_27

    .line 204
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 205
    :cond_27
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 206
    :cond_28
    sget v2, Lk0/nt;->a:I

    const v3, 0x9e01c7

    if-eq v2, v3, :cond_29

    const/16 v2, 0xaf

    new-array v3, v7, [I

    aput v7, v3, v6

    .line 207
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 208
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    sput v2, Lk0/oo;->I:I

    :goto_f
    const/16 v2, 0x8e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 209
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 210
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 211
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 212
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 213
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 214
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 215
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 216
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 217
    aget-byte v1, v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_2a
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
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

    iget-object v1, p0, Lk0/oo;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/oo;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/oo;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 4
    iget-object v0, p0, Lk0/oo;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/oo;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/oo;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/oo;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/oo;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/oo;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb4

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
    .locals 7

    const/16 p3, 0x3eb

    const/4 p4, 0x5

    if-eq p1, p3, :cond_6

    const/16 p3, 0x3ed

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p3, :cond_3

    const/16 p3, 0xff

    const/4 v3, 0x3

    const/16 v4, 0xe3

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p4, [I

    aput v4, p1, v1

    const/16 p3, 0x8a

    aput p3, p1, v2

    aput v5, p1, v5

    .line 1
    aget p3, p2, v1

    aput p3, p1, v3

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, p4, [I

    aput v4, p1, v1

    const/16 p3, 0x8c

    aput p3, p1, v2

    aput v5, p1, v5

    .line 2
    aget p3, p2, v1

    aput p3, p1, v3

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, p4, [I

    aput v4, p1, v1

    const/16 p3, 0x83

    aput p3, p1, v2

    aput v5, p1, v5

    .line 3
    aget p3, p2, v1

    aput p3, p1, v3

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 4
    :pswitch_3
    aget p1, p2, v1

    const/16 v6, 0xfe

    if-eq p1, v6, :cond_1

    if-eq p1, p3, :cond_0

    new-array p1, p4, [I

    aput v4, p1, v1

    const/16 p3, 0xe8

    aput p3, p1, v2

    aput v5, p1, v5

    .line 5
    aget p3, p2, v1

    aput p3, p1, v3

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    aget p1, p2, v2

    if-ne p1, v2, :cond_7

    const/16 p1, 0x37

    .line 7
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 8
    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 9
    :cond_1
    aget p1, p2, v2

    if-ne p1, v2, :cond_7

    .line 10
    invoke-static {p4, v1}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {p4, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v0, [I

    aput v4, p1, v1

    const/16 p3, 0xe5

    aput p3, p1, v2

    aput v2, p1, v5

    .line 12
    aget p2, p2, v1

    aput p2, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v0, [I

    aput v4, p1, v1

    const/16 p3, 0x90

    aput p3, p1, v2

    aput v2, p1, v5

    .line 13
    aget p2, p2, v1

    aput p2, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :pswitch_6
    aget p1, p2, v1

    if-ne p1, p3, :cond_2

    .line 15
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/oo;->G3(I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput v4, p1, v1

    const/16 p3, 0xe4

    aput p3, p1, v2

    aput v5, p1, v5

    .line 16
    aget p3, p2, v1

    aput p3, p1, v3

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C_CAMERA_MODE ="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p2, v1

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 18
    array-length p1, p2

    if-lez p1, :cond_7

    .line 19
    aget p1, p2, v1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    :cond_4
    new-array p1, v0, [I

    .line 20
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v0, [I

    .line 21
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array p1, p4, [I

    .line 22
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x1a
        0x1
        0x16
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x1a
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x1
    .end array-data
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
    sget-object v0, Lk0/oo;->K:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lk0/oo;->J:I

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/oo;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v8, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 4
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 6
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 7
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_2

    .line 8
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 9
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 10
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 11
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 12
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 13
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 14
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 15
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 16
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 17
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 18
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 19
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 20
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    const/16 v13, 0x10

    if-nez v12, :cond_7

    aput v13, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    aput v13, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v6

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 21
    rem-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    aput v9, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 22
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 23
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    aput v4, p1, v6

    .line 4
    aput v4, p1, v1

    goto :goto_0

    .line 5
    :pswitch_0
    aput v3, p1, v6

    .line 6
    aput v2, p1, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v6

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_2
    aput v1, p1, v6

    .line 10
    aput v4, p1, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v6

    const/16 v0, 0x30

    .line 12
    aput v0, p1, v1

    goto :goto_0

    .line 13
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v6, p1, v6

    .line 15
    aput v2, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    if-ne v0, v6, :cond_2

    .line 16
    aput v3, p1, v6

    .line 17
    aput v2, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v3, p1, v6

    .line 19
    aput v2, p1, v1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    .line 20
    aput v0, p1, v6

    const/16 v0, 0x40

    .line 21
    aput v0, p1, v1

    goto :goto_0

    .line 22
    :pswitch_6
    aput v5, p1, v6

    .line 23
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
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

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
