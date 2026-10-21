.class public Lk0/sd;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static N:I = 0x0

.field public static O:I = 0x0

.field public static P:I = 0xff


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:Ljava/lang/Runnable;

.field public I:Z

.field public J:Ljava/lang/Runnable;

.field public K:I

.field public L:Z

.field public M:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Z

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public final v:I

.field public final w:I

.field public x:Lo1/g0;

.field public y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/sd;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/sd;->d:I

    const/16 v1, 0xe

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

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v12, 0xb

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v12, 0xc

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v12, 0xd

    aput-object v3, v1, v12

    iput-object v1, p0, Lk0/sd;->e:[[I

    .line 5
    iput v0, p0, Lk0/sd;->g:I

    new-array v1, v11, [[I

    new-array v3, v2, [I

    .line 6
    fill-array-data v3, :array_e

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v10

    iput-object v1, p0, Lk0/sd;->h:[[I

    .line 7
    new-instance v1, Lk0/sd$c;

    invoke-direct {v1, p0}, Lk0/sd$c;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lk0/sd;->j:I

    .line 9
    new-instance v1, Lk0/sd$d;

    invoke-direct {v1, p0}, Lk0/sd$d;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->k:Ljava/lang/Runnable;

    .line 10
    iput v0, p0, Lk0/sd;->l:I

    .line 11
    iput v0, p0, Lk0/sd;->m:I

    .line 12
    new-instance v1, Lk0/sd$e;

    invoke-direct {v1, p0}, Lk0/sd$e;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->n:Ljava/lang/Runnable;

    .line 13
    iput v7, p0, Lk0/sd;->o:I

    .line 14
    new-instance v1, Lk0/sd$f;

    invoke-direct {v1, p0}, Lk0/sd$f;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/sd$g;

    invoke-direct {v1, p0}, Lk0/sd$g;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->q:Ljava/lang/Runnable;

    .line 16
    iput-boolean v0, p0, Lk0/sd;->r:Z

    .line 17
    iput v0, p0, Lk0/sd;->s:I

    .line 18
    new-instance v1, Lk0/sd$h;

    invoke-direct {v1, p0}, Lk0/sd$h;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/sd$i;

    invoke-direct {v1, p0}, Lk0/sd$i;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->u:Ljava/lang/Runnable;

    .line 20
    iput v4, p0, Lk0/sd;->v:I

    .line 21
    iput v2, p0, Lk0/sd;->w:I

    .line 22
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/sd;->x:Lo1/g0;

    .line 23
    new-instance v1, Lk0/sd$j;

    invoke-direct {v1, p0}, Lk0/sd$j;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->y:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/sd$k;

    invoke-direct {v1, p0}, Lk0/sd$k;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->H:Ljava/lang/Runnable;

    .line 25
    iput-boolean v4, p0, Lk0/sd;->I:Z

    .line 26
    new-instance v1, Lk0/sd$b;

    invoke-direct {v1, p0}, Lk0/sd$b;-><init>(Lk0/sd;)V

    iput-object v1, p0, Lk0/sd;->J:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lk0/sd;->K:I

    .line 28
    iput-boolean v0, p0, Lk0/sd;->L:Z

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lk0/sd;->M:Ljava/lang/String;

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
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x16
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x30
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x40
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x60
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0x70
        0x6
    .end array-data

    :array_14
    .array-data 4
        0x80
        0x9
    .end array-data

    :array_15
    .array-data 4
        0x82
        0x3f
    .end array-data

    :array_16
    .array-data 4
        0x83
        0x19
    .end array-data
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lk0/sd;->N:I

    return v0
.end method

.method public static synthetic d3()I
    .locals 1

    .line 1
    sget v0, Lk0/sd;->O:I

    return v0
.end method

.method public static synthetic e3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->G:I

    return p0
.end method

.method public static synthetic f3(Lk0/sd;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sd;->a3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/sd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/sd;->L:Z

    return p0
.end method

.method public static synthetic h3(Lk0/sd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/sd;->L:Z

    return p1
.end method

.method public static synthetic i3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->K:I

    return p0
.end method

.method public static synthetic j3(Lk0/sd;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/sd;->K:I

    return p1
.end method

.method public static synthetic k3(Lk0/sd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/sd;->M:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l3(Lk0/sd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sd;->M:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m3(Lk0/sd;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/sd;->x3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic n3(Lk0/sd;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/sd;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic o3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->z:I

    return p0
.end method

.method public static synthetic p3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->A:I

    return p0
.end method

.method public static synthetic q3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->C:I

    return p0
.end method

.method public static synthetic r3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->B:I

    return p0
.end method

.method public static synthetic s3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->D:I

    return p0
.end method

.method public static synthetic t3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->E:I

    return p0
.end method

.method public static synthetic u3(Lk0/sd;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sd;->F:I

    return p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/sd;->x:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v3, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v3, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v1, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/sd;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v1, p0, Lk0/sd;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v3, p0, Lk0/sd;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/sd;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v1, p0, Lk0/sd;->n:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x5c

    const/16 v4, 0x5d

    const-string v5, "com.syu.canbus"

    const/4 v6, 0x0

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_0

    sparse-switch v1, :sswitch_data_0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v2, v0, Lk0/mt;->f:I

    .line 16
    iput v2, v0, Lk0/mt;->g:I

    .line 17
    iput v2, v0, Lk0/mt;->o:I

    .line 18
    iput v6, v0, Lk0/mt;->i:I

    .line 19
    iput v6, v0, Lk0/mt;->r:I

    goto :goto_0

    .line 20
    :pswitch_0
    iget-object v0, p0, Lk0/sd;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 22
    iput v2, v0, Lk0/mt;->e:I

    .line 23
    iput v6, v0, Lk0/mt;->f:I

    .line 24
    iput v6, v0, Lk0/mt;->g:I

    .line 25
    iput v6, v0, Lk0/mt;->o:I

    .line 26
    iput v6, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 27
    :pswitch_1
    iget-object v1, p0, Lk0/sd;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 29
    iput v2, v0, Lk0/mt;->e:I

    .line 30
    iput v6, v0, Lk0/mt;->f:I

    .line 31
    iput v6, v0, Lk0/mt;->g:I

    .line 32
    iput v6, v0, Lk0/mt;->o:I

    .line 33
    iput v6, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 34
    :pswitch_2
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 35
    iput v2, v0, Lk0/mt;->e:I

    .line 36
    iput v2, v0, Lk0/mt;->f:I

    .line 37
    iput v2, v0, Lk0/mt;->g:I

    .line 38
    iput v6, v0, Lk0/mt;->o:I

    .line 39
    iput v6, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 40
    :cond_0
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 41
    iput v2, v0, Lk0/mt;->e:I

    .line 42
    iput v2, v0, Lk0/mt;->f:I

    .line 43
    iput v2, v0, Lk0/mt;->g:I

    .line 44
    iput v2, v0, Lk0/mt;->o:I

    .line 45
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 46
    :cond_1
    :pswitch_4
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 47
    iput v2, v0, Lk0/mt;->e:I

    .line 48
    iput v2, v0, Lk0/mt;->f:I

    .line 49
    iput v2, v0, Lk0/mt;->g:I

    .line 50
    iput v2, v0, Lk0/mt;->o:I

    .line 51
    iput v2, v0, Lk0/mt;->i:I

    .line 52
    iput v2, v0, Lk0/mt;->r:I

    .line 53
    :goto_0
    sget v0, Lk0/nt;->c:I

    if-eq v0, v4, :cond_2

    const/16 v1, 0x69

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 54
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v6, v1, Lk0/mt;->q:I

    goto :goto_1

    .line 55
    :cond_2
    :pswitch_5
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->q:I

    :goto_1
    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    .line 56
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v6, v0, Lk0/mt;->l:I

    goto :goto_2

    .line 57
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->l:I

    .line 58
    :goto_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_4

    .line 59
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v6, v0, Lk0/mt;->i:I

    .line 60
    iput v2, v0, Lk0/mt;->q:I

    .line 61
    iget-object v0, p0, Lk0/sd;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 62
    :cond_4
    sget v0, Lk0/nt;->a:I

    const v1, 0x40192

    const/16 v3, 0x13

    const/16 v4, 0x9

    if-eq v0, v1, :cond_8

    const v1, 0x50192

    if-eq v0, v1, :cond_8

    const v1, 0x60192

    if-eq v0, v1, :cond_8

    const v1, 0x70192

    if-eq v0, v1, :cond_8

    const v1, 0x80192

    if-eq v0, v1, :cond_8

    const v1, 0x90192

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    const v1, 0xa0192

    const/16 v5, 0x15

    if-eq v0, v1, :cond_7

    const v1, 0x690192

    if-eq v0, v1, :cond_7

    const v1, 0xb0192

    if-eq v0, v1, :cond_7

    const v1, 0x5d0192

    if-eq v0, v1, :cond_7

    const v1, 0x6a0192

    if-eq v0, v1, :cond_7

    const v1, 0xc0192

    if-eq v0, v1, :cond_7

    const v1, 0xd0192

    if-eq v0, v1, :cond_7

    const v1, 0xe0192

    if-eq v0, v1, :cond_7

    const v1, 0xf0192

    if-eq v0, v1, :cond_7

    const v1, 0x100192

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v0, 0x20

    .line 63
    iput v0, p0, Lk0/sd;->z:I

    const/16 v0, 0x21

    .line 64
    iput v0, p0, Lk0/sd;->A:I

    const/16 v0, 0x1f

    .line 65
    iput v0, p0, Lk0/sd;->B:I

    const/16 v0, 0x1e

    .line 66
    iput v0, p0, Lk0/sd;->C:I

    .line 67
    iput v5, p0, Lk0/sd;->D:I

    .line 68
    iput v3, p0, Lk0/sd;->E:I

    const/16 v0, 0x11

    .line 69
    iput v0, p0, Lk0/sd;->F:I

    .line 70
    iput v4, p0, Lk0/sd;->G:I

    goto :goto_5

    .line 71
    :cond_7
    :goto_3
    iput v2, p0, Lk0/sd;->F:I

    const/4 v0, 0x6

    .line 72
    iput v0, p0, Lk0/sd;->D:I

    const/16 v0, 0xc

    .line 73
    iput v0, p0, Lk0/sd;->z:I

    const/16 v0, 0xb

    .line 74
    iput v0, p0, Lk0/sd;->A:I

    const/16 v0, 0xd

    .line 75
    iput v0, p0, Lk0/sd;->B:I

    const/16 v0, 0xe

    .line 76
    iput v0, p0, Lk0/sd;->C:I

    .line 77
    iput v5, p0, Lk0/sd;->E:I

    .line 78
    iput v6, p0, Lk0/sd;->G:I

    goto :goto_5

    .line 79
    :cond_8
    :goto_4
    iput v4, p0, Lk0/sd;->z:I

    const/16 v0, 0xa

    .line 80
    iput v0, p0, Lk0/sd;->A:I

    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lk0/sd;->B:I

    const/4 v0, 0x2

    .line 82
    iput v0, p0, Lk0/sd;->C:I

    .line 83
    iput v3, p0, Lk0/sd;->D:I

    const/16 v0, 0x19

    .line 84
    iput v0, p0, Lk0/sd;->E:I

    const/16 v0, 0x17

    .line 85
    iput v0, p0, Lk0/sd;->F:I

    .line 86
    iput v2, p0, Lk0/sd;->G:I

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x3f -> :sswitch_1
        0x42 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4b -> :sswitch_1
        0x4e -> :sswitch_1
        0x51 -> :sswitch_1
        0x54 -> :sswitch_1
        0x57 -> :sswitch_1
        0x5a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x63
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x7f

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_55

    const/16 v3, -0x7e

    if-eq v2, v3, :cond_54

    const/16 v3, 0x3d

    const/16 v8, 0x41

    const/16 v13, 0xc

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v11, 0x2

    if-eq v2, v3, :cond_52

    const/16 v3, 0x3e

    const/4 v4, 0x3

    if-eq v2, v3, :cond_42

    const/16 v3, 0x40

    if-eq v2, v3, :cond_41

    const/4 v3, 0x4

    if-eq v2, v8, :cond_3e

    sparse-switch v2, :sswitch_data_0

    const/16 v10, 0x12

    const/16 v12, 0xb

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_14

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v5, v1, v2

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v6}, Lk0/qt;->a(I)V

    .line 5
    :goto_0
    aget-byte v1, v1, v2

    if-eq v1, v7, :cond_4

    if-eq v1, v11, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto/16 :goto_14

    :cond_1
    const/16 v1, 0x3f5

    new-array v2, v7, [I

    aput v11, v2, v6

    .line 6
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2
    const/16 v1, 0x3f5

    new-array v2, v7, [I

    aput v4, v2, v6

    .line 7
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_3
    const/16 v1, 0x3f5

    new-array v2, v7, [I

    aput v7, v2, v6

    .line 8
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_4
    const/16 v1, 0x3f5

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 9
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_1
    const/16 v2, 0xb7

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 10
    aget-byte v9, v1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v5, v7, [I

    .line 11
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v5, v7, [I

    .line 12
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v5, v7, [I

    .line 13
    aget-byte v9, v1, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v5, v7, [I

    .line 14
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v5, v7, [I

    .line 15
    aget-byte v9, v1, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v5, v7, [I

    .line 16
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v5, v7, [I

    .line 17
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 18
    aget-byte v9, v1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v5, v7, [I

    .line 19
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v5, v7, [I

    .line 20
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v5, v7, [I

    .line 21
    aget-byte v9, v1, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v5, v7, [I

    .line 22
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v4

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 23
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v5, v7, [I

    .line 24
    aget-byte v9, v1, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v5, v7, [I

    .line 25
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v5, v7, [I

    .line 26
    aget-byte v9, v1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v5, v7, [I

    .line 27
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v5, v7, [I

    .line 28
    aget-byte v8, v1, v8

    shr-int/2addr v8, v3

    and-int/2addr v8, v4

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd0

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 29
    aget-byte v9, v1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v5, v7, [I

    .line 30
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v5, v7, [I

    .line 31
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v5, v7, [I

    .line 32
    aget-byte v9, v1, v8

    shr-int/lit8 v3, v9, 0x4

    and-int/2addr v3, v7

    aput v3, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v7, [I

    .line 33
    aget-byte v5, v1, v8

    shr-int/2addr v5, v4

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v3, v7, [I

    .line 34
    aget-byte v5, v1, v8

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v3, v7, [I

    .line 35
    aget-byte v5, v1, v8

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 36
    aget-byte v2, v1, v2

    if-nez v2, :cond_5

    add-int/lit8 v2, p2, 0x6

    aget-byte v1, v1, v2

    if-eqz v1, :cond_6

    :cond_5
    move v6, v7

    .line 37
    :cond_6
    iget v1, v0, Lk0/sd;->m:I

    if-eq v1, v6, :cond_56

    .line 38
    iput v6, v0, Lk0/sd;->m:I

    if-ne v6, v7, :cond_7

    .line 39
    invoke-virtual/range {p0 .. p0}, Lk0/sd;->v3()V

    goto/16 :goto_14

    .line 40
    :cond_7
    iput v4, v0, Lk0/sd;->l:I

    goto/16 :goto_14

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_2

    :pswitch_3
    goto/16 :goto_14

    :pswitch_4
    const/16 v2, 0xac

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 42
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_5
    const/16 v2, 0xab

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 43
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_6
    const/16 v2, 0xaa

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 44
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_7
    const/16 v2, 0xa9

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_8
    const/16 v2, 0xa8

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 46
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_9
    const/16 v2, 0xcb

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 47
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_a
    const/16 v2, 0xca

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 48
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_b
    const/16 v2, 0xc9

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 49
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_c
    const/16 v2, 0xc8

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 50
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_d
    const/16 v2, 0xc7

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 51
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_e
    const/16 v2, 0xc6

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 52
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_f
    const/16 v2, 0xc5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 53
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_10
    const/16 v2, 0xc4

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 54
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_11
    const/16 v2, 0xa7

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 55
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_12
    const/16 v2, 0xa6

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 56
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_13
    const/16 v2, 0xa5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 57
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_14
    const/16 v2, 0xa4

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 60
    aget-byte v8, v1, v8

    add-int/lit8 v10, p2, 0x4

    .line 61
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x5

    .line 62
    aget-byte v11, v1, v11

    add-int/lit8 v13, p2, 0x6

    .line 63
    aget-byte v13, v1, v13

    add-int/lit8 v15, p2, 0x7

    .line 64
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x8

    .line 65
    aget-byte v3, v1, v16

    const/16 v9, 0x90

    new-array v14, v7, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v6

    .line 66
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x91

    new-array v14, v7, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v6

    .line 67
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x64

    new-array v14, v7, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v14, v6

    .line 68
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x65

    new-array v14, v7, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v6

    .line 69
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x66

    new-array v14, v7, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v6

    .line 70
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x67

    new-array v14, v7, [I

    shr-int/lit8 v16, v2, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v6

    .line 71
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x68

    new-array v14, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v14, v6

    .line 72
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v9, v7, [I

    shr-int/lit8 v14, v8, 0x5

    and-int/lit8 v14, v14, 0x7

    aput v14, v9, v6

    .line 73
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v9, v7, [I

    shr-int/lit8 v14, v8, 0x4

    and-int/2addr v14, v7

    aput v14, v9, v6

    .line 74
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v9, v7, [I

    shr-int/lit8 v14, v8, 0x3

    and-int/2addr v14, v7

    aput v14, v9, v6

    .line 75
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v9, v7, [I

    shr-int/lit8 v14, v8, 0x2

    and-int/2addr v14, v7

    aput v14, v9, v6

    .line 76
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v9, v7, [I

    shr-int/2addr v8, v6

    and-int/2addr v8, v4

    aput v8, v9, v6

    .line 77
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 78
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 79
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x5

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 80
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 81
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x3

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 82
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v8, v7, [I

    aput v9, v8, v6

    .line 83
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x2

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 84
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v8, v7, [I

    shr-int/lit8 v9, v10, 0x0

    and-int/2addr v9, v4

    aput v9, v8, v6

    .line 85
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v8, v7, [I

    and-int/lit16 v9, v11, 0xff

    aput v9, v8, v6

    .line 86
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v8, v7, [I

    and-int/lit16 v9, v13, 0xff

    aput v9, v8, v6

    .line 87
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v8, v7, [I

    and-int/lit16 v9, v15, 0xff

    aput v9, v8, v6

    .line 88
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v8, v7, [I

    and-int/2addr v3, v5

    aput v3, v8, v6

    .line 89
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const v2, 0x10192

    .line 90
    sget v3, Lk0/nt;->a:I

    if-eq v2, v3, :cond_b

    const v2, 0x20192

    if-eq v2, v3, :cond_b

    const v2, 0x90192

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    const v2, 0x10192

    if-eq v2, v3, :cond_a

    const v2, 0x100192

    if-eq v2, v3, :cond_a

    const v2, 0x150192

    if-eq v2, v3, :cond_a

    const v2, 0x1b0192

    if-ne v2, v3, :cond_9

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v2, p2, 0x9

    .line 91
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0xa

    .line 92
    aget-byte v3, v1, v3

    add-int/lit8 v8, p2, 0xb

    .line 93
    aget-byte v1, v1, v8

    const/16 v8, 0xa0

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 94
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x92

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 95
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x93

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 96
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x94

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 97
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x95

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 98
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x96

    new-array v9, v7, [I

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x7

    aput v2, v9, v6

    .line 99
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v8, v7, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v8, v6

    .line 100
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v6

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 105
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_a
    :goto_1
    add-int/lit8 v2, p2, 0x9

    .line 106
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0xa

    .line 107
    aget-byte v3, v1, v3

    add-int/lit8 v8, p2, 0xb

    .line 108
    aget-byte v1, v1, v8

    const/16 v8, 0xa0

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 109
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x92

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 110
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x93

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 111
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x94

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 112
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x95

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 113
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x96

    new-array v9, v7, [I

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x7

    aput v2, v9, v6

    .line 114
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v8, v7, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v8, v6

    .line 115
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 116
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v6

    .line 117
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 118
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_b
    :goto_2
    add-int/lit8 v2, p2, 0x9

    .line 121
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0xa

    .line 122
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0xb

    .line 123
    aget-byte v5, v1, v5

    add-int/lit8 v8, p2, 0xc

    .line 124
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0xd

    .line 125
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0xe

    .line 126
    aget-byte v1, v1, v10

    const/16 v10, 0x75

    new-array v11, v7, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v7

    aput v12, v11, v6

    .line 127
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x76

    new-array v11, v7, [I

    const/4 v12, 0x6

    shr-int/2addr v2, v12

    and-int/2addr v2, v7

    aput v2, v11, v6

    .line 128
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v10, v7, [I

    shr-int/lit8 v11, v3, 0x7

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 129
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v10, v7, [I

    shr-int/lit8 v11, v3, 0x6

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 130
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v10, v7, [I

    shr-int/lit8 v11, v3, 0x5

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 131
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v10, v7, [I

    and-int/lit8 v3, v3, 0x7

    aput v3, v10, v6

    .line 132
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    aput v5, v3, v6

    .line 133
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    shr-int/lit8 v5, v8, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 134
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    shr-int/lit8 v5, v8, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 135
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    const/16 v4, 0xf

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 136
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 137
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 138
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 139
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    const/4 v4, 0x4

    shr-int/lit8 v4, v9, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_16
    add-int/lit8 v2, p2, 0x2

    .line 142
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->O2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 143
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->Q2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 144
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->P2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 145
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->Z0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->N2(I)V

    goto/16 :goto_14

    :pswitch_17
    add-int/lit8 v2, p2, 0x2

    .line 146
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->I2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 147
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->K2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 148
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->J2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 149
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->Z0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->H2(I)V

    goto/16 :goto_14

    .line 150
    :pswitch_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    add-int/lit8 v2, p2, 0x2

    .line 151
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 152
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 153
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 154
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    if-nez v3, :cond_c

    if-nez v8, :cond_c

    if-nez v10, :cond_c

    if-nez v12, :cond_c

    .line 155
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 156
    :cond_c
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_d

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_d

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_d

    sget v6, Ll0/c0;->j:I

    if-eq v6, v12, :cond_e

    .line 157
    :cond_d
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_e

    .line 158
    invoke-static {v7}, Lu0/d;->C2(I)V

    const/4 v6, 0x4

    .line 159
    sput v6, Ll0/c0;->k:I

    .line 160
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 161
    :cond_e
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 162
    sput v8, Ll0/c0;->h:I

    .line 163
    sput v10, Ll0/c0;->i:I

    .line 164
    sput v12, Ll0/c0;->j:I

    .line 165
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 166
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 167
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 168
    aget-byte v1, v1, v11

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->Z0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_14

    .line 169
    :pswitch_19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    add-int/lit8 v2, p2, 0x2

    .line 170
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 171
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 172
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->Z0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 173
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->Z0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_14

    .line 174
    :pswitch_1a
    sget v2, Lk0/nt;->a:I

    const v3, 0x10192

    if-eq v2, v3, :cond_18

    const v3, 0x20192

    if-ne v2, v3, :cond_f

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 175
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 176
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    add-int/lit8 v14, p2, 0x4

    .line 177
    aget-byte v14, v1, v14

    and-int/2addr v14, v5

    add-int/lit8 v15, p2, 0x5

    .line 178
    aget-byte v15, v1, v15

    and-int/2addr v15, v5

    const/16 v17, 0x6

    add-int/lit8 v17, p2, 0x6

    .line 179
    aget-byte v1, v1, v17

    and-int/2addr v1, v5

    const/16 v9, 0x36

    new-array v11, v7, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v6

    .line 180
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    .line 181
    sget v9, Lk0/nt;->a:I

    const v11, 0x860192

    if-ne v9, v11, :cond_11

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_10

    new-array v9, v7, [I

    aput v6, v9, v6

    .line 182
    invoke-static {v12, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v9, v7, [I

    aput v7, v9, v6

    .line 183
    invoke-static {v12, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v9, v7, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v7

    aput v11, v9, v6

    .line 184
    invoke-static {v12, v9}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v9, v7, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v4, v11

    aput v4, v9, v6

    .line 185
    invoke-static {v13, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v9, v7, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v7

    aput v11, v9, v6

    .line 186
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v9, v7, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v7

    aput v11, v9, v6

    .line 187
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v9, v7, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v7

    aput v11, v9, v6

    .line 188
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 189
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v4, v7, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 190
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x47

    new-array v4, v7, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 191
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x46

    new-array v4, v7, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 192
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v4, v7, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 193
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    shr-int/lit8 v8, v3, 0x2

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 194
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    shr-int/lit8 v8, v3, 0x1

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 195
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v4, v3, 0x0

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 196
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    and-int/lit16 v8, v14, 0xff

    aput v8, v4, v6

    .line 197
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    if-eqz v15, :cond_14

    const/16 v2, 0xfe

    if-eq v15, v2, :cond_13

    if-eq v15, v5, :cond_12

    new-array v2, v7, [I

    aput v15, v2, v6

    const/16 v4, 0x1b

    .line 198
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_12
    const/16 v4, 0x1b

    new-array v2, v7, [I

    const/4 v8, -0x3

    aput v8, v2, v6

    .line 199
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    const/16 v4, 0x1b

    new-array v2, v7, [I

    const/4 v8, -0x2

    aput v8, v2, v6

    .line 200
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    const/16 v4, 0x1b

    new-array v2, v7, [I

    const/4 v8, -0x1

    aput v8, v2, v6

    .line 201
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v1, :cond_17

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_16

    if-eq v1, v5, :cond_15

    new-array v2, v7, [I

    aput v1, v2, v6

    const/16 v1, 0x1c

    .line 202
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_15
    const/16 v1, 0x1c

    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 203
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_16
    const/16 v1, 0x1c

    new-array v2, v7, [I

    const/4 v4, -0x2

    aput v4, v2, v6

    .line 204
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_17
    const/16 v1, 0x1c

    new-array v2, v7, [I

    const/4 v4, -0x1

    aput v4, v2, v6

    .line 205
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v1, 0xcc

    new-array v2, v7, [I

    aput v3, v2, v6

    .line 206
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_18
    :goto_7
    add-int/lit8 v2, p2, 0x2

    .line 207
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 208
    aget-byte v3, v1, v3

    add-int/lit8 v9, p2, 0x4

    .line 209
    aget-byte v9, v1, v9

    add-int/lit8 v11, p2, 0x5

    .line 210
    aget-byte v11, v1, v11

    add-int/lit8 v14, p2, 0x6

    .line 211
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x7

    .line 212
    aget-byte v1, v1, v15

    const/16 v15, 0xcc

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 213
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v7

    aput v15, v5, v6

    .line 214
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v4

    aput v12, v5, v6

    .line 215
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v7

    aput v13, v12, v6

    .line 216
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v7

    aput v13, v12, v6

    .line 217
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v7

    aput v13, v12, v6

    .line 218
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v5, v6

    .line 219
    invoke-static {v8, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v7, [I

    shr-int/lit8 v8, v3, 0x2

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 220
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    shr-int/lit8 v8, v3, 0x1

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 221
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 222
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    const/16 v5, 0xff

    and-int/lit16 v8, v9, 0xff

    aput v8, v3, v6

    .line 223
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eqz v11, :cond_1b

    const/16 v2, 0xfe

    if-eq v11, v2, :cond_1a

    if-eq v11, v5, :cond_19

    new-array v2, v7, [I

    aput v11, v2, v6

    const/16 v3, 0x1b

    .line 224
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_19
    const/16 v3, 0x1b

    new-array v2, v7, [I

    const/4 v5, -0x3

    aput v5, v2, v6

    .line 225
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1a
    const/16 v3, 0x1b

    new-array v2, v7, [I

    const/4 v5, -0x2

    aput v5, v2, v6

    .line 226
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    const/16 v3, 0x1b

    new-array v2, v7, [I

    const/4 v5, -0x1

    aput v5, v2, v6

    .line 227
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    if-eqz v14, :cond_1e

    const/16 v2, 0xfe

    if-eq v14, v2, :cond_1d

    const/16 v2, 0xff

    if-eq v14, v2, :cond_1c

    new-array v2, v7, [I

    aput v14, v2, v6

    const/16 v3, 0x1c

    .line 228
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1c
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/4 v5, -0x3

    aput v5, v2, v6

    .line 229
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1d
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/4 v5, -0x2

    aput v5, v2, v6

    .line 230
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1e
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/4 v5, -0x1

    aput v5, v2, v6

    .line 231
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v2, 0x36

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v7, [I

    const/4 v5, 0x6

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v6

    .line 233
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_1b
    add-int/lit8 v2, p2, 0x2

    .line 234
    aget-byte v3, v1, v2

    const/16 v5, 0xff

    and-int/2addr v3, v5

    const/16 v5, 0x8f

    if-ne v3, v5, :cond_20

    .line 235
    sget v1, Lu0/b;->D:I

    if-eq v1, v13, :cond_1f

    if-eq v1, v13, :cond_56

    .line 236
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v13}, Lu0/h;->c(I)V

    goto/16 :goto_14

    :cond_1f
    if-ne v1, v13, :cond_56

    .line 237
    sget-object v1, Lu0/b;->c:Lu0/h;

    iget v2, v0, Lk0/sd;->b:I

    invoke-interface {v1, v2}, Lu0/h;->c(I)V

    goto/16 :goto_14

    .line 238
    :cond_20
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 239
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 240
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 241
    iput v2, v0, Lk0/sd;->d:I

    move v2, v6

    .line 242
    :goto_a
    iget-object v3, v0, Lk0/sd;->e:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_22

    .line 243
    iget v5, v0, Lk0/sd;->d:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_21

    if-eqz v5, :cond_22

    .line 244
    iput v2, v0, Lk0/sd;->c:I

    goto :goto_b

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 245
    :cond_22
    :goto_b
    iget v5, v0, Lk0/sd;->d:I

    const/4 v8, 0x6

    if-eq v5, v8, :cond_2e

    const/16 v8, 0x9

    if-eq v5, v8, :cond_2c

    const/16 v8, 0xa

    if-eq v5, v8, :cond_2c

    const/16 v8, 0x13

    if-eq v5, v8, :cond_29

    const/16 v8, 0x14

    if-eq v5, v8, :cond_26

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_23

    .line 246
    array-length v1, v3

    if-ge v2, v1, :cond_56

    .line 247
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_23
    if-nez v1, :cond_56

    .line 248
    iget v1, v0, Lk0/sd;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_24

    const/16 v2, 0xff

    if-eq v1, v2, :cond_25

    .line 249
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_24
    const/16 v2, 0xff

    .line 250
    :cond_25
    :goto_c
    iput v2, v0, Lk0/sd;->c:I

    goto/16 :goto_14

    :cond_26
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_56

    .line 251
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_28

    .line 252
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_27

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    if-eq v1, v15, :cond_27

    .line 253
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 254
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_27
    const/16 v1, 0x1a

    .line 255
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 256
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_28
    const/4 v2, 0x4

    .line 257
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 258
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_29
    const/4 v2, 0x4

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v7, :cond_56

    .line 259
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x5e

    if-ne v1, v3, :cond_2b

    .line 260
    sget v1, Lh0/c;->E:I

    if-eq v1, v2, :cond_2a

    .line 261
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 262
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 263
    :cond_2a
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 264
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 265
    :cond_2b
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 266
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_2c
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_56

    .line 267
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_2d

    if-eq v1, v15, :cond_2d

    .line 268
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 269
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_2d
    const/16 v1, 0x1a

    .line 270
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 271
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 272
    :cond_2e
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_30

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_2f

    .line 273
    invoke-static {v6, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_2f
    if-nez v1, :cond_56

    .line 274
    invoke-static {v6, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_30
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_56

    .line 275
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 276
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 277
    :sswitch_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_14

    :sswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 278
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v7, :cond_34

    if-eq v2, v4, :cond_33

    const/16 v3, 0x8

    if-eq v2, v3, :cond_32

    const/16 v5, 0xa

    if-eq v2, v5, :cond_31

    goto/16 :goto_14

    :cond_31
    add-int/lit8 v2, p2, 0x4

    .line 279
    aget-byte v2, v1, v2

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/4 v2, 0x4

    div-int/2addr v1, v2

    const/16 v2, 0x408

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 280
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_32
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 281
    aget-byte v3, v1, v3

    add-int/lit8 v2, p2, 0x4

    .line 282
    aget-byte v1, v1, v2

    const/16 v2, 0x21c

    .line 283
    invoke-static {v3, v1, v7, v2}, Lk0/qt;->i(IIZI)V

    .line 284
    iput-boolean v7, v0, Lk0/sd;->r:Z

    goto/16 :goto_14

    :cond_33
    add-int/lit8 v2, p2, 0x4

    .line 285
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 286
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 287
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v11, [I

    aput v7, v4, v6

    aput v1, v4, v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_34
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 288
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_35

    add-int/lit8 v2, p2, 0x3

    .line 289
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_14

    :cond_35
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 290
    aget-byte v5, v1, v3

    shr-int/lit8 v4, v5, 0x3

    and-int/2addr v4, v7

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v7

    invoke-static {v4, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_14

    :sswitch_2
    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 291
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 292
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 293
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 294
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 295
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 296
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_14

    :pswitch_1c
    const/16 v2, 0x34

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 297
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_1d
    const/16 v2, 0x1e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 298
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_1e
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 299
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    aput v1, v2, v6

    const/16 v1, 0x20

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_1f
    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 300
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_20
    const/16 v2, 0x1f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 301
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 302
    :sswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    add-int/lit8 v2, p2, 0x2

    .line 303
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 304
    aget-byte v1, v1, v3

    .line 305
    iget-boolean v3, v0, Lk0/sd;->r:Z

    if-nez v3, :cond_56

    const/16 v3, 0x1518

    .line 306
    invoke-static {v1, v2, v6, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_14

    :sswitch_5
    const-string v2, "persist.syu.reversefrontdoor"

    .line 307
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_36

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 308
    aget-byte v5, v1, v3

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 309
    aget-byte v3, v1, v3

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_36
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 310
    aget-byte v5, v1, v3

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 311
    aget-byte v3, v1, v3

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_d
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 312
    aget-byte v5, v1, v3

    shr-int/2addr v5, v15

    and-int/2addr v5, v7

    aput v5, v2, v6

    const/4 v5, 0x4

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 313
    aget-byte v8, v1, v3

    shr-int/lit8 v5, v8, 0x4

    and-int/2addr v5, v7

    aput v5, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 314
    aget-byte v5, v1, v3

    shr-int/2addr v5, v4

    and-int/2addr v5, v7

    aput v5, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 315
    aget-byte v3, v1, v3

    shr-int/2addr v3, v11

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    .line 316
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    add-int/lit8 v2, p2, 0x3

    .line 317
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_38

    if-ne v1, v2, :cond_37

    goto :goto_e

    :cond_37
    const/16 v2, 0xa0

    if-gt v1, v2, :cond_56

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 318
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_14

    .line 319
    :cond_38
    :goto_e
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_14

    :sswitch_6
    const/16 v2, 0x9e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 320
    aget-byte v1, v1, v4

    const/16 v5, 0xff

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_7
    const/16 v2, 0x9d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 321
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 322
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 323
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 324
    iput v2, v0, Lk0/sd;->g:I

    move v2, v6

    .line 325
    :goto_f
    iget-object v3, v0, Lk0/sd;->h:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3a

    .line 326
    iget v4, v0, Lk0/sd;->g:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_39

    if-eqz v4, :cond_3a

    .line 327
    iput v2, v0, Lk0/sd;->f:I

    goto :goto_10

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_3a
    :goto_10
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_56

    .line 328
    iget v1, v0, Lk0/sd;->f:I

    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 329
    iget-object v1, v0, Lk0/sd;->h:[[I

    iget v2, v0, Lk0/sd;->f:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :sswitch_9
    const/16 v2, 0xbf

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 330
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 331
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 332
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 333
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 334
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 335
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 336
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    .line 337
    iget v4, v0, Lk0/sd;->s:I

    if-eq v4, v3, :cond_56

    if-eqz v3, :cond_3b

    .line 338
    sget v4, Ly0/f;->i:I

    if-eq v4, v7, :cond_3c

    .line 339
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 340
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto :goto_11

    :cond_3b
    if-ne v4, v7, :cond_3c

    if-nez v3, :cond_3c

    .line 341
    sget v4, Ly0/f;->i:I

    if-ne v4, v7, :cond_3c

    .line 342
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 343
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    :cond_3c
    :goto_11
    const/16 v4, 0xb4

    new-array v5, v7, [I

    .line 344
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    aput v1, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 345
    iput v3, v0, Lk0/sd;->s:I

    goto/16 :goto_14

    :sswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 346
    aget-byte v1, v1, v2

    if-ne v1, v7, :cond_3d

    .line 347
    sget v1, Lu0/b;->D:I

    if-eq v1, v13, :cond_56

    .line 348
    iput v1, v0, Lk0/sd;->b:I

    .line 349
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v13}, Lu0/h;->c(I)V

    goto/16 :goto_14

    .line 350
    :cond_3d
    sget v1, Lu0/b;->D:I

    if-ne v1, v13, :cond_56

    .line 351
    sget-object v1, Lu0/b;->c:Lu0/h;

    iget v2, v0, Lk0/sd;->b:I

    invoke-interface {v1, v2}, Lu0/h;->c(I)V

    goto/16 :goto_14

    :cond_3e
    add-int/lit8 v2, p2, 0x2

    .line 352
    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_3f

    add-int/lit8 v3, p2, 0x5

    .line 353
    aget-byte v3, v1, v3

    const/16 v5, 0x89

    new-array v8, v7, [I

    and-int/2addr v3, v7

    aput v3, v8, v6

    .line 354
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    :cond_3f
    if-ne v2, v11, :cond_40

    add-int/lit8 v3, p2, 0xe

    .line 355
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0xf

    .line 356
    aget-byte v5, v1, v5

    const/16 v8, 0x8

    shl-int/2addr v3, v8

    const v8, 0xff00

    and-int/2addr v3, v8

    const/16 v8, 0xff

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    const/16 v5, 0x62

    new-array v8, v7, [I

    const v9, 0xffff

    and-int/2addr v3, v9

    .line 357
    div-int/lit8 v3, v3, 0x64

    aput v3, v8, v6

    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x407

    new-array v8, v7, [I

    aput v3, v8, v6

    .line 358
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    :cond_40
    if-ne v2, v4, :cond_56

    add-int/lit8 v2, p2, 0x3

    .line 359
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 360
    aget-byte v1, v1, v3

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/16 v2, 0x63

    new-array v3, v7, [I

    const v4, 0xffff

    and-int/2addr v1, v4

    aput v1, v3, v6

    .line 361
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 362
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_41
    add-int/lit8 v2, p2, 0x2

    .line 363
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0xbc

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 364
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_42
    add-int/lit8 v2, p2, 0x2

    .line 365
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eqz v2, :cond_4d

    if-eq v2, v7, :cond_4c

    if-eq v2, v11, :cond_4b

    const/16 v1, 0x10

    if-eq v2, v1, :cond_4a

    const/16 v1, 0x14

    if-eq v2, v1, :cond_49

    const/16 v1, 0x20

    if-eq v2, v1, :cond_48

    const/16 v1, 0x24

    if-eq v2, v1, :cond_47

    const/16 v1, 0x30

    if-eq v2, v1, :cond_46

    const/16 v1, 0x34

    if-eq v2, v1, :cond_45

    const/16 v1, 0x40

    if-eq v2, v1, :cond_44

    const/16 v1, 0x44

    if-eq v2, v1, :cond_43

    goto/16 :goto_14

    :cond_43
    const/16 v1, 0x21

    .line 366
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 367
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_44
    const/16 v1, 0x21

    .line 368
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 369
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_45
    const/16 v1, 0x20

    .line 370
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 371
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_46
    const/16 v1, 0x20

    .line 372
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 373
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_47
    const/16 v1, 0x23

    .line 374
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 375
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_48
    const/16 v1, 0x23

    .line 376
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 377
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_49
    const/16 v1, 0x22

    .line 378
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 379
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_4a
    const/16 v1, 0x22

    .line 380
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 381
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_4b
    const/16 v1, 0x19

    .line 382
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 383
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 384
    :cond_4c
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 385
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_4d
    add-int/lit8 v2, p2, 0x3

    .line 386
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_50

    if-eq v3, v11, :cond_4e

    goto/16 :goto_14

    :cond_4e
    move v3, v6

    .line 387
    :goto_12
    aget-byte v4, v1, v2

    shr-int/2addr v4, v11

    and-int/lit8 v4, v4, 0x3f

    if-ge v3, v4, :cond_4f

    const/16 v4, 0x1f

    .line 388
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_4f
    const/16 v1, 0x1f

    .line 389
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_50
    move v3, v6

    .line 390
    :goto_13
    aget-byte v4, v1, v2

    shr-int/2addr v4, v11

    and-int/lit8 v4, v4, 0x3f

    if-ge v3, v4, :cond_51

    const/16 v4, 0x1e

    .line 391
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_51
    const/16 v1, 0x1e

    .line 392
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_52
    add-int/lit8 v2, p2, 0x2

    .line 393
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_53

    .line 394
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_14

    .line 395
    :pswitch_21
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 396
    invoke-static {v7, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 397
    :pswitch_22
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    .line 398
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 399
    :pswitch_23
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 400
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_24
    const/16 v1, 0x19

    .line 401
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 402
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_25
    const/16 v1, 0x9

    .line 403
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 404
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_26
    const/16 v1, 0x3a

    .line 405
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 406
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_27
    const/16 v1, 0xa

    .line 407
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 408
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_28
    const/4 v1, 0x6

    .line 409
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 410
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_29
    const/16 v1, 0xf

    .line 411
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 412
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 413
    :cond_53
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_56

    .line 414
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    packed-switch v1, :pswitch_data_5

    goto/16 :goto_14

    .line 415
    :pswitch_2a
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 416
    invoke-static {v7, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 417
    :pswitch_2b
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    .line 418
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 419
    :pswitch_2c
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 420
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_2d
    const/16 v1, 0x19

    .line 421
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 422
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_2e
    const/16 v1, 0x37

    .line 423
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 424
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 425
    :pswitch_2f
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 426
    invoke-static {v7, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_30
    const/16 v1, 0xa

    .line 427
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 428
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_31
    const/4 v1, 0x6

    .line 429
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 430
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_32
    const/16 v1, 0xf

    .line 431
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 432
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_54
    const/16 v2, 0xd9

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 433
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 434
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 435
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 436
    aget-byte v7, v1, v4

    and-int/2addr v7, v5

    shl-int/2addr v7, v8

    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    or-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_55
    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 437
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 438
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 439
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    const/16 v8, 0x8

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_56
    :goto_14
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71 -> :sswitch_b
        -0x6f -> :sswitch_a
        -0x6d -> :sswitch_9
        -0x60 -> :sswitch_8
        0xa -> :sswitch_7
        0x10 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x52 -> :sswitch_3
        0x61 -> :sswitch_2
        0x7d -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x70
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
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/sd;->x:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/sd;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/sd;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/sd;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/sd;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lk0/sd;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lk0/sd;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/sd;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sd;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/sd;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/sd;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/sd;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xde

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
    .locals 6

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_9

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq p1, p4, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_6

    const/16 v5, 0xa9

    if-eq p1, v1, :cond_5

    if-eq p1, v3, :cond_4

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FinalCanbus.C_CAMERA_MODE ==  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p2, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    array-length p1, p2

    if-lez p1, :cond_a

    .line 3
    aget p1, p2, p3

    if-eq p1, p4, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    new-array p1, v3, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v3, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v3, [I

    .line 6
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v3, [I

    .line 7
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x8

    new-array p1, p1, [I

    aput v0, p1, p3

    aput v5, p1, p4

    aput v3, p1, v4

    .line 9
    aget p3, p2, p3

    aput p3, p1, v2

    aget p3, p2, p4

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v3

    const/4 p3, 0x6

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v3, [I

    aput v0, p1, p3

    aput v5, p1, p4

    aput v4, p1, v4

    .line 11
    aget p3, p2, p3

    aput p3, p1, v2

    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v3, [I

    aput v0, p1, p3

    const/16 v0, 0x90

    aput v0, p1, p4

    aput v4, p1, v4

    .line 13
    aget p3, p2, p3

    aput p3, p1, v2

    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_7
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/sd;->w3(II)V

    goto :goto_0

    .line 15
    :cond_8
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v3, [I

    aput v0, p1, p3

    const/16 v0, 0x83

    aput v0, p1, p4

    aput v4, p1, v4

    .line 16
    aget p3, p2, p3

    aput p3, p1, v2

    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_9
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/sd;->b3(II)V

    :cond_a
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x83
        0x2
        0xb0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x2
        0xb0
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0xb0
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0xb0
        0x2
    .end array-data
.end method

.method public final a3(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk0/sd;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk0/sd;->I:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lk0/sd;->b3(II)V

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/sd$a;

    invoke-direct {v1, p0, p1}, Lk0/sd$a;-><init>(Lk0/sd;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b3(II)V
    .locals 9

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0xe3

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    const v8, 0x40192

    if-eq v0, v8, :cond_3

    const v8, 0x50192

    if-eq v0, v8, :cond_3

    const v8, 0x60192

    if-eq v0, v8, :cond_3

    const v8, 0x70192

    if-eq v0, v8, :cond_3

    const v8, 0x80192

    if-eq v0, v8, :cond_3

    const v8, 0x90192

    if-ne v0, v8, :cond_0

    goto :goto_1

    :cond_0
    const v8, 0x10192

    if-eq v0, v8, :cond_2

    const v8, 0x20192

    if-ne v0, v8, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v6, [I

    aput v4, v0, v5

    const/16 v4, 0xa8

    aput v4, v0, v3

    aput v7, v0, v7

    aput p1, v0, v2

    aput p2, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_2
    :goto_0
    new-array v0, v6, [I

    aput v4, v0, v5

    const/16 v4, 0x95

    aput v4, v0, v3

    aput v7, v0, v7

    aput p1, v0, v2

    aput p2, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_3
    :goto_1
    new-array v0, v6, [I

    aput v4, v0, v5

    const/16 v4, 0xe0

    aput v4, v0, v3

    aput v7, v0, v7

    aput p1, v0, v2

    aput p2, v0, v1

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void
.end method

.method public final v3()V
    .locals 3

    const-string v0, "com.syu.carinfo.rzc.keleijia.KeLeiJia_Set_SeatSet"

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

.method public final w3(II)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xbd

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, -0x23

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v4, 0x3

    aput p1, v1, v4

    const/4 v4, 0x4

    aput p2, v1, v4

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/sd;->N:I

    .line 4
    iget-object p1, p0, Lk0/sd;->x:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sd;->N:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/sd;->x:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0xbe

    new-array v0, v0, [I

    aput p2, v0, v2

    .line 6
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 7
    sput p2, Lk0/sd;->O:I

    .line 8
    iget-object p1, p0, Lk0/sd;->x:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/sd;->O:I

    if-eq p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Lk0/sd;->x:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final x3(ILjava/lang/String;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 3
    aget-char v4, p2, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, v1, 0xa

    const/4 v3, 0x4

    sub-int/2addr p2, v3

    .line 4
    new-array p2, p2, [I

    const/16 v4, -0x1d

    .line 5
    aput v4, p2, v2

    const/16 v4, -0x40

    const/4 v5, 0x1

    .line 6
    aput v4, p2, v5

    const/4 v4, 0x2

    int-to-byte v6, v1

    const/4 v7, 0x3

    add-int/2addr v6, v7

    .line 7
    aput v6, p2, v4

    const/4 v4, 0x5

    .line 8
    aput v4, p2, v7

    int-to-byte p1, p1

    .line 9
    aput p1, p2, v3

    .line 10
    aput v5, p2, v4

    const/4 p1, 0x6

    :goto_2
    if-ge v2, v1, :cond_3

    add-int v3, p1, v2

    .line 11
    aget-byte v4, v0, v2

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method
