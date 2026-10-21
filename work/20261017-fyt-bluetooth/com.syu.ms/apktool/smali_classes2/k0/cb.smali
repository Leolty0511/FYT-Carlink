.class public Lk0/cb;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/cb$g;
    }
.end annotation


# static fields
.field public static F:I = 0x1

.field public static G:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:I

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:Z

.field public h:Lo1/g0;

.field public final i:I

.field public j:Lk0/cb$g;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:B

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/cb;->G:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0x9
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/cb;->b:I

    .line 3
    iput v0, p0, Lk0/cb;->d:I

    const/16 v1, 0x29

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v6, 0x7

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v6, 0x8

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v6, 0x9

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v6, 0xa

    aput-object v3, v1, v6

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

    const/16 v7, 0x21

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v7, 0x22

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v7, 0x23

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v7, 0x24

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v7, 0x25

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v7, 0x26

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v7, 0x27

    aput-object v3, v1, v7

    new-array v2, v2, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x28

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/cb;->e:[[I

    .line 5
    iput v0, p0, Lk0/cb;->f:I

    .line 6
    iput-boolean v0, p0, Lk0/cb;->g:Z

    .line 7
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/cb;->h:Lo1/g0;

    .line 8
    iput v4, p0, Lk0/cb;->i:I

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lk0/cb;->k:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lk0/cb;->l:Ljava/lang/String;

    .line 11
    iput v0, p0, Lk0/cb;->m:I

    .line 12
    iput v0, p0, Lk0/cb;->n:I

    .line 13
    iput v0, p0, Lk0/cb;->o:I

    .line 14
    iput v0, p0, Lk0/cb;->p:I

    .line 15
    iput v0, p0, Lk0/cb;->q:I

    .line 16
    iput v0, p0, Lk0/cb;->r:I

    .line 17
    iput v0, p0, Lk0/cb;->s:I

    .line 18
    iput v0, p0, Lk0/cb;->t:I

    const/16 v0, 0xff

    .line 19
    iput v0, p0, Lk0/cb;->u:I

    .line 20
    iput v0, p0, Lk0/cb;->v:I

    .line 21
    new-instance v0, Lk0/cb$a;

    invoke-direct {v0, p0}, Lk0/cb$a;-><init>(Lk0/cb;)V

    iput-object v0, p0, Lk0/cb;->w:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/cb$b;

    invoke-direct {v0, p0}, Lk0/cb$b;-><init>(Lk0/cb;)V

    iput-object v0, p0, Lk0/cb;->x:Ljava/lang/Runnable;

    .line 23
    iput-byte v5, p0, Lk0/cb;->y:B

    .line 24
    new-instance v0, Lk0/cb$c;

    invoke-direct {v0, p0}, Lk0/cb$c;-><init>(Lk0/cb;)V

    iput-object v0, p0, Lk0/cb;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lk0/cb$d;

    invoke-direct {v0, p0}, Lk0/cb$d;-><init>(Lk0/cb;)V

    iput-object v0, p0, Lk0/cb;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lk0/cb$e;

    invoke-direct {v0, p0}, Lk0/cb$e;-><init>(Lk0/cb;)V

    iput-object v0, p0, Lk0/cb;->B:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lk0/cb;->C:I

    .line 28
    iput v0, p0, Lk0/cb;->D:I

    .line 29
    new-instance v0, Lk0/cb$f;

    invoke-direct {v0, p0}, Lk0/cb$f;-><init>(Lk0/cb;)V

    iput-object v0, p0, Lk0/cb;->E:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x1a
    .end array-data

    :array_b
    .array-data 4
        0x21
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x23
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x24
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x25
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x26
        0x37
    .end array-data

    :array_11
    .array-data 4
        0x81
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x82
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x83
        0x36
    .end array-data

    :array_14
    .array-data 4
        0x84
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x85
        0x6
    .end array-data

    :array_16
    .array-data 4
        0x86
        0x3a
    .end array-data

    :array_17
    .array-data 4
        0x87
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x88
        0x8
    .end array-data

    :array_19
    .array-data 4
        0x89
        0x7
    .end array-data

    :array_1a
    .array-data 4
        0x8a
        0x28
    .end array-data

    :array_1b
    .array-data 4
        0x8b
        0x29
    .end array-data

    :array_1c
    .array-data 4
        0x8c
        0x2a
    .end array-data

    :array_1d
    .array-data 4
        0x8d
        0x2b
    .end array-data

    :array_1e
    .array-data 4
        0x8e
        0x28
    .end array-data

    :array_1f
    .array-data 4
        0x8f
        0x29
    .end array-data

    :array_20
    .array-data 4
        0x90
        0x2a
    .end array-data

    :array_21
    .array-data 4
        0x91
        0x2b
    .end array-data

    :array_22
    .array-data 4
        0x92
        0x2c
    .end array-data

    :array_23
    .array-data 4
        0x93
        0x3
    .end array-data

    :array_24
    .array-data 4
        0x94
        0x4
    .end array-data

    :array_25
    .array-data 4
        0x95
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x96
        0x7
    .end array-data

    :array_27
    .array-data 4
        0x97
        0x8
    .end array-data

    :array_28
    .array-data 4
        0x98
        0xd
    .end array-data
.end method

.method public static synthetic g3(Lk0/cb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/cb;->f3()V

    return-void
.end method

.method public static synthetic h3(Lk0/cb;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/cb;->b3()I

    move-result p0

    return p0
.end method

.method public static synthetic i3(Lk0/cb;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cb;->v:I

    return p0
.end method

.method public static synthetic j3(Lk0/cb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cb;->v:I

    return p1
.end method

.method public static synthetic k3(Lk0/cb;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cb;->c3(I)I

    move-result p0

    return p0
.end method

.method public static synthetic l3(Lk0/cb;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cb;->u:I

    return p0
.end method

.method public static synthetic m3(Lk0/cb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cb;->u:I

    return p1
.end method

.method public static synthetic n3(Lk0/cb;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cb;->A:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic o3(Lk0/cb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/cb;->t3()V

    return-void
.end method

.method public static synthetic p3(Lk0/cb;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cb;->h:Lo1/g0;

    return-object p0
.end method

.method public static synthetic q3(Lk0/cb;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cb;->u3(I)V

    return-void
.end method

.method public static synthetic r3(Lk0/cb;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cb;->e3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 8

    if-eqz p1, :cond_1d

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x21

    const/4 v4, 0x5

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x22

    const/16 v5, 0xb

    if-eq v2, v3, :cond_19

    const/16 v3, 0x24

    if-eq v2, v3, :cond_17

    const/16 v3, 0x3b

    const/4 v6, 0x3

    if-eq v2, v3, :cond_13

    const/16 v3, 0x44

    const/16 v7, 0xc

    if-eq v2, v3, :cond_7

    const/16 v1, 0x26

    if-eq v2, v1, :cond_5

    const/16 v1, 0x27

    if-eq v2, v1, :cond_3

    const/16 v1, 0x29

    if-eq v2, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v2, v1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    aget p1, p1, v0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 12
    :cond_4
    aget p1, p1, v0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1d

    .line 13
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 14
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 15
    :cond_5
    aget v1, p1, v0

    if-ne v1, v0, :cond_6

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_1d

    .line 17
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 18
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :cond_6
    aget p1, p1, v0

    if-nez p1, :cond_1d

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v0, :cond_1d

    .line 21
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 22
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 23
    :cond_7
    aget v2, p1, v0

    if-ne v2, v0, :cond_8

    new-array p1, v4, [I

    .line 24
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 25
    :cond_8
    aget v2, p1, v0

    if-ne v2, v1, :cond_9

    new-array p1, v4, [I

    .line 26
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_9
    aget v1, p1, v0

    if-ne v1, v6, :cond_a

    new-array p1, v4, [I

    .line 28
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_a
    aget v1, p1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    new-array p1, v4, [I

    .line 30
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :cond_b
    aget v1, p1, v0

    if-ne v1, v4, :cond_c

    new-array p1, v4, [I

    .line 32
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 33
    :cond_c
    aget v1, p1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    new-array p1, v4, [I

    .line 34
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_d
    aget v1, p1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_e

    new-array p1, v4, [I

    .line 36
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_e
    aget v1, p1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    new-array p1, v4, [I

    .line 38
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 39
    :cond_f
    aget v1, p1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_10

    new-array p1, v4, [I

    .line 40
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_10
    aget v1, p1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    new-array p1, v4, [I

    .line 42
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_11
    aget v1, p1, v0

    if-ne v1, v5, :cond_12

    new-array p1, v4, [I

    .line 44
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_12
    aget p1, p1, v0

    if-ne p1, v7, :cond_1d

    new-array p1, v4, [I

    .line 46
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 47
    :cond_13
    aget v2, p1, v0

    if-ne v2, v0, :cond_14

    new-array p1, v4, [I

    .line 48
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 49
    :cond_14
    aget v2, p1, v0

    if-ne v2, v1, :cond_15

    new-array p1, v4, [I

    .line 50
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 51
    :cond_15
    aget v1, p1, v0

    if-ne v1, v6, :cond_16

    new-array p1, v4, [I

    .line 52
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 53
    :cond_16
    aget p1, p1, v0

    if-ne p1, v4, :cond_1d

    new-array p1, v4, [I

    .line 54
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 55
    :cond_17
    aget p1, p1, v0

    const/16 v1, 0x41

    if-eqz p1, :cond_18

    .line 56
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 57
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_1d

    new-array p1, v4, [I

    .line 58
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 59
    :cond_18
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 60
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_1d

    new-array p1, v4, [I

    .line 61
    fill-array-data p1, :array_17

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 62
    :cond_19
    aget p1, p1, v0

    if-eqz p1, :cond_1a

    .line 63
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_1d

    .line 64
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 65
    fill-array-data p1, :array_18

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 66
    :cond_1a
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v0, :cond_1d

    .line 67
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 68
    fill-array-data p1, :array_19

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 69
    :cond_1b
    aget p1, p1, v0

    const/16 v0, 0x15

    if-eqz p1, :cond_1c

    .line 70
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_1d

    .line 71
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 72
    fill-array-data p1, :array_1a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 73
    :cond_1c
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-eqz p1, :cond_1d

    .line 74
    invoke-virtual {p0}, Lk0/cb;->d3()Z

    move-result p1

    if-eqz p1, :cond_1d

    new-array p1, v4, [I

    .line 75
    fill-array-data p1, :array_1b

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1d
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x36
        0x2
        0x29
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x36
        0x2
        0x29
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x36
        0x2
        0x23
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x36
        0x2
        0x23
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x36
        0x2
        0x28
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x36
        0x2
        0x28
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x36
        0x2
        0xc
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x36
        0x2
        0xc
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x36
        0x2
        0xd
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x36
        0x2
        0xd
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x36
        0x2
        0xe
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x36
        0x2
        0xe
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x36
        0x2
        0xf
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x36
        0x2
        0xf
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x36
        0x2
        0xb
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x36
        0x2
        0xb
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x36
        0x2
        0x10
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x36
        0x2
        0x10
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x36
        0x2
        0x26
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x36
        0x2
        0x24
        0x1
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x36
        0x2
        0x25
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x36
        0x2
        0x27
        0x1
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x36
        0x2
        0x21
        0x1
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x36
        0x2
        0x21
        0x0
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x36
        0x2
        0x22
        0x1
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x36
        0x2
        0x22
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x36
        0x2
        0x20
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x36
        0x2
        0x20
        0x0
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/cb;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cb;->z:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/cb;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/cb;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/cb;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    const/4 v3, 0x0

    .line 8
    iput v3, v0, Lk0/mt;->f:I

    .line 9
    iput v3, v0, Lk0/mt;->g:I

    .line 10
    iput v3, v0, Lk0/mt;->o:I

    .line 11
    iput v3, v0, Lk0/mt;->i:I

    .line 12
    sget v3, Lk0/nt;->c:I

    const-string v4, "com.syu.canbus"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 13
    :pswitch_1
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->f:I

    .line 15
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v3, p0, Lk0/cb;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    new-instance v0, Lk0/cb$g;

    invoke-direct {v0, p0, v1}, Lk0/cb$g;-><init>(Lk0/cb;Lk0/cb$a;)V

    iput-object v0, p0, Lk0/cb;->j:Lk0/cb$g;

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v3, p0, Lk0/cb;->j:Lk0/cb$g;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0}, Lk0/cb;->f3()V

    .line 21
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 22
    :pswitch_2
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 23
    iput v2, v0, Lk0/mt;->f:I

    .line 24
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 25
    :pswitch_3
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 26
    iput v2, v0, Lk0/mt;->f:I

    goto :goto_0

    .line 27
    :pswitch_4
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 28
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
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
        0x3b
        0x44
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v4, 0x41

    const/16 v5, 0x10

    const/16 v8, 0xb

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v5, :cond_3a

    const/16 v14, 0x30

    const/4 v15, 0x2

    if-eq v2, v14, :cond_39

    const/16 v14, 0x55

    const/16 v9, 0x28

    const/16 v6, 0xa

    const/4 v10, 0x7

    const/16 v7, 0xff

    if-eq v2, v14, :cond_33

    const/16 v14, 0x7d

    const/4 v5, 0x4

    const/4 v3, 0x3

    if-eq v2, v14, :cond_2e

    const/4 v14, 0x5

    if-eq v2, v9, :cond_20

    const/16 v9, 0x29

    if-eq v2, v9, :cond_1f

    const/16 v9, 0x40

    if-eq v2, v9, :cond_1c

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x9

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_14

    .line 2
    :pswitch_0
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v6, :cond_0

    if-ne v2, v8, :cond_40

    :cond_0
    if-eq v2, v6, :cond_1

    if-ne v2, v8, :cond_3

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    iput v2, v0, Lk0/cb;->b:I

    if-ne v2, v14, :cond_2

    const/16 v2, 0x3f5

    new-array v3, v13, [I

    aput v12, v3, v12

    .line 4
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v2, v11, :cond_3

    const/16 v2, 0x3f5

    new-array v3, v13, [I

    aput v13, v3, v12

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_3
    :goto_0
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v1, v1, v2

    if-eqz v1, :cond_4

    .line 7
    invoke-static {v13}, Lk0/qt;->a(I)V

    goto/16 :goto_14

    .line 8
    :cond_4
    invoke-static {v12}, Lk0/qt;->a(I)V

    goto/16 :goto_14

    :pswitch_1
    const/16 v2, 0x71

    new-array v4, v13, [I

    add-int/lit8 v6, p2, 0x2

    .line 9
    aget-byte v8, v1, v6

    shr-int/2addr v8, v10

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v13, [I

    .line 10
    aget-byte v8, v1, v6

    shr-int/2addr v8, v11

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v13, [I

    .line 11
    aget-byte v8, v1, v6

    shr-int/2addr v8, v14

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v13, [I

    .line 12
    aget-byte v8, v1, v6

    shr-int/2addr v8, v5

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v13, [I

    .line 13
    aget-byte v8, v1, v6

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v3, v13

    aput v3, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v13, [I

    .line 14
    aget-byte v4, v1, v6

    shr-int/2addr v4, v15

    and-int/2addr v4, v13

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v13, [I

    .line 15
    aget-byte v4, v1, v6

    shr-int/2addr v4, v13

    and-int/2addr v4, v13

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v13, [I

    .line 16
    aget-byte v4, v1, v6

    shr-int/2addr v4, v12

    and-int/2addr v4, v13

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x3

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 19
    :pswitch_2
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_6

    if-eq v2, v11, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    if-eq v2, v4, :cond_6

    if-eq v2, v6, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x66

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x2

    .line 20
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    shl-int/2addr v5, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    or-int/2addr v3, v5

    aput v3, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x8

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    const/16 v8, 0x8

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_6
    :goto_1
    const/16 v2, 0x66

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x2

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x7

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x9

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0xa

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0xc

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0xe

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0xf

    .line 31
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_3
    const/16 v2, 0x79

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 32
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_4
    const/16 v2, 0x62

    new-array v3, v13, [I

    add-int/lit8 v5, p2, 0x2

    .line 33
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v13, [I

    add-int/lit8 v5, p2, 0x4

    .line 34
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v13, [I

    add-int/lit8 v5, p2, 0x6

    .line 35
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v13, [I

    add-int/lit8 v5, p2, 0x8

    .line 36
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v4, p2, 0x9

    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    or-int/2addr v1, v5

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v2, v1, v2

    const-string v4, "persist.syu.reversefrontdoor"

    .line 38
    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 39
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 40
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 41
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 42
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 43
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 44
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v13

    aput v6, v4, v12

    .line 45
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v13

    aput v2, v4, v12

    .line 46
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    .line 47
    sget v2, Lk0/cb;->F:I

    if-ne v2, v13, :cond_40

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_40

    const-string v1, "\u00c7\u00eb\u00ba\u00c3\u00b0\u00b2\u00c8\u00ab\u00b4\u00f8"

    .line 49
    invoke-virtual {v0, v1}, Lk0/cb;->s3(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 50
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 52
    aget-byte v6, v1, v4

    and-int/2addr v6, v7

    add-int/lit8 v8, p2, 0x4

    .line 53
    aget-byte v9, v1, v8

    and-int/2addr v9, v7

    add-int/lit8 v10, p2, 0x5

    .line 54
    aget-byte v11, v1, v10

    and-int/2addr v11, v7

    if-nez v3, :cond_8

    if-nez v6, :cond_8

    if-nez v9, :cond_8

    if-nez v11, :cond_8

    .line 55
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 56
    :cond_8
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_9

    sget v12, Ll0/c0;->h:I

    if-ne v12, v6, :cond_9

    sget v12, Ll0/c0;->i:I

    if-ne v12, v9, :cond_9

    sget v12, Ll0/c0;->j:I

    if-eq v12, v11, :cond_a

    .line 57
    :cond_9
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_a

    .line 58
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 59
    sput v5, Ll0/c0;->k:I

    .line 60
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 61
    :cond_a
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 62
    sput v6, Ll0/c0;->h:I

    .line 63
    sput v9, Ll0/c0;->i:I

    .line 64
    sput v11, Ll0/c0;->j:I

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 66
    aget-byte v2, v1, v4

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 67
    aget-byte v2, v1, v8

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 68
    aget-byte v1, v1, v10

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->T0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_14

    .line 69
    :pswitch_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 73
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->T0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_14

    .line 74
    :pswitch_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 76
    aget-byte v1, v1, v3

    or-int/lit16 v2, v2, 0x80

    and-int/2addr v2, v7

    .line 77
    iput v2, v0, Lk0/cb;->d:I

    move v2, v12

    .line 78
    :goto_4
    iget-object v3, v0, Lk0/cb;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 79
    iget v4, v0, Lk0/cb;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_b

    if-eqz v4, :cond_c

    .line 80
    iput v2, v0, Lk0/cb;->c:I

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 81
    :cond_c
    :goto_5
    iget v4, v0, Lk0/cb;->d:I

    const/16 v5, 0x88

    if-eq v4, v5, :cond_15

    const/16 v5, 0x89

    if-eq v4, v5, :cond_13

    const/16 v5, 0x96

    if-eq v4, v5, :cond_11

    const/16 v5, 0x97

    if-eq v4, v5, :cond_f

    and-int/2addr v1, v7

    if-ne v1, v13, :cond_d

    .line 82
    array-length v1, v3

    if-ge v2, v1, :cond_40

    .line 83
    aget-object v1, v3, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_d
    if-nez v1, :cond_40

    .line 84
    iget v1, v0, Lk0/cb;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_e

    if-eq v1, v7, :cond_e

    .line 85
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 86
    :cond_e
    iput v7, v0, Lk0/cb;->c:I

    goto/16 :goto_14

    :cond_f
    move v2, v12

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_10

    .line 87
    invoke-static {v10, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 88
    :cond_10
    invoke-static {v10, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_11
    move v2, v12

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    const/16 v3, 0x8

    .line 89
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    const/16 v3, 0x8

    .line 90
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_13
    move v2, v12

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1f

    .line 91
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    const/16 v3, 0x1f

    .line 92
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_15
    move v2, v12

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    const/16 v3, 0x1e

    .line 93
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    const/16 v1, 0x1e

    .line 94
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 95
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 97
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 98
    iput v2, v0, Lk0/cb;->d:I

    move v2, v12

    .line 99
    :goto_a
    iget-object v3, v0, Lk0/cb;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_18

    .line 100
    iget v4, v0, Lk0/cb;->d:I

    aget-object v6, v3, v2

    aget v6, v6, v12

    if-ne v4, v6, :cond_17

    if-eqz v4, :cond_18

    .line 101
    iput v2, v0, Lk0/cb;->c:I

    goto :goto_b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 102
    :cond_18
    :goto_b
    iget v4, v0, Lk0/cb;->d:I

    const/16 v6, 0x31

    if-eq v4, v6, :cond_19

    and-int/2addr v1, v7

    if-ne v1, v13, :cond_40

    .line 103
    array-length v1, v3

    if-ge v2, v1, :cond_40

    .line 104
    iget v1, v0, Lk0/cb;->c:I

    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 105
    iget-object v1, v0, Lk0/cb;->e:[[I

    iget v2, v0, Lk0/cb;->c:I

    aget-object v1, v1, v2

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 106
    :cond_19
    iget v2, v0, Lk0/cb;->f:I

    and-int/2addr v1, v7

    if-eq v2, v1, :cond_40

    .line 107
    iput v1, v0, Lk0/cb;->f:I

    if-ne v1, v13, :cond_40

    .line 108
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_1a

    .line 109
    invoke-static {v13}, Lk0/qt;->a(I)V

    new-array v1, v5, [I

    .line 110
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_14

    .line 111
    :cond_1a
    invoke-static {v12}, Lk0/qt;->a(I)V

    goto/16 :goto_14

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 112
    aget-byte v1, v1, v2

    const/16 v2, 0x6f

    new-array v3, v13, [I

    aput v1, v3, v12

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    const/16 v4, 0x6a

    new-array v5, v13, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v13

    aput v6, v5, v12

    .line 115
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v5, v13, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v13

    aput v6, v5, v12

    .line 116
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6c

    new-array v5, v13, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v13

    aput v6, v5, v12

    .line 117
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6d

    new-array v5, v13, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v13

    aput v6, v5, v12

    .line 118
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x70

    new-array v5, v13, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v13

    aput v2, v5, v12

    .line 119
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 120
    aget-byte v1, v1, v2

    const/16 v2, 0x6e

    new-array v3, v13, [I

    and-int/lit8 v4, v1, 0x3

    aput v4, v3, v12

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 122
    sget v2, Lk0/nt;->c:I

    if-eq v2, v10, :cond_40

    if-nez v1, :cond_1d

    .line 123
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 124
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_14

    :cond_1d
    if-eq v1, v15, :cond_1e

    if-ne v1, v13, :cond_40

    .line 125
    :cond_1e
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 126
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_14

    .line 127
    :cond_1f
    iget-boolean v2, v0, Lk0/cb;->g:Z

    if-nez v2, :cond_40

    add-int/lit8 v2, p2, 0x3

    .line 128
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x226

    invoke-static {v2, v1, v12, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_14

    :cond_20
    const/16 v2, 0xe

    new-array v6, v13, [I

    add-int/lit8 v9, p2, 0x2

    .line 129
    aget-byte v10, v1, v9

    shr-int/2addr v10, v11

    and-int/2addr v10, v13

    aput v10, v6, v12

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v6, v13, [I

    .line 130
    aget-byte v10, v1, v9

    shr-int/2addr v10, v14

    and-int/2addr v10, v13

    aput v10, v6, v12

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v6, v13, [I

    .line 131
    aget-byte v10, v1, v9

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v13

    aput v5, v6, v12

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 132
    aget-byte v5, v1, v9

    shr-int/2addr v5, v3

    and-int/2addr v5, v13

    aput v5, v2, v12

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 133
    aget-byte v5, v1, v9

    shr-int/2addr v5, v15

    and-int/2addr v5, v13

    aput v5, v2, v12

    const/16 v5, 0xc

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 134
    aget-byte v5, v1, v9

    shr-int/2addr v5, v13

    and-int/2addr v5, v13

    aput v5, v2, v12

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 135
    aget-byte v4, v1, v9

    shr-int/2addr v4, v12

    and-int/2addr v4, v13

    aput v4, v2, v12

    const/16 v4, 0x10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x3

    .line 136
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 137
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eqz v2, :cond_24

    if-eq v2, v13, :cond_23

    if-eq v2, v15, :cond_22

    if-eq v2, v3, :cond_21

    move v2, v12

    move v3, v2

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_21
    move v3, v12

    move v2, v13

    move v4, v2

    goto :goto_d

    :cond_22
    move v2, v12

    move v3, v2

    move v4, v13

    goto :goto_d

    :cond_23
    move v2, v12

    move v3, v13

    goto :goto_c

    :cond_24
    move v2, v12

    move v4, v2

    move v3, v13

    :goto_d
    const/16 v5, 0x12

    new-array v6, v13, [I

    aput v2, v6, v12

    .line 138
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v13, [I

    aput v3, v5, v12

    .line 139
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v13, [I

    aput v4, v3, v12

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 141
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, p2, 0x6

    .line 142
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-nez v2, :cond_25

    new-array v2, v13, [I

    const/4 v3, -0x2

    aput v3, v2, v12

    const/16 v3, 0x1b

    .line 143
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_25
    const/16 v3, 0x1b

    const/16 v4, 0x1f

    if-ne v2, v4, :cond_26

    new-array v2, v13, [I

    const/4 v4, -0x3

    aput v4, v2, v12

    .line 144
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_26
    new-array v4, v13, [I

    aput v2, v4, v12

    .line 145
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_e
    add-int/lit8 v2, p2, 0x5

    .line 146
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    if-nez v1, :cond_27

    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    const/16 v2, 0x1c

    .line 147
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_27
    const/16 v2, 0x1c

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_28

    new-array v1, v13, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 148
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_28
    new-array v3, v13, [I

    aput v1, v3, v12

    .line 149
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_29
    add-int/lit8 v2, p2, 0x5

    .line 150
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-nez v2, :cond_2a

    new-array v2, v13, [I

    const/4 v3, -0x2

    aput v3, v2, v12

    const/16 v3, 0x1b

    .line 151
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2a
    const/16 v3, 0x1b

    const/16 v4, 0x1f

    if-ne v2, v4, :cond_2b

    new-array v2, v13, [I

    const/4 v4, -0x3

    aput v4, v2, v12

    .line 152
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2b
    new-array v4, v13, [I

    aput v2, v4, v12

    .line 153
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_f
    add-int/lit8 v2, p2, 0x6

    .line 154
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    if-nez v1, :cond_2c

    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    const/16 v2, 0x1c

    .line 155
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2c
    const/16 v2, 0x1c

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_2d

    new-array v1, v13, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 156
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2d
    new-array v3, v13, [I

    aput v1, v3, v12

    .line 157
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2e
    add-int/lit8 v2, p2, 0x2

    .line 158
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v13, :cond_31

    if-eq v2, v3, :cond_30

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2f

    goto/16 :goto_14

    :cond_2f
    add-int/lit8 v2, p2, 0x3

    .line 159
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 160
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 161
    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    .line 162
    iput-boolean v13, v0, Lk0/cb;->g:Z

    goto/16 :goto_14

    :cond_30
    add-int/lit8 v2, p2, 0x4

    .line 163
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v13, [I

    aput v1, v3, v12

    .line 164
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 165
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v15, [I

    aput v13, v4, v12

    aput v1, v4, v13

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_31
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 166
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_32

    add-int/lit8 v2, p2, 0x3

    .line 167
    aget-byte v4, v1, v2

    shr-int/lit8 v3, v4, 0x3

    and-int/2addr v3, v13

    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    invoke-static {v3, v1, v12}, Ll0/c0;->b(III)V

    goto/16 :goto_14

    :cond_32
    add-int/lit8 v2, p2, 0x3

    .line 168
    aget-byte v4, v1, v2

    shr-int/lit8 v3, v4, 0x3

    and-int/2addr v3, v13

    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    invoke-static {v3, v1, v12}, Ll0/c0;->a(III)V

    goto/16 :goto_14

    .line 169
    :cond_33
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 170
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0x196

    if-eq v2, v3, :cond_38

    const v3, 0x10196

    if-eq v2, v3, :cond_38

    const v3, 0x20196

    if-ne v2, v3, :cond_34

    goto :goto_12

    :cond_34
    add-int/lit8 v2, p2, 0x7

    .line 171
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_35

    goto/16 :goto_14

    :cond_35
    if-le v1, v9, :cond_37

    const/16 v2, 0x5a

    if-le v1, v2, :cond_36

    const/16 v1, 0x32

    goto :goto_10

    :cond_36
    sub-int/2addr v1, v9

    :goto_10
    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_11

    :cond_37
    sub-int/2addr v9, v1

    mul-int/2addr v9, v6

    rsub-int v1, v9, 0x3e8

    .line 172
    :goto_11
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_14

    :cond_38
    :goto_12
    return-void

    .line 173
    :cond_39
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    .line 174
    iput-byte v12, v0, Lk0/cb;->y:B

    goto/16 :goto_14

    :cond_3a
    add-int/lit8 v2, p2, 0x3

    .line 175
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 176
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x5

    .line 177
    aget-byte v6, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 178
    aget-byte v9, v1, v7

    new-array v10, v13, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v13

    aput v11, v10, v12

    const/16 v11, 0xc

    .line 179
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v13, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 180
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v13

    aput v10, v4, v12

    const/16 v10, 0x10

    .line 181
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v10, v13, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 182
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v10, v13, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 183
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v10, v13, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 184
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v13

    aput v2, v4, v12

    .line 185
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v13, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v13

    aput v8, v4, v12

    .line 186
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v13, [I

    shr-int/2addr v3, v12

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v12

    .line 187
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 188
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 189
    aget-byte v6, v1, v7

    .line 190
    aget-byte v9, v1, v5

    :cond_3b
    and-int/lit16 v1, v6, 0xff

    if-ne v6, v13, :cond_3c

    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    const/16 v2, 0x1b

    .line 191
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_3c
    const/16 v2, 0x1b

    const/16 v3, 0x39

    if-ne v6, v3, :cond_3d

    new-array v1, v13, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 192
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_3d
    new-array v3, v13, [I

    aput v1, v3, v12

    .line 193
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_13
    and-int/lit16 v1, v9, 0xff

    if-ne v9, v13, :cond_3e

    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    const/16 v2, 0x1c

    .line 194
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_3e
    const/16 v2, 0x1c

    const/16 v3, 0x39

    if-ne v9, v3, :cond_3f

    new-array v1, v13, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 195
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_3f
    new-array v3, v13, [I

    aput v1, v3, v12

    .line 196
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_40
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x8a
        0x1
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/cb;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/cb;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/cb;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cb;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/cb;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/cb;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/cb;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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

    const/4 p4, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, p3, :cond_9

    const/16 p3, 0x3ed

    const/16 v2, 0xe3

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_b

    .line 1
    array-length p1, p2

    if-lez p1, :cond_b

    .line 2
    aget p1, p2, v1

    invoke-virtual {p0, p1}, Lk0/cb;->u3(I)V

    goto/16 :goto_1

    :pswitch_1
    if-eqz p2, :cond_b

    .line 3
    array-length p1, p2

    if-lez p1, :cond_b

    new-array p1, v3, [I

    aput v2, p1, v1

    const/16 p3, 0x8a

    aput p3, p1, p4

    aput v5, p1, v5

    .line 4
    aget p3, p2, v1

    aput p3, p1, v4

    aget p2, p2, p4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p2, :cond_b

    .line 5
    array-length p1, p2

    if-lez p1, :cond_b

    new-array p1, v3, [I

    aput v2, p1, v1

    const/16 p3, 0x83

    aput p3, p1, p4

    aput v5, p1, v5

    .line 6
    aget p3, p2, v1

    aput p3, p1, v4

    aget p2, p2, p4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz p2, :cond_b

    .line 7
    array-length p1, p2

    if-lez p1, :cond_b

    .line 8
    aget p1, p2, v1

    invoke-virtual {p0, v3, p1}, Lk0/cb;->v3(II)V

    goto/16 :goto_1

    :pswitch_4
    if-eqz p2, :cond_b

    .line 9
    array-length p1, p2

    if-lez p1, :cond_b

    .line 10
    aget p1, p2, v1

    invoke-virtual {p0, v0, p1}, Lk0/cb;->v3(II)V

    goto/16 :goto_1

    :pswitch_5
    if-eqz p2, :cond_b

    .line 11
    array-length p1, p2

    if-lez p1, :cond_b

    .line 12
    aget p1, p2, v1

    invoke-virtual {p0, v4, p1}, Lk0/cb;->v3(II)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz p2, :cond_b

    .line 13
    array-length p1, p2

    if-lez p1, :cond_b

    .line 14
    aget p1, p2, v1

    invoke-virtual {p0, v5, p1}, Lk0/cb;->v3(II)V

    goto/16 :goto_1

    :pswitch_7
    if-eqz p2, :cond_b

    .line 15
    array-length p1, p2

    if-lez p1, :cond_b

    .line 16
    aget p1, p2, v1

    invoke-virtual {p0, p4, p1}, Lk0/cb;->v3(II)V

    goto/16 :goto_1

    .line 17
    :pswitch_8
    aget p1, p2, v1

    invoke-virtual {p0, p1}, Lk0/cb;->a3(I)V

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_b

    .line 18
    array-length p1, p2

    if-lez p1, :cond_b

    .line 19
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FinalCanbus.C_CAMERA_MODE == ints[0] == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, p3, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 20
    sget p1, Lk0/nt;->c:I

    const/16 p3, 0xa

    if-eq p1, p3, :cond_2

    const/16 p3, 0xb

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput v2, p1, v1

    const/16 p3, -0x76

    aput p3, p1, p4

    aput p4, p1, v5

    .line 21
    aget p2, p2, v1

    add-int/2addr p2, v5

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 22
    :cond_2
    :goto_0
    aget p1, p2, v1

    if-eqz p1, :cond_8

    if-eq p1, p4, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, v0, [I

    .line 23
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array p1, v0, [I

    .line 24
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_5
    new-array p1, v0, [I

    .line 25
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_6
    new-array p1, v0, [I

    .line 26
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_7
    new-array p1, v0, [I

    .line 27
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_8
    new-array p1, v0, [I

    .line 28
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_b

    .line 29
    array-length p1, p2

    if-lez p1, :cond_b

    .line 30
    aget p1, p2, v1

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 31
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 32
    invoke-static {p4}, Lk0/qt;->a(I)V

    goto :goto_1

    :cond_a
    new-array p1, v0, [I

    .line 33
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :array_0
    .array-data 4
        0xe3
        -0x75
        0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x75
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x75
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x75
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x75
        0x1
        0x6
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x75
        0x1
        0x5
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x76
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x76
        0x1
        0x1
    .end array-data
.end method

.method public final a3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x70

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()I
    .locals 3

    .line 1
    sget v0, Lu0/b;->K3:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final c3(I)I
    .locals 8

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    if-gez p1, :cond_1

    .line 2
    rem-int/lit16 p1, p1, 0x168

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int p1, p1, 0x168

    :cond_1
    int-to-double v1, p1

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-wide v5, 0x4075180000000000L    # 337.5

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_4

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/4 p1, 0x2

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x4

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x5

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x6

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x7

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/16 p1, 0x8

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final d3()Z
    .locals 1

    .line 1
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final e3(I)V
    .locals 2

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xe3

    aput v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, -0x7e

    aput v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x3

    aput v1, p1, v0

    .line 1
    iget v0, p0, Lk0/cb;->C:I

    aput v0, p1, v1

    iget v0, p0, Lk0/cb;->D:I

    const/4 v1, 0x4

    aput v0, p1, v1

    invoke-virtual {p0}, Lk0/cb;->b3()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3()V
    .locals 7

    .line 1
    iget v0, p0, Lk0/cb;->r:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/cb;->G:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/cb;->n:I

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc9

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    iget v6, p0, Lk0/cb;->t:I

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Lk0/cb;->v:I

    aput v6, v3, v4

    const/4 v4, 0x5

    and-int/lit16 v6, v2, 0xff

    aput v6, v3, v4

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    const/4 v4, 0x7

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v4

    aget v0, v1, v0

    const/16 v1, 0x8

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "raw_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.syu.voice"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final t3()V
    .locals 1

    const/16 v0, 0x25

    .line 1
    invoke-virtual {p0, v0}, Lk0/cb;->a3(I)V

    const/16 v0, 0x30

    .line 2
    invoke-virtual {p0, v0}, Lk0/cb;->a3(I)V

    const/16 v0, 0x33

    .line 3
    invoke-virtual {p0, v0}, Lk0/cb;->a3(I)V

    return-void
.end method

.method public final u3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/cb;->F:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x80

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/cb;->h:Lo1/g0;

    invoke-virtual {p1, v0, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/cb;->F:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/cb;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final v3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x83

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
