.class public Lk0/l1;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/l1$h;
    }
.end annotation


# static fields
.field public static K:I

.field public static L:I

.field public static M:[I

.field public static N:I

.field public static O:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public final F:Ljava/lang/Runnable;

.field public G:I

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:I

.field public b:Lo1/g0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:[[I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Z

.field public p:Ljava/lang/Runnable;

.field public q:Lk0/l1$h;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/l1;->M:[I

    const/4 v0, 0x0

    .line 2
    sput v0, Lk0/l1;->N:I

    .line 3
    sput v0, Lk0/l1;->O:I

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x9
        0xd
        0x8
        0xc
        0x7
        0xb
        0x8
        0x6
        0x9
        0xe
        0x2
        0x4
        0x1
        0x5
        0xf
        0x3
        0x2
        0x4
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/l1;->b:Lo1/g0;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lk0/l1;->c:I

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lk0/l1;->d:I

    const/4 v3, 0x1

    .line 5
    iput v3, p0, Lk0/l1;->e:I

    .line 6
    iput v0, p0, Lk0/l1;->f:I

    const/4 v4, 0x0

    .line 7
    iput v4, p0, Lk0/l1;->h:I

    new-array v2, v2, [[I

    new-array v5, v0, [I

    .line 8
    fill-array-data v5, :array_0

    aput-object v5, v2, v4

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    aput-object v5, v2, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_2

    aput-object v5, v2, v0

    new-array v5, v0, [I

    fill-array-data v5, :array_3

    aput-object v5, v2, v1

    new-array v5, v0, [I

    fill-array-data v5, :array_4

    const/4 v6, 0x4

    aput-object v5, v2, v6

    new-array v5, v0, [I

    fill-array-data v5, :array_5

    const/4 v7, 0x5

    aput-object v5, v2, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_6

    const/4 v8, 0x6

    aput-object v5, v2, v8

    new-array v5, v0, [I

    fill-array-data v5, :array_7

    const/4 v9, 0x7

    aput-object v5, v2, v9

    new-array v5, v0, [I

    fill-array-data v5, :array_8

    const/16 v10, 0x8

    aput-object v5, v2, v10

    new-array v5, v0, [I

    fill-array-data v5, :array_9

    const/16 v11, 0x9

    aput-object v5, v2, v11

    new-array v5, v0, [I

    fill-array-data v5, :array_a

    const/16 v12, 0xa

    aput-object v5, v2, v12

    new-array v5, v0, [I

    fill-array-data v5, :array_b

    const/16 v13, 0xb

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_c

    const/16 v13, 0xc

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_d

    const/16 v13, 0xd

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_e

    const/16 v13, 0xe

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_f

    const/16 v13, 0xf

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_10

    const/16 v13, 0x10

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_11

    const/16 v13, 0x11

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_12

    const/16 v13, 0x12

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_13

    const/16 v13, 0x13

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_14

    const/16 v13, 0x14

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_15

    const/16 v13, 0x15

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_16

    const/16 v13, 0x16

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_17

    const/16 v13, 0x17

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_18

    const/16 v13, 0x18

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_19

    const/16 v13, 0x19

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_1a

    const/16 v13, 0x1a

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_1b

    const/16 v13, 0x1b

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_1c

    const/16 v13, 0x1c

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_1d

    const/16 v13, 0x1d

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_1e

    const/16 v13, 0x1e

    aput-object v5, v2, v13

    new-array v5, v0, [I

    fill-array-data v5, :array_1f

    const/16 v13, 0x1f

    aput-object v5, v2, v13

    iput-object v2, p0, Lk0/l1;->i:[[I

    new-array v2, v12, [[I

    new-array v5, v0, [I

    .line 9
    fill-array-data v5, :array_20

    aput-object v5, v2, v4

    new-array v5, v0, [I

    fill-array-data v5, :array_21

    aput-object v5, v2, v3

    new-array v3, v0, [I

    fill-array-data v3, :array_22

    aput-object v3, v2, v0

    new-array v3, v0, [I

    fill-array-data v3, :array_23

    aput-object v3, v2, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_24

    aput-object v1, v2, v6

    new-array v1, v0, [I

    fill-array-data v1, :array_25

    aput-object v1, v2, v7

    new-array v1, v0, [I

    fill-array-data v1, :array_26

    aput-object v1, v2, v8

    new-array v1, v0, [I

    fill-array-data v1, :array_27

    aput-object v1, v2, v9

    new-array v1, v0, [I

    fill-array-data v1, :array_28

    aput-object v1, v2, v10

    new-array v0, v0, [I

    fill-array-data v0, :array_29

    aput-object v0, v2, v11

    iput-object v2, p0, Lk0/l1;->j:[[I

    .line 10
    iput v8, p0, Lk0/l1;->k:I

    .line 11
    new-instance v0, Lk0/l1$a;

    invoke-direct {v0, p0}, Lk0/l1$a;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->l:Ljava/lang/Runnable;

    .line 12
    iput v4, p0, Lk0/l1;->m:I

    .line 13
    new-instance v0, Lk0/l1$b;

    invoke-direct {v0, p0}, Lk0/l1$b;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->n:Ljava/lang/Runnable;

    .line 14
    iput-boolean v4, p0, Lk0/l1;->o:Z

    .line 15
    new-instance v0, Lk0/l1$c;

    invoke-direct {v0, p0}, Lk0/l1$c;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->p:Ljava/lang/Runnable;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lk0/l1;->r:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lk0/l1;->s:Ljava/lang/String;

    .line 18
    iput v4, p0, Lk0/l1;->t:I

    .line 19
    iput v4, p0, Lk0/l1;->u:I

    .line 20
    iput v4, p0, Lk0/l1;->v:I

    .line 21
    iput v4, p0, Lk0/l1;->w:I

    .line 22
    iput v4, p0, Lk0/l1;->x:I

    .line 23
    iput v4, p0, Lk0/l1;->y:I

    .line 24
    iput v4, p0, Lk0/l1;->z:I

    .line 25
    iput v4, p0, Lk0/l1;->A:I

    .line 26
    iput v4, p0, Lk0/l1;->B:I

    const/16 v0, 0xff

    .line 27
    iput v0, p0, Lk0/l1;->C:I

    .line 28
    iput v0, p0, Lk0/l1;->D:I

    .line 29
    new-instance v0, Lk0/l1$d;

    invoke-direct {v0, p0}, Lk0/l1$d;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->E:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lk0/l1$e;

    invoke-direct {v0, p0}, Lk0/l1$e;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->F:Ljava/lang/Runnable;

    .line 31
    iput v4, p0, Lk0/l1;->G:I

    .line 32
    new-instance v0, Lk0/l1$f;

    invoke-direct {v0, p0}, Lk0/l1$f;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->H:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lk0/l1$g;

    invoke-direct {v0, p0}, Lk0/l1$g;-><init>(Lk0/l1;)V

    iput-object v0, p0, Lk0/l1;->I:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x18
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x13
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x14
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x21
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x22
        0x8
    .end array-data

    :array_11
    .array-data 4
        0x23
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x24
        0x1e
    .end array-data

    :array_13
    .array-data 4
        0x25
        0x1f
    .end array-data

    :array_14
    .array-data 4
        0x26
        0x3
    .end array-data

    :array_15
    .array-data 4
        0x27
        0x4
    .end array-data

    :array_16
    .array-data 4
        0x28
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x29
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x2a
        0x19
    .end array-data

    :array_19
    .array-data 4
        0x2b
        0x40
    .end array-data

    :array_1a
    .array-data 4
        0x2c
        0x3a
    .end array-data

    :array_1b
    .array-data 4
        0x2d
        0x12
    .end array-data

    :array_1c
    .array-data 4
        0x2e
        0x36
    .end array-data

    :array_1d
    .array-data 4
        0x2f
        0x26
    .end array-data

    :array_1e
    .array-data 4
        0x30
        0x9
    .end array-data

    :array_1f
    .array-data 4
        0x31
        0x1d
    .end array-data

    :array_20
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_22
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_24
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_25
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_27
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_28
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_29
    .array-data 4
        0x9
        0xd
    .end array-data
.end method

.method public static synthetic e3(Lk0/l1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l1;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/l1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l1;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g3(Lk0/l1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l1;->u3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/l1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l1;->d3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/l1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l1;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic j3(Lk0/l1;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/l1;->D:I

    return p0
.end method

.method public static synthetic k3(Lk0/l1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/l1;->D:I

    return p1
.end method

.method public static synthetic l3(Lk0/l1;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l1;->c3(I)I

    move-result p0

    return p0
.end method

.method public static synthetic m3(Lk0/l1;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/l1;->C:I

    return p0
.end method

.method public static synthetic n3(Lk0/l1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/l1;->C:I

    return p1
.end method

.method public static synthetic o3(Lk0/l1;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l1;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic p3(Lk0/l1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l1;->v3(I)V

    return-void
.end method


# virtual methods
.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_14

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

    const/16 v3, 0x29

    const/4 v4, 0x3

    if-eq v2, v3, :cond_12

    const/16 v3, 0x2a

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eq v2, v3, :cond_10

    const/16 v3, 0x43

    if-eq v2, v3, :cond_a

    const/16 v1, 0x44

    const/16 v3, 0x9

    const/16 v4, 0xa

    if-eq v2, v1, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget p1, p1, v0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_14

    .line 7
    invoke-virtual {p0, v3}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    aget p1, p1, v0

    const/16 v1, 0x19

    const/16 v2, 0xc

    if-eqz p1, :cond_2

    .line 9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_14

    .line 10
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_14

    .line 12
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    aget p1, p1, v0

    const/16 v1, 0x14

    const/16 v2, 0x10

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_14

    .line 15
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 16
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_14

    .line 17
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_3
    aget p1, p1, v0

    const/16 v1, 0x13

    const/16 v2, 0x41

    if-eqz p1, :cond_4

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_14

    .line 20
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_14

    .line 22
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_4
    aget p1, p1, v0

    const/16 v1, 0x15

    const/16 v2, 0xd

    if-eqz p1, :cond_5

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_14

    .line 25
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 26
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_14

    .line 27
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_5
    aget p1, p1, v0

    const/16 v1, 0x17

    const/16 v2, 0xb

    if-eqz p1, :cond_6

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_14

    .line 30
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 31
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_14

    .line 32
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 33
    :pswitch_6
    aget p1, p1, v0

    if-eqz p1, :cond_7

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_14

    .line 35
    invoke-virtual {p0, v4}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 36
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_14

    .line 37
    invoke-virtual {p0, v0}, Lk0/l1;->a3(I)V

    goto/16 :goto_0

    .line 38
    :cond_8
    aget v1, p1, v0

    if-ne v1, v3, :cond_9

    new-array p1, v6, [I

    .line 39
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 40
    :cond_9
    aget p1, p1, v0

    if-ne p1, v4, :cond_14

    new-array p1, v6, [I

    .line 41
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 42
    :cond_a
    sget v2, Lk0/nt;->a:I

    const v3, 0xd0046

    if-eq v2, v3, :cond_b

    const v3, 0x1a0046

    if-ne v2, v3, :cond_14

    .line 43
    :cond_b
    aget p1, p1, v0

    if-eq p1, v1, :cond_f

    if-eq p1, v4, :cond_e

    if-eq p1, v6, :cond_d

    if-eq p1, v5, :cond_c

    goto :goto_0

    :cond_c
    new-array p1, v6, [I

    .line 44
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_d
    new-array p1, v6, [I

    .line 45
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_e
    new-array p1, v6, [I

    .line 46
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_f
    new-array p1, v6, [I

    .line 47
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 48
    :cond_10
    aget p1, p1, v0

    if-eqz p1, :cond_11

    .line 49
    invoke-virtual {p0, v5}, Lk0/l1;->a3(I)V

    goto :goto_0

    .line 50
    :cond_11
    invoke-virtual {p0, v6}, Lk0/l1;->a3(I)V

    goto :goto_0

    .line 51
    :cond_12
    aget p1, p1, v0

    if-eqz p1, :cond_13

    .line 52
    invoke-virtual {p0, v4}, Lk0/l1;->a3(I)V

    goto :goto_0

    .line 53
    :cond_13
    invoke-virtual {p0, v1}, Lk0/l1;->a3(I)V

    :cond_14
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
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
        -0x4d
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x4d
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xa7
        0x1
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xa7
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xa7
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xa7
        0x1
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->h:I

    .line 7
    iput v2, v0, Lk0/mt;->r:I

    .line 8
    iget-object v0, p0, Lk0/l1;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/l1;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget v0, Lk0/nt;->a:I

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 12
    :sswitch_0
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v4, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 13
    :sswitch_1
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v5, 0x2

    iput v5, v4, Lk0/mt;->h:I

    :goto_0
    const/16 v4, 0x438

    const-string v5, "AUTONAVI_STANDARD_BROADCAST_SEND"

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 14
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->r:I

    .line 15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 17
    invoke-static {}, La/f;->w()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 19
    :cond_0
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/l1;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    new-instance v0, Lk0/l1$h;

    invoke-direct {v0, p0, v3}, Lk0/l1$h;-><init>(Lk0/l1;Lk0/l1$a;)V

    iput-object v0, p0, Lk0/l1;->q:Lk0/l1$h;

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/l1;->q:Lk0/l1$h;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 24
    :sswitch_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 25
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 26
    invoke-static {}, La/f;->w()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 27
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 28
    :cond_1
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/l1;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    new-instance v0, Lk0/l1$h;

    invoke-direct {v0, p0, v3}, Lk0/l1$h;-><init>(Lk0/l1;Lk0/l1$a;)V

    iput-object v0, p0, Lk0/l1;->q:Lk0/l1$h;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/l1;->q:Lk0/l1$h;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :sswitch_data_0
    .sparse-switch
        0xd0046 -> :sswitch_1
        0x150046 -> :sswitch_0
        0x160046 -> :sswitch_0
        0x1c0046 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x60046 -> :sswitch_3
        0x70046 -> :sswitch_3
        0x80046 -> :sswitch_3
        0x90046 -> :sswitch_3
        0xa0046 -> :sswitch_3
        0x140046 -> :sswitch_2
        0x1c0046 -> :sswitch_2
    .end sparse-switch

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
        0x43
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v11, 0x9

    const v12, 0x1c0046

    const/16 v13, 0xf

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/16 v5, 0xff

    const/4 v8, 0x0

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_23

    :sswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const/4 v3, 0x0

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_1

    if-eq v2, v14, :cond_0

    goto/16 :goto_23

    :cond_0
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 5
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 6
    iput-boolean v10, v0, Lk0/l1;->o:Z

    goto/16 :goto_23

    :cond_1
    add-int/lit8 v2, p2, 0x4

    .line 7
    aget-byte v2, v1, v2

    shl-int/2addr v2, v14

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v4, v10, [I

    aput v1, v4, v8

    .line 8
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 9
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v7, [I

    aput v10, v5, v8

    aput v1, v5, v10

    invoke-static {v2, v4, v5, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_23

    .line 10
    :cond_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v11, 0x419

    new-array v7, v7, [I

    const/16 v12, 0xb

    aput v12, v7, v8

    add-int/lit8 v12, p2, 0x3

    aget-byte v13, v1, v12

    and-int/2addr v5, v13

    aput v5, v7, v10

    invoke-static {v2, v11, v7, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 12
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 13
    aget-byte v2, v1, v12

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aget-byte v1, v1, v12

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    invoke-static {v2, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_23

    .line 14
    :cond_3
    aget-byte v2, v1, v12

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aget-byte v1, v1, v12

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    invoke-static {v2, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_23

    .line 15
    :cond_4
    aget-byte v1, v1, v12

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    .line 16
    sget v2, Lk0/l1;->K:I

    if-ne v2, v10, :cond_5c

    if-ne v1, v10, :cond_5

    const/16 v1, 0x14

    .line 17
    iput v1, v0, Lk0/l1;->k:I

    .line 18
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 19
    iget-object v1, v0, Lk0/l1;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    new-array v1, v4, [I

    .line 20
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [I

    .line 21
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    .line 22
    :cond_5
    iget-object v1, v0, Lk0/l1;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_23

    .line 23
    :sswitch_1
    sget v2, Lk0/l1;->K:I

    if-nez v2, :cond_6

    goto/16 :goto_23

    .line 24
    :cond_6
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 25
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    invoke-static {v3, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_23

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    invoke-static {v3, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_23

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v1, v1, v2

    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v10

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    .line 29
    sget v3, Lk0/nt;->a:I

    if-eq v3, v12, :cond_b

    .line 30
    sget v1, Lu0/b;->o:I

    if-eqz v1, :cond_9

    goto/16 :goto_23

    :cond_9
    if-eqz v2, :cond_a

    .line 31
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 32
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_23

    .line 33
    :cond_a
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 34
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_23

    :cond_b
    if-eq v2, v10, :cond_d

    if-ne v1, v10, :cond_c

    goto :goto_0

    .line 35
    :cond_c
    sget v1, Lu0/b;->o:I

    if-ne v1, v10, :cond_5c

    new-array v1, v6, [I

    .line 36
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    .line 37
    :cond_d
    :goto_0
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_5c

    new-array v1, v6, [I

    .line 38
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    :sswitch_2
    const/16 v2, 0x76

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0x2

    .line 39
    aget-byte v14, v1, v12

    shr-int/2addr v14, v15

    and-int/2addr v14, v10

    aput v14, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v11, v10, [I

    .line 40
    aget-byte v14, v1, v12

    shr-int/2addr v14, v3

    and-int/2addr v14, v10

    aput v14, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v11, v10, [I

    .line 41
    aget-byte v12, v1, v12

    shr-int/2addr v12, v4

    and-int/2addr v12, v10

    aput v12, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0x3

    .line 42
    aget-byte v14, v1, v12

    shr-int/2addr v14, v4

    and-int/2addr v14, v15

    aput v14, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v11, v10, [I

    .line 43
    aget-byte v14, v1, v12

    shr-int/2addr v14, v9

    and-int/2addr v14, v9

    aput v14, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v11, v10, [I

    .line 44
    aget-byte v12, v1, v12

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0x4

    .line 45
    aget-byte v14, v1, v12

    shr-int/lit8 v3, v14, 0x6

    and-int/2addr v3, v10

    aput v3, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 46
    aget-byte v11, v1, v12

    shr-int/2addr v11, v4

    and-int/2addr v11, v10

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 47
    aget-byte v11, v1, v12

    shr-int/2addr v11, v6

    and-int/2addr v11, v10

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    add-int/lit8 v11, p2, 0x5

    .line 48
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v10

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    .line 49
    aget-byte v12, v1, v11

    shr-int/lit8 v4, v12, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    .line 50
    aget-byte v4, v1, v11

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 51
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v13

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    .line 52
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 53
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v10, [I

    .line 54
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    .line 55
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v10

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 56
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    .line 57
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    .line 59
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v10

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 60
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    .line 61
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 63
    aget-byte v1, v1, v5

    if-ne v2, v10, :cond_f

    const/16 v2, 0x66

    new-array v3, v10, [I

    if-ne v1, v10, :cond_e

    goto :goto_1

    :cond_e
    move v10, v8

    :goto_1
    aput v10, v3, v8

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_f
    if-nez v2, :cond_11

    const/16 v2, 0x74

    new-array v3, v10, [I

    if-ne v1, v10, :cond_10

    goto :goto_2

    :cond_10
    move v10, v8

    :goto_2
    aput v10, v3, v8

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_11
    if-ne v2, v7, :cond_13

    const/16 v2, 0x75

    new-array v3, v10, [I

    if-ne v1, v10, :cond_12

    goto :goto_3

    :cond_12
    move v10, v8

    :goto_3
    aput v10, v3, v8

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_13
    if-ne v2, v9, :cond_15

    const/16 v2, 0x76

    new-array v3, v10, [I

    if-ne v1, v10, :cond_14

    goto :goto_4

    :cond_14
    move v10, v8

    :goto_4
    aput v10, v3, v8

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_15
    if-ne v2, v6, :cond_17

    const/16 v2, 0x77

    new-array v3, v10, [I

    if-ne v1, v10, :cond_16

    goto :goto_5

    :cond_16
    move v10, v8

    :goto_5
    aput v10, v3, v8

    .line 68
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_17
    if-ne v2, v4, :cond_19

    const/16 v2, 0x78

    new-array v3, v10, [I

    if-ne v1, v10, :cond_18

    goto :goto_6

    :cond_18
    move v10, v8

    :goto_6
    aput v10, v3, v8

    .line 69
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_19
    if-ne v2, v3, :cond_1b

    const/16 v2, 0x79

    new-array v3, v10, [I

    if-ne v1, v10, :cond_1a

    goto :goto_7

    :cond_1a
    move v10, v8

    :goto_7
    aput v10, v3, v8

    .line 70
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_1b
    if-ne v2, v15, :cond_1d

    const/16 v2, 0x7a

    new-array v3, v10, [I

    if-ne v1, v10, :cond_1c

    goto :goto_8

    :cond_1c
    move v10, v8

    :goto_8
    aput v10, v3, v8

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_1d
    if-ne v2, v14, :cond_1f

    const/16 v2, 0x7b

    new-array v3, v10, [I

    if-ne v1, v10, :cond_1e

    goto :goto_9

    :cond_1e
    move v10, v8

    :goto_9
    aput v10, v3, v8

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_1f
    if-ne v2, v11, :cond_21

    const/16 v2, 0x7c

    new-array v3, v10, [I

    if-ne v1, v10, :cond_20

    goto :goto_a

    :cond_20
    move v10, v8

    :goto_a
    aput v10, v3, v8

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_21
    const/16 v3, 0xa

    if-ne v2, v3, :cond_22

    const/16 v2, 0x7d

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_22
    const/16 v3, 0xb

    if-ne v2, v3, :cond_23

    const/16 v2, 0x7e

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_23
    const/16 v3, 0xc

    if-ne v2, v3, :cond_25

    const/16 v2, 0x7f

    new-array v3, v10, [I

    if-ne v1, v10, :cond_24

    goto :goto_b

    :cond_24
    move v10, v8

    :goto_b
    aput v10, v3, v8

    .line 76
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_25
    const/16 v3, 0xd

    if-ne v2, v3, :cond_26

    const/16 v2, 0x80

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_26
    const/16 v3, 0xe

    if-ne v2, v3, :cond_27

    const/16 v2, 0x81

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_27
    if-ne v2, v13, :cond_28

    const/16 v2, 0x82

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_28
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2a

    const/16 v2, 0x83

    new-array v3, v10, [I

    if-ne v1, v10, :cond_29

    goto :goto_c

    :cond_29
    move v10, v8

    :goto_c
    aput v10, v3, v8

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_2a
    const/16 v3, 0x11

    if-ne v2, v3, :cond_2c

    const/16 v2, 0x84

    new-array v3, v10, [I

    if-ne v1, v10, :cond_2b

    goto :goto_d

    :cond_2b
    move v10, v8

    :goto_d
    aput v10, v3, v8

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_2c
    const/16 v3, 0x12

    if-ne v2, v3, :cond_2d

    const/16 v2, 0x85

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_2d
    const/16 v3, 0x13

    if-ne v2, v3, :cond_2f

    const/16 v2, 0x86

    new-array v3, v10, [I

    if-ne v1, v10, :cond_2e

    goto :goto_e

    :cond_2e
    move v10, v8

    :goto_e
    aput v10, v3, v8

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_2f
    const/16 v3, 0x14

    if-ne v2, v3, :cond_31

    const/16 v2, 0x87

    new-array v3, v10, [I

    if-ne v1, v10, :cond_30

    goto :goto_f

    :cond_30
    move v10, v8

    :goto_f
    aput v10, v3, v8

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_31
    const/16 v3, 0x15

    if-ne v2, v3, :cond_32

    const/16 v2, 0x88

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_32
    const/16 v3, 0x16

    if-ne v2, v3, :cond_5c

    const/16 v2, 0x89

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 88
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x408

    new-array v4, v10, [I

    shl-int/2addr v2, v14

    or-int/2addr v1, v2

    aput v1, v4, v8

    .line 89
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v10, [I

    aput v1, v3, v8

    .line 90
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    .line 91
    :sswitch_5
    sget v2, Lk0/l1;->K:I

    if-nez v2, :cond_33

    goto/16 :goto_23

    :cond_33
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    .line 93
    sget v2, Lu0/b;->o:I

    if-eqz v2, :cond_34

    goto/16 :goto_23

    :cond_34
    if-eqz v1, :cond_5c

    .line 94
    iput v4, v0, Lk0/l1;->m:I

    .line 95
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 96
    iget-object v1, v0, Lk0/l1;->n:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    new-array v1, v4, [I

    .line 97
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [I

    .line 98
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    :sswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    const/16 v3, 0x65

    new-array v11, v10, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v10

    aput v13, v11, v8

    .line 100
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.syu.reversefrontdoor"

    .line 101
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_35

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v10

    aput v11, v3, v8

    .line 102
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v10

    aput v11, v3, v8

    .line 103
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_35
    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v10

    aput v11, v3, v8

    .line 104
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v10

    aput v11, v3, v8

    .line 105
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_10
    new-array v3, v10, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v10

    aput v7, v3, v8

    .line 106
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v10

    aput v7, v3, v8

    .line 107
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v10

    aput v6, v3, v8

    .line 108
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v10

    aput v2, v3, v8

    .line 109
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 110
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x64

    new-array v5, v10, [I

    aput v2, v5, v8

    .line 111
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 112
    sget v2, Lk0/nt;->a:I

    const v3, 0xa0046

    if-eq v2, v3, :cond_36

    const v3, 0x120046

    if-eq v2, v3, :cond_36

    const v3, 0xe0046

    if-eq v2, v3, :cond_36

    const v3, 0x60046

    if-eq v2, v3, :cond_36

    const v3, 0x70046

    if-eq v2, v3, :cond_36

    const v3, 0x80046

    if-eq v2, v3, :cond_36

    const v3, 0x90046

    if-eq v2, v3, :cond_36

    const v3, 0x130046

    if-eq v2, v3, :cond_36

    const v3, 0x140046

    if-eq v2, v3, :cond_36

    if-eq v2, v12, :cond_36

    const v3, 0x150046

    if-eq v2, v3, :cond_36

    const v3, 0x160046

    if-ne v2, v3, :cond_5c

    :cond_36
    const/16 v2, 0x66

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 113
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v10

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_7
    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 114
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 115
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 116
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 117
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_8
    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 118
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 120
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 121
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 122
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 123
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 124
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 125
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 126
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_37

    .line 127
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_23

    .line 128
    :cond_37
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_23

    :sswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v10

    .line 130
    sget v2, Lk0/nt;->a:I

    if-eq v2, v12, :cond_39

    .line 131
    sget v2, Lk0/l1;->L:I

    if-ne v2, v10, :cond_5c

    .line 132
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_5c

    if-eqz v1, :cond_38

    .line 133
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_23

    .line 134
    :cond_38
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_23

    :cond_39
    if-ne v1, v10, :cond_3a

    .line 135
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_23

    .line 136
    :cond_3a
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_23

    .line 137
    :sswitch_b
    sget v2, Lk0/nt;->a:I

    const v3, 0x40046

    if-eq v2, v3, :cond_3c

    const v3, 0xa0046

    if-eq v2, v3, :cond_3c

    const v3, 0xe0046

    if-eq v2, v3, :cond_3c

    const v3, 0x120046

    if-eq v2, v3, :cond_3c

    const v3, 0xf0046

    if-eq v2, v3, :cond_3c

    const v3, 0x100046

    if-eq v2, v3, :cond_3c

    const v3, 0x110046

    if-eq v2, v3, :cond_3c

    const v3, 0x60046

    if-eq v2, v3, :cond_3c

    const v3, 0x70046

    if-eq v2, v3, :cond_3c

    const v3, 0x80046

    if-eq v2, v3, :cond_3c

    const v3, 0x90046

    if-eq v2, v3, :cond_3c

    const v3, 0x130046

    if-eq v2, v3, :cond_3c

    const v3, 0x140046

    if-eq v2, v3, :cond_3c

    if-eq v2, v12, :cond_3c

    const v3, 0x150046

    if-eq v2, v3, :cond_3c

    const v3, 0x160046

    if-ne v2, v3, :cond_3b

    goto :goto_11

    .line 138
    :cond_3b
    iget-boolean v2, v0, Lk0/l1;->o:Z

    if-nez v2, :cond_5c

    add-int/lit8 v2, p2, 0x3

    .line 139
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x157c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_23

    :cond_3c
    :goto_11
    add-int/lit8 v2, p2, 0x2

    .line 140
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x19c0

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_23

    :sswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v7, v1, v2

    and-int/2addr v7, v5

    add-int/lit8 v9, p2, 0x3

    .line 142
    aget-byte v11, v1, v9

    and-int/2addr v11, v5

    add-int/lit8 v13, p2, 0x4

    .line 143
    aget-byte v14, v1, v13

    and-int/2addr v14, v5

    add-int/lit8 v4, p2, 0x5

    .line 144
    aget-byte v15, v1, v4

    and-int/2addr v15, v5

    if-nez v7, :cond_3e

    if-nez v11, :cond_3e

    if-nez v14, :cond_3e

    if-nez v15, :cond_3e

    .line 145
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 146
    sget v3, Lk0/nt;->a:I

    if-eq v3, v12, :cond_3d

    goto :goto_13

    .line 147
    :cond_3d
    sget v3, Lu0/b;->o:I

    if-ne v3, v10, :cond_42

    new-array v3, v6, [I

    .line 148
    fill-array-data v3, :array_6

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_13

    .line 149
    :cond_3e
    sget v8, Ll0/c0;->g:I

    if-ne v8, v7, :cond_3f

    sget v8, Ll0/c0;->h:I

    if-ne v8, v11, :cond_3f

    sget v8, Ll0/c0;->i:I

    if-ne v8, v14, :cond_3f

    sget v8, Ll0/c0;->j:I

    if-eq v8, v15, :cond_42

    .line 150
    :cond_3f
    sget v8, Lk0/nt;->a:I

    if-eq v8, v12, :cond_40

    goto :goto_12

    .line 151
    :cond_40
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_41

    new-array v6, v6, [I

    .line 152
    fill-array-data v6, :array_7

    invoke-static {v6}, Lz/k;->s([I)V

    .line 153
    :cond_41
    :goto_12
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_42

    .line 154
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 155
    sput v3, Ll0/c0;->k:I

    .line 156
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 157
    :cond_42
    :goto_13
    sput v7, Ll0/c0;->g:I

    .line 158
    sput v11, Ll0/c0;->h:I

    .line 159
    sput v14, Ll0/c0;->i:I

    .line 160
    sput v15, Ll0/c0;->j:I

    .line 161
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/l1;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 162
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/l1;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 163
    aget-byte v2, v1, v13

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/l1;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 164
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lk0/l1;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_23

    :sswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 165
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/l1;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 166
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/l1;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 167
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/l1;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 168
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lk0/l1;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_23

    :sswitch_e
    add-int/lit8 v2, p2, 0x2

    .line 169
    aget-byte v2, v1, v2

    const/16 v13, 0xd

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v8

    .line 170
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v8

    .line 171
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xc

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v8

    .line 172
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x41

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x1

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v8

    .line 173
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x0

    and-int/2addr v14, v10

    aput v14, v13, v8

    const/16 v14, 0x10

    .line 174
    invoke-static {v14, v13}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x15

    new-array v14, v10, [I

    add-int/lit8 v16, p2, 0x3

    .line 175
    aget-byte v16, v1, v16

    aput v16, v14, v8

    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v13, p2, 0x4

    .line 176
    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    .line 177
    sget v14, Lk0/nt;->a:I

    const v11, 0x40046

    if-eq v14, v11, :cond_44

    const v11, 0x60046

    if-eq v14, v11, :cond_44

    const v11, 0x70046

    if-eq v14, v11, :cond_44

    const v11, 0x80046

    if-eq v14, v11, :cond_44

    const v11, 0x90046

    if-eq v14, v11, :cond_44

    const v11, 0xa0046

    if-eq v14, v11, :cond_44

    const v11, 0xf0046

    if-eq v14, v11, :cond_44

    const v11, 0x100046

    if-eq v14, v11, :cond_44

    const v11, 0x110046

    if-eq v14, v11, :cond_44

    const v11, 0x120046

    if-eq v14, v11, :cond_44

    const v11, 0x130046

    if-eq v14, v11, :cond_44

    const v11, 0x140046

    if-eq v14, v11, :cond_44

    if-eq v14, v12, :cond_44

    const v11, 0x150046

    if-eq v14, v11, :cond_44

    const v11, 0x160046

    if-ne v14, v11, :cond_43

    goto :goto_14

    :cond_43
    const/16 v11, 0x35

    new-array v14, v10, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v10

    aput v2, v14, v8

    .line 178
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_44
    :goto_14
    const/16 v11, 0x35

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v8

    .line 179
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xe

    new-array v14, v10, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v10

    aput v2, v14, v8

    .line 180
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    :goto_15
    if-eqz v13, :cond_49

    if-eq v13, v10, :cond_48

    if-eq v13, v7, :cond_47

    if-eq v13, v9, :cond_46

    if-eq v13, v6, :cond_45

    move v2, v8

    move v4, v2

    :goto_16
    move v11, v4

    goto :goto_17

    :cond_45
    move v4, v8

    move v2, v10

    move v11, v2

    goto :goto_17

    :cond_46
    move v4, v8

    move v11, v4

    move v2, v10

    goto :goto_17

    :cond_47
    move v2, v8

    move v4, v2

    move v11, v10

    goto :goto_17

    :cond_48
    move v2, v8

    move v4, v10

    goto :goto_16

    :cond_49
    move v2, v8

    move v11, v2

    move v4, v10

    :goto_17
    const/16 v13, 0x12

    new-array v14, v10, [I

    aput v2, v14, v8

    .line 181
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v13, v10, [I

    aput v4, v13, v8

    .line 182
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    aput v11, v4, v8

    .line 183
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v4, v10, [I

    add-int/lit8 v11, p2, 0x5

    .line 184
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v4, v10, [I

    add-int/lit8 v11, p2, 0x6

    .line 185
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 186
    sget v2, Lk0/nt;->a:I

    const v4, 0x40046

    if-eq v2, v4, :cond_4a

    const v4, 0x60046

    if-eq v2, v4, :cond_4a

    const v4, 0x70046

    if-eq v2, v4, :cond_4a

    const v4, 0x80046

    if-eq v2, v4, :cond_4a

    const v4, 0x90046

    if-eq v2, v4, :cond_4a

    const v4, 0xa0046

    if-eq v2, v4, :cond_4a

    const v4, 0xf0046

    if-eq v2, v4, :cond_4a

    const v4, 0x100046

    if-eq v2, v4, :cond_4a

    const v4, 0x110046

    if-eq v2, v4, :cond_4a

    const v4, 0x120046

    if-eq v2, v4, :cond_4a

    const v4, 0x130046

    if-eq v2, v4, :cond_4a

    const v4, 0x140046

    if-eq v2, v4, :cond_4a

    if-eq v2, v12, :cond_4a

    const v4, 0x150046

    if-eq v2, v4, :cond_4a

    const v4, 0x160046

    if-ne v2, v4, :cond_5c

    :cond_4a
    const/16 v2, 0x2a

    new-array v4, v10, [I

    add-int/lit8 v11, p2, 0x7

    .line 187
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v10

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v4, v10, [I

    .line 188
    aget-byte v12, v1, v11

    shr-int/lit8 v3, v12, 0x6

    and-int/2addr v3, v10

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 189
    aget-byte v2, v1, v11

    shr-int/2addr v2, v6

    and-int/2addr v2, v9

    if-eqz v2, :cond_4d

    if-eq v2, v10, :cond_4c

    if-eq v2, v7, :cond_4b

    move v2, v8

    :goto_18
    move v3, v2

    goto :goto_19

    :cond_4b
    move v2, v8

    move v3, v10

    goto :goto_19

    :cond_4c
    move v2, v10

    goto :goto_18

    :cond_4d
    move v3, v8

    move v2, v10

    :goto_19
    const/16 v4, 0x2e

    new-array v6, v10, [I

    aput v2, v6, v8

    .line 190
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v10, [I

    aput v3, v4, v8

    .line 191
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 192
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v10, [I

    const/16 v4, 0x9

    add-int/lit8 v4, p2, 0x9

    .line 193
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    .line 194
    :sswitch_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_5c

    add-int/lit8 v2, p2, 0x2

    .line 195
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 196
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 197
    iput v2, v0, Lk0/l1;->h:I

    .line 198
    sget v3, Lk0/nt;->a:I

    sparse-switch v3, :sswitch_data_1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v8

    goto/16 :goto_20

    :sswitch_10
    move v2, v8

    .line 199
    :goto_1a
    iget-object v3, v0, Lk0/l1;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4f

    .line 200
    iget v4, v0, Lk0/l1;->h:I

    aget-object v6, v3, v2

    aget v6, v6, v8

    if-ne v4, v6, :cond_4e

    if-eqz v4, :cond_4f

    .line 201
    iput v2, v0, Lk0/l1;->g:I

    goto :goto_1b

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_4f
    :goto_1b
    and-int/2addr v1, v5

    if-eqz v1, :cond_50

    .line 202
    array-length v1, v3

    if-ge v2, v1, :cond_5c

    .line 203
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    .line 204
    :cond_50
    iget v1, v0, Lk0/l1;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_51

    if-eq v1, v5, :cond_51

    .line 205
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 206
    :cond_51
    iput v5, v0, Lk0/l1;->g:I

    goto/16 :goto_23

    :pswitch_1
    move v2, v8

    :goto_1c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_52

    const/16 v3, 0x1e

    .line 207
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_52
    const/16 v1, 0x1e

    .line 208
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :pswitch_2
    move v2, v8

    :goto_1d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_53

    const/16 v3, 0x1f

    .line 209
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_53
    const/16 v1, 0x1f

    .line 210
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :pswitch_3
    move v2, v8

    :goto_1e
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_54

    .line 211
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 212
    :cond_54
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :pswitch_4
    move v2, v8

    :goto_1f
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_55

    .line 213
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 214
    :cond_55
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    .line 215
    :goto_20
    iget-object v3, v0, Lk0/l1;->i:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_57

    .line 216
    iget v4, v0, Lk0/l1;->h:I

    aget-object v6, v3, v2

    aget v6, v6, v8

    if-ne v4, v6, :cond_56

    if-eqz v4, :cond_57

    .line 217
    iput v2, v0, Lk0/l1;->g:I

    goto :goto_21

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_57
    :goto_21
    and-int/2addr v1, v5

    if-eqz v1, :cond_58

    .line 218
    array-length v1, v3

    if-ge v2, v1, :cond_5c

    .line 219
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    .line 220
    :cond_58
    iget v1, v0, Lk0/l1;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_59

    if-eq v1, v5, :cond_59

    .line 221
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 222
    :cond_59
    iput v5, v0, Lk0/l1;->g:I

    goto/16 :goto_23

    :sswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 223
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 224
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x407

    new-array v4, v10, [I

    shl-int/2addr v1, v14

    or-int/2addr v1, v2

    const/16 v2, 0x10

    .line 225
    div-int/2addr v1, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_12
    const/16 v2, 0x1d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 226
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v10, [I

    .line 227
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 228
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v10, [I

    .line 229
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v13

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_13
    const/16 v2, 0x99

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 230
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_14
    const/16 v2, 0x98

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 231
    aget-byte v4, v1, v4

    const/16 v7, 0x10

    shl-int/2addr v4, v7

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    shl-int/2addr v7, v14

    const v9, 0xff00

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v6, p2, 0x4

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :sswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 232
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_5b

    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_5a

    goto :goto_22

    .line 233
    :cond_5a
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x258

    .line 234
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_23

    .line 235
    :cond_5b
    :goto_22
    invoke-static {v8}, Lu0/d;->B3(I)V

    goto/16 :goto_23

    :sswitch_16
    add-int/lit8 v2, p2, 0x2

    .line 236
    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->I2(I)V

    .line 237
    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->K2(I)V

    .line 238
    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->J2(I)V

    .line 239
    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->H2(I)V

    .line 240
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->O2(I)V

    .line 241
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->Q2(I)V

    .line 242
    aget-byte v4, v1, v2

    shr-int/2addr v4, v3

    and-int/2addr v4, v9

    invoke-static {v4}, Ll0/c0;->G0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->P2(I)V

    .line 243
    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->G0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->N2(I)V

    goto/16 :goto_23

    .line 244
    :sswitch_17
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_23

    :sswitch_18
    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 245
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 246
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 247
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 248
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 249
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 250
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 251
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 252
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_5c
    :goto_23
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2e -> :sswitch_18
        -0x1 -> :sswitch_17
        0xb -> :sswitch_16
        0xd -> :sswitch_15
        0xf -> :sswitch_14
        0x11 -> :sswitch_13
        0x13 -> :sswitch_12
        0x16 -> :sswitch_11
        0x20 -> :sswitch_f
        0x21 -> :sswitch_e
        0x22 -> :sswitch_d
        0x23 -> :sswitch_c
        0x29 -> :sswitch_b
        0x30 -> :sswitch_a
        0x31 -> :sswitch_9
        0x38 -> :sswitch_8
        0x39 -> :sswitch_7
        0x3a -> :sswitch_6
        0x3c -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x66 -> :sswitch_2
        0x67 -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40046 -> :sswitch_10
        0x60046 -> :sswitch_10
        0x70046 -> :sswitch_10
        0x80046 -> :sswitch_10
        0x90046 -> :sswitch_10
        0xa0046 -> :sswitch_10
        0xf0046 -> :sswitch_10
        0x100046 -> :sswitch_10
        0x110046 -> :sswitch_10
        0x120046 -> :sswitch_10
        0x130046 -> :sswitch_10
        0x140046 -> :sswitch_10
        0x150046 -> :sswitch_10
        0x160046 -> :sswitch_10
        0x1c0046 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x20
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xb0
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xb0
        0x1
        0x80
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x20
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xb0
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xb0
        0x1
        0x80
    .end array-data
.end method

.method public W2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/l1;->b:Lo1/g0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    sget v3, Lk0/l1;->N:I

    if-eq v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {v0, v1, v3}, Lo1/g0;->g(II)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/l1;->b:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    sget v2, Lk0/l1;->O:I

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->g(II)V

    .line 6
    :cond_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/l1;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/l1;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/l1;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9b

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
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x3eb

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eq v1, v3, :cond_10

    const/16 v3, 0x405

    const/4 v7, 0x3

    const/16 v8, 0xe3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v3, :cond_a

    const v3, 0x90046

    const v12, 0x80046

    const v13, 0x70046

    const v14, 0x60046

    const v15, 0x120046

    const v4, 0xa0046

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_15

    .line 1
    array-length v1, v2

    if-lez v1, :cond_15

    .line 2
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/l1;->u3(I)V

    goto/16 :goto_4

    .line 3
    :pswitch_1
    invoke-virtual {v0, v2, v9}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_15

    new-array v1, v6, [I

    aput v8, v1, v11

    const/16 v3, 0x90

    aput v3, v1, v10

    aput v9, v1, v9

    .line 4
    aget v3, v2, v11

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 5
    :pswitch_2
    invoke-virtual {v0, v2, v9}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_15

    new-array v1, v6, [I

    aput v8, v1, v11

    const/16 v3, 0xe0

    aput v3, v1, v10

    aput v9, v1, v9

    .line 6
    aget v3, v2, v11

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_3
    if-eqz v2, :cond_15

    .line 7
    array-length v1, v2

    if-lez v1, :cond_15

    .line 8
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/l1;->v3(I)V

    goto/16 :goto_4

    :pswitch_4
    if-eqz v2, :cond_15

    .line 9
    array-length v1, v2

    if-lez v1, :cond_15

    new-array v1, v6, [I

    aput v8, v1, v11

    .line 10
    aget v3, v2, v11

    aput v3, v1, v10

    aput v9, v1, v9

    aget v3, v2, v10

    aput v3, v1, v7

    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 11
    :pswitch_5
    invoke-static {v2, v10}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 12
    sget v1, Lk0/nt;->a:I

    if-eq v1, v4, :cond_3

    if-eq v1, v15, :cond_3

    if-eq v1, v14, :cond_3

    if-eq v1, v13, :cond_3

    if-eq v1, v12, :cond_3

    if-eq v1, v3, :cond_3

    const v3, 0x140046

    if-eq v1, v3, :cond_3

    const v3, 0x1c0046

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    aget v1, v2, v11

    if-eqz v1, :cond_1

    aget v1, v2, v11

    if-ne v1, v10, :cond_2

    .line 14
    :cond_1
    aget v1, v2, v11

    sput v1, Lk0/l1;->O:I

    .line 15
    :cond_2
    sget v1, Lk0/l1;->O:I

    invoke-virtual {v0, v1}, Lk0/l1;->t3(I)V

    .line 16
    sget v1, Lk0/l1;->N:I

    sget v2, Lk0/l1;->O:I

    invoke-virtual {v0, v1, v2}, Lk0/l1;->q3(II)V

    goto/16 :goto_4

    .line 17
    :cond_3
    :goto_0
    aget v1, v2, v11

    if-ne v1, v10, :cond_4

    .line 18
    aget v1, v2, v10

    sput v1, Lk0/l1;->O:I

    .line 19
    invoke-virtual {v0, v1}, Lk0/l1;->t3(I)V

    goto :goto_1

    .line 20
    :cond_4
    aget v1, v2, v11

    if-ne v1, v9, :cond_5

    .line 21
    aget v1, v2, v10

    iput v1, v0, Lk0/l1;->J:I

    .line 22
    :cond_5
    :goto_1
    sget v1, Lk0/l1;->N:I

    sget v2, Lk0/l1;->O:I

    iget v3, v0, Lk0/l1;->J:I

    invoke-virtual {v0, v1, v2, v3}, Lk0/l1;->r3(III)V

    goto/16 :goto_4

    .line 23
    :pswitch_6
    invoke-static {v2, v10}, Lk0/qt;->l0([II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 24
    sget v1, Lk0/nt;->a:I

    if-eq v1, v4, :cond_9

    if-eq v1, v15, :cond_9

    if-eq v1, v14, :cond_9

    if-eq v1, v13, :cond_9

    if-eq v1, v12, :cond_9

    if-ne v1, v3, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    aget v1, v2, v11

    if-lt v1, v10, :cond_7

    aget v1, v2, v11

    if-le v1, v7, :cond_8

    .line 26
    :cond_7
    aput v5, v2, v11

    .line 27
    :cond_8
    aget v1, v2, v11

    sput v1, Lk0/l1;->N:I

    .line 28
    sget v2, Lk0/l1;->O:I

    invoke-virtual {v0, v1, v2}, Lk0/l1;->q3(II)V

    .line 29
    sget v1, Lk0/l1;->N:I

    invoke-virtual {v0, v1}, Lk0/l1;->s3(I)V

    goto/16 :goto_4

    .line 30
    :cond_9
    :goto_2
    aget v1, v2, v11

    sput v1, Lk0/l1;->N:I

    .line 31
    invoke-virtual {v0, v1}, Lk0/l1;->s3(I)V

    .line 32
    sget v1, Lk0/l1;->N:I

    sget v2, Lk0/l1;->O:I

    iget v3, v0, Lk0/l1;->J:I

    invoke-virtual {v0, v1, v2, v3}, Lk0/l1;->r3(III)V

    goto/16 :goto_4

    .line 33
    :cond_a
    invoke-virtual {v0, v2, v9}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 34
    sget v1, Lk0/nt;->a:I

    const v3, 0xd0046

    const/16 v4, 0x1e0

    if-eq v1, v3, :cond_c

    const v3, 0x1a0046

    if-ne v1, v3, :cond_b

    goto :goto_3

    .line 35
    :cond_b
    aget v1, v2, v10

    mul-int/lit16 v1, v1, 0x320

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 36
    aget v2, v2, v9

    mul-int/2addr v2, v4

    invoke-static {}, La/f;->i()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x7

    new-array v3, v3, [I

    aput v8, v3, v11

    aput v8, v3, v10

    aput v6, v3, v9

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v7

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v5

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v6

    const/4 v1, 0x6

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v1

    .line 37
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 38
    :cond_c
    :goto_3
    aget v1, v2, v10

    .line 39
    aget v3, v2, v9

    .line 40
    aget v2, v2, v11

    if-nez v2, :cond_15

    const/16 v2, 0x168

    if-ge v1, v2, :cond_d

    const/16 v6, 0x96

    if-ge v3, v6, :cond_d

    new-array v1, v5, [I

    .line 41
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_d
    const/16 v6, 0x1c2

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_e

    if-ge v3, v6, :cond_e

    if-le v3, v7, :cond_e

    new-array v1, v5, [I

    .line 42
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_e
    if-ge v1, v6, :cond_f

    const/16 v8, 0xdc

    if-le v1, v8, :cond_f

    if-ge v3, v6, :cond_f

    if-le v3, v7, :cond_f

    new-array v1, v5, [I

    .line 43
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_f
    if-ge v1, v2, :cond_15

    if-le v3, v4, :cond_15

    new-array v1, v5, [I

    .line 44
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 45
    :cond_10
    sget v1, Lk0/nt;->a:I

    const v2, 0x1c0046

    if-eq v1, v2, :cond_13

    .line 46
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_15

    .line 47
    sget v1, Lk0/nt;->a:I

    const-wide/16 v2, 0xc8

    sparse-switch v1, :sswitch_data_0

    .line 48
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-array v1, v6, [I

    .line 49
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    .line 50
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v1, v6, [I

    .line 51
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :sswitch_0
    new-array v1, v6, [I

    .line 52
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 53
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v1, v6, [I

    .line 54
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 55
    :sswitch_1
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 56
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_4

    .line 57
    :cond_11
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 58
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_4

    .line 59
    :cond_12
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-array v1, v6, [I

    .line 60
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    .line 61
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v1, v6, [I

    .line 62
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 63
    :cond_13
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_14

    new-array v1, v5, [I

    .line 64
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_14
    new-array v1, v5, [I

    .line 65
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_15
    :goto_4
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

    :sswitch_data_0
    .sparse-switch
        0x40046 -> :sswitch_1
        0x60046 -> :sswitch_1
        0x70046 -> :sswitch_1
        0x80046 -> :sswitch_1
        0x90046 -> :sswitch_1
        0xa0046 -> :sswitch_1
        0xd0046 -> :sswitch_0
        0xf0046 -> :sswitch_1
        0x100046 -> :sswitch_1
        0x110046 -> :sswitch_1
        0x120046 -> :sswitch_1
        0x130046 -> :sswitch_1
        0x140046 -> :sswitch_1
        0x150046 -> :sswitch_1
        0x160046 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xa7
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xa7
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xa7
        0x1
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xa7
        0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x20
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x40
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x20
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xb0
        0x1
        0x80
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xb0
        0x1
        0x0
    .end array-data
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x20

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x32

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    :cond_3
    :goto_0
    return v0
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

.method public final d3(I)V
    .locals 7

    .line 1
    iget v0, p0, Lk0/l1;->z:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/l1;->M:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/l1;->u:I

    .line 3
    iget v3, p0, Lk0/l1;->t:I

    const/16 v4, 0xb

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xe3

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x84

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x3

    .line 4
    aget v0, v1, v0

    aput v0, v4, v5

    const/4 v0, 0x4

    and-int/lit16 v1, v2, 0xff

    aput v1, v4, v0

    const/4 v0, 0x5

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/4 v0, 0x6

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/4 v0, 0x7

    and-int/lit16 v1, v3, 0xff

    aput v1, v4, v0

    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v6

    const/16 v0, 0x9

    shr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xa

    aput p1, v4, v0

    invoke-static {v4}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final q3(II)V
    .locals 1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0xe3

    aput v0, p1, p2

    const/4 p2, 0x1

    const/16 v0, -0x7b

    aput v0, p1, p2

    const/4 p2, 0x2

    aput p2, p1, p2

    .line 1
    sget p2, Lk0/l1;->N:I

    int-to-byte p2, p2

    const/4 v0, 0x3

    aput p2, p1, v0

    sget p2, Lk0/l1;->O:I

    int-to-byte p2, p2

    const/4 v0, 0x4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public final r3(III)V
    .locals 2

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0xe3

    aput v0, p1, p2

    const/16 p2, -0x7b

    const/4 v0, 0x1

    aput p2, p1, v0

    const/4 p2, 0x2

    aput p2, p1, p2

    .line 1
    sget p2, Lk0/l1;->N:I

    int-to-byte p2, p2

    const/4 v1, 0x3

    aput p2, p1, v1

    sget p2, Lk0/l1;->O:I

    and-int/2addr p2, v0

    shl-int/2addr p2, v0

    and-int/2addr p3, v0

    or-int/2addr p2, p3

    shl-int/lit8 p2, p2, 0x6

    const/4 p3, 0x4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public s3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/l1;->N:I

    .line 2
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/l1;->N:I

    if-eq p1, v2, :cond_0

    .line 3
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0x62

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 4
    sget v2, Lk0/l1;->N:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public t3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/l1;->O:I

    .line 2
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/l1;->O:I

    if-eq p1, v2, :cond_0

    .line 3
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0x63

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 4
    sget v2, Lk0/l1;->O:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public final u3(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/l1;->L:I

    const/16 v2, 0x9a

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 2
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/l1;->L:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final v3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/l1;->K:I

    const/16 v2, 0x67

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/l1;->K:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/l1;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
