.class public Lk0/tj;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/tj$k;
    }
.end annotation


# static fields
.field public static I:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:[[I

.field public j:F

.field public k:I

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Lk0/tj$k;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/tj;->I:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x7
        0x3
        0x8
        0x2
        0x6
        0x4
        0x6
        0x1
        0x9
        0xa
        0xc
        0x9
        0x9
        0xe
        0x9
        0xb
        0xd
        0x5
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/tj;->c:I

    .line 3
    iput v0, p0, Lk0/tj;->d:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lk0/tj;->e:Z

    .line 5
    iput-byte v1, p0, Lk0/tj;->f:B

    .line 6
    new-instance v2, Lk0/tj$b;

    invoke-direct {v2, p0}, Lk0/tj$b;-><init>(Lk0/tj;)V

    iput-object v2, p0, Lk0/tj;->g:Ljava/lang/Runnable;

    .line 7
    iput v1, p0, Lk0/tj;->h:I

    const/16 v2, 0xb

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 8
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

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

    const/4 v6, 0x4

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v6, 0x5

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v6, 0x6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v6, 0x7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v6, 0x8

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v6, 0x9

    aput-object v4, v2, v6

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iput-object v2, p0, Lk0/tj;->i:[[I

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lk0/tj;->j:F

    .line 10
    iput v0, p0, Lk0/tj;->k:I

    .line 11
    iput v0, p0, Lk0/tj;->l:I

    .line 12
    new-instance v2, Lk0/tj$c;

    invoke-direct {v2, p0}, Lk0/tj$c;-><init>(Lk0/tj;)V

    iput-object v2, p0, Lk0/tj;->m:Ljava/lang/Runnable;

    const-string v2, ""

    .line 13
    iput-object v2, p0, Lk0/tj;->o:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lk0/tj;->p:Ljava/lang/String;

    .line 15
    iput v1, p0, Lk0/tj;->q:I

    .line 16
    iput v1, p0, Lk0/tj;->r:I

    .line 17
    iput v1, p0, Lk0/tj;->s:I

    .line 18
    iput v1, p0, Lk0/tj;->t:I

    .line 19
    iput v1, p0, Lk0/tj;->u:I

    .line 20
    iput v1, p0, Lk0/tj;->v:I

    .line 21
    iput v1, p0, Lk0/tj;->w:I

    .line 22
    iput v5, p0, Lk0/tj;->x:I

    .line 23
    iput v0, p0, Lk0/tj;->y:I

    .line 24
    new-instance v0, Lk0/tj$d;

    invoke-direct {v0, p0}, Lk0/tj$d;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lk0/tj$e;

    invoke-direct {v0, p0}, Lk0/tj$e;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lk0/tj$f;

    invoke-direct {v0, p0}, Lk0/tj$f;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->B:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lk0/tj$g;

    invoke-direct {v0, p0}, Lk0/tj$g;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->C:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lk0/tj$h;

    invoke-direct {v0, p0}, Lk0/tj$h;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lk0/tj$i;

    invoke-direct {v0, p0}, Lk0/tj$i;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->E:Ljava/lang/Runnable;

    .line 30
    iput v1, p0, Lk0/tj;->F:I

    .line 31
    new-instance v0, Lk0/tj$j;

    invoke-direct {v0, p0}, Lk0/tj$j;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->G:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lk0/tj$a;

    invoke-direct {v0, p0}, Lk0/tj$a;-><init>(Lk0/tj;)V

    iput-object v0, p0, Lk0/tj;->H:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x2b
        0x5
    .end array-data
.end method

.method public static b3()V
    .locals 16

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
    invoke-static {}, Lk0/tj;->c3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    if-eq v3, v5, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget v3, Lw0/d;->h:I

    const/high16 v7, 0x10000

    sub-int v8, v3, v7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/16 v15, 0xa

    if-eqz v8, :cond_4

    sub-int v8, v3, v7

    if-eq v5, v8, :cond_4

    sub-int/2addr v3, v7

    if-ne v6, v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v3, Lw0/d;->j:I

    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 6
    rem-int/2addr v3, v15

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 7
    sget v3, Lw0/d;->i:I

    div-int/lit16 v4, v3, 0x2710

    if-nez v4, :cond_3

    .line 8
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 9
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 10
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 11
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    goto :goto_3

    .line 12
    :cond_3
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 13
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 14
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 15
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 16
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    goto :goto_3

    .line 17
    :cond_4
    :goto_1
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    .line 18
    div-int/lit8 v5, v3, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v10

    .line 19
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 20
    sget v3, Lw0/d;->i:I

    const v5, 0x186a0

    rem-int v6, v3, v5

    div-int/lit16 v6, v6, 0x2710

    if-nez v6, :cond_5

    aput v4, v1, v14

    goto :goto_2

    .line 21
    :cond_5
    rem-int v4, v3, v5

    div-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 22
    :goto_2
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 23
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    const/16 v4, 0x2e

    aput v4, v1, v11

    .line 24
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    :goto_3
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_4
    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 25
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_4

    .line 26
    :cond_6
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
    const/16 v1, 0xff

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xfe

    goto :goto_1

    :cond_0
    :pswitch_3
    move v1, v2

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_9
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_a
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic h3(Lk0/tj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/tj;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic i3(Lk0/tj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/tj;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic j3(Lk0/tj;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/tj;->v3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic k3(Lk0/tj;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/tj;->j:F

    return p0
.end method

.method public static synthetic l3(Lk0/tj;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/tj;->j:F

    return p1
.end method

.method public static synthetic m3(Lk0/tj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/tj;->l:I

    return p0
.end method

.method public static synthetic n3(Lk0/tj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/tj;->l:I

    return p1
.end method

.method public static synthetic o3(Lk0/tj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/tj;->k:I

    return p0
.end method

.method public static synthetic p3(Lk0/tj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/tj;->k:I

    return p1
.end method

.method public static synthetic q3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/tj;->I:[I

    return-object v0
.end method

.method public static synthetic r3(Lk0/tj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/tj;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic s3(Lk0/tj;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/tj;->e3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic t3(Lk0/tj;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/tj;->f3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic u3(Lk0/tj;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/tj;->g3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 13

    if-eqz p1, :cond_18

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

    const/16 v4, 0xd

    if-eq v2, v3, :cond_16

    const/16 v3, 0x2a

    const/16 v5, 0x10

    if-eq v2, v3, :cond_14

    const/16 v3, 0x44

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/16 v8, 0xa

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/4 v12, 0x7

    if-eq v2, v3, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v11}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v10}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget v1, p1, v0

    if-ne v1, v0, :cond_2

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_18

    .line 9
    invoke-virtual {p0, v12}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    aget p1, p1, v0

    if-nez p1, :cond_18

    .line 11
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v0, :cond_18

    .line 12
    invoke-virtual {p0, v12}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    aget p1, p1, v0

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_18

    .line 15
    invoke-virtual {p0, v6}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 16
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v0, :cond_18

    .line 17
    invoke-virtual {p0, v6}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_3
    aget p1, p1, v0

    const/16 v1, 0x41

    if-eqz p1, :cond_4

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_18

    .line 20
    invoke-virtual {p0, v7}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_18

    .line 22
    invoke-virtual {p0, v7}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_4
    aget p1, p1, v0

    if-eqz p1, :cond_5

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_18

    .line 25
    invoke-virtual {p0, v9}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 26
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_18

    .line 27
    invoke-virtual {p0, v9}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_5
    aget p1, p1, v0

    if-eqz p1, :cond_6

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-nez p1, :cond_18

    .line 30
    invoke-virtual {p0, v1}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 31
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-ne p1, v0, :cond_18

    .line 32
    invoke-virtual {p0, v1}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 33
    :pswitch_6
    aget p1, p1, v0

    if-eqz p1, :cond_7

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-nez p1, :cond_18

    .line 35
    invoke-virtual {p0, v9}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 36
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-ne p1, v0, :cond_18

    .line 37
    invoke-virtual {p0, v0}, Lk0/tj;->a3(I)V

    goto/16 :goto_0

    .line 38
    :cond_8
    aget v2, p1, v0

    if-ne v2, v0, :cond_9

    new-array p1, v12, [I

    .line 39
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 40
    :cond_9
    aget v2, p1, v0

    if-ne v2, v1, :cond_a

    new-array p1, v12, [I

    .line 41
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 42
    :cond_a
    aget v1, p1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    new-array p1, v12, [I

    .line 43
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 44
    :cond_b
    aget v1, p1, v0

    if-ne v1, v9, :cond_c

    new-array p1, v12, [I

    .line 45
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 46
    :cond_c
    aget v1, p1, v0

    if-ne v1, v7, :cond_d

    new-array p1, v12, [I

    .line 47
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 48
    :cond_d
    aget v1, p1, v0

    if-ne v1, v6, :cond_e

    new-array p1, v12, [I

    .line 49
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 50
    :cond_e
    aget v1, p1, v0

    if-ne v1, v12, :cond_f

    new-array p1, v12, [I

    .line 51
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 52
    :cond_f
    aget v1, p1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    new-array p1, v12, [I

    .line 53
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 54
    :cond_10
    aget v1, p1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_11

    new-array p1, v12, [I

    .line 55
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 56
    :cond_11
    aget v1, p1, v0

    if-ne v1, v8, :cond_12

    new-array p1, v12, [I

    .line 57
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 58
    :cond_12
    aget v1, p1, v0

    if-ne v1, v11, :cond_13

    new-array p1, v12, [I

    .line 59
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 60
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 61
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 62
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 63
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 64
    :cond_13
    aget p1, p1, v0

    if-ne p1, v10, :cond_18

    new-array p1, v12, [I

    .line 65
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 66
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 67
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 68
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v12, [I

    .line 69
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 70
    :cond_14
    aget p1, p1, v0

    if-eqz p1, :cond_15

    const/16 p1, 0xf

    .line 71
    invoke-virtual {p0, p1}, Lk0/tj;->a3(I)V

    goto :goto_0

    .line 72
    :cond_15
    invoke-virtual {p0, v5}, Lk0/tj;->a3(I)V

    goto :goto_0

    .line 73
    :cond_16
    aget p1, p1, v0

    if-eqz p1, :cond_17

    .line 74
    invoke-virtual {p0, v4}, Lk0/tj;->a3(I)V

    goto :goto_0

    :cond_17
    const/16 p1, 0xe

    .line 75
    invoke-virtual {p0, p1}, Lk0/tj;->a3(I)V

    :cond_18
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
        0x4
        0x6f
        0x10
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x1
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x0
        0xff
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x1
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x0
        0xff
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x1
        0xff
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x0
        0xff
        0xff
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x1
        0xff
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0xff
        0xff
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x1
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x0
        0xff
        0xff
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x0
        0xff
        0xff
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x0
        0xff
        0xff
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x0
        0xff
        0xff
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0xff
        0xff
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x1
        0xff
        0xff
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x1
        0xff
        0xff
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x1
        0xff
        0xff
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x1
        0xff
        0xff
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x1
        0xff
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 3

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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/tj;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v2, p0, Lk0/tj;->E:Ljava/lang/Runnable;

    invoke-static {v2}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v2, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/tj;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/tj;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/tj;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/tj;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    new-instance v0, Lk0/tj$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/tj$k;-><init>(Lk0/tj;Lk0/tj$b;)V

    iput-object v0, p0, Lk0/tj;->n:Lk0/tj$k;

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/tj;->n:Lk0/tj$k;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Lk0/tj;->g3()V

    .line 23
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x18

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_2d

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x1a

    const/4 v10, 0x3

    if-eq v2, v3, :cond_29

    const/16 v11, 0x35

    if-eq v2, v11, :cond_28

    const/16 v13, 0x41

    if-eq v2, v13, :cond_24

    const/16 v13, 0x61

    const/16 v14, 0xf

    if-eq v2, v13, :cond_23

    const/16 v13, 0x11

    const/16 v15, 0xc

    const/16 v3, 0xd

    const/16 v9, 0x12

    if-eq v2, v13, :cond_11

    if-eq v2, v9, :cond_10

    const/16 v13, 0x31

    if-eq v2, v13, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 3
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, v1, v2

    add-int/lit8 v13, p2, 0x3

    .line 5
    aget-byte v13, v1, v13

    add-int/lit8 v16, p2, 0x4

    .line 6
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 7
    aget-byte v5, v1, v17

    add-int/lit8 v17, p2, 0x7

    .line 8
    aget-byte v9, v1, v17

    const/16 v12, 0xa

    new-array v4, v7, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v4, v6

    .line 9
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v7

    aput v12, v4, v6

    .line 10
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v3, v7, [I

    shr-int/lit8 v4, v13, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v7, [I

    shr-int/lit8 v4, v13, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v13, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 14
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v7, [I

    shr-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v7, [I

    shr-int/lit8 v4, v13, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v16, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 17
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v4, v16, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    shr-int/lit8 v4, v16, 0x0

    and-int/2addr v4, v10

    aput v4, v3, v6

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    shr-int/lit8 v4, v16, 0x2

    and-int/2addr v4, v10

    aput v4, v3, v6

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v5, v10, :cond_6

    const/4 v2, 0x5

    if-eq v5, v2, :cond_5

    const/4 v2, 0x6

    if-eq v5, v2, :cond_4

    const/16 v2, 0xb

    if-eq v5, v2, :cond_3

    if-eq v5, v15, :cond_2

    move v2, v6

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_2
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_1

    :cond_3
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_1

    :cond_4
    move v2, v6

    move v4, v2

    move v3, v7

    goto :goto_1

    :cond_5
    move v2, v6

    move v3, v7

    goto :goto_0

    :cond_6
    move v2, v6

    move v3, v2

    move v4, v7

    :goto_1
    new-array v5, v7, [I

    aput v2, v5, v6

    const/16 v2, 0x12

    .line 21
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 22
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v9, 0xff

    aput v5, v3, v6

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 25
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0xfe

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    if-eqz v2, :cond_b

    add-int/lit8 v2, p2, 0x8

    .line 26
    aget-byte v10, v1, v2

    const/16 v11, 0xff

    and-int/2addr v10, v11

    if-ne v10, v5, :cond_7

    new-array v2, v7, [I

    aput v4, v2, v6

    .line 27
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 28
    :cond_7
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_8

    new-array v2, v7, [I

    aput v3, v2, v6

    .line 29
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v10, v7, [I

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v10, v6

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x9

    .line 31
    aget-byte v8, v1, v2

    and-int/2addr v8, v11

    if-ne v8, v5, :cond_9

    new-array v1, v7, [I

    aput v4, v1, v6

    .line 32
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 33
    :cond_9
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_a

    new-array v1, v7, [I

    aput v3, v1, v6

    .line 34
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_a
    new-array v3, v7, [I

    .line 35
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v3, v6

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_b
    const/16 v11, 0xff

    add-int/lit8 v2, p2, 0x8

    .line 36
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v5, :cond_c

    new-array v2, v7, [I

    aput v4, v2, v6

    .line 37
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 38
    :cond_c
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_d

    new-array v2, v7, [I

    aput v3, v2, v6

    .line 39
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v10, v7, [I

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v10, v6

    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 41
    aget-byte v9, v1, v2

    and-int/2addr v9, v11

    if-ne v9, v5, :cond_e

    new-array v1, v7, [I

    aput v4, v1, v6

    .line 42
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 43
    :cond_e
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_f

    new-array v1, v7, [I

    aput v3, v1, v6

    .line 44
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_f
    new-array v3, v7, [I

    .line 45
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v3, v6

    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_10
    const/16 v2, 0x99

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 46
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    .line 47
    aget-byte v5, v1, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    .line 48
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    .line 49
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    .line 50
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    .line 51
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v7, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 52
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_11
    move v4, v5

    add-int/lit8 v2, p2, 0x4

    .line 53
    aget-byte v2, v1, v2

    const/4 v5, 0x5

    add-int/lit8 v9, p2, 0x5

    .line 54
    aget-byte v1, v1, v9

    and-int/2addr v2, v4

    .line 55
    iput v2, v0, Lk0/tj;->c:I

    move v2, v6

    .line 56
    :goto_4
    iget-object v4, v0, Lk0/tj;->i:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_13

    .line 57
    iget v5, v0, Lk0/tj;->c:I

    aget-object v9, v4, v2

    aget v9, v9, v6

    if-ne v5, v9, :cond_12

    if-eqz v5, :cond_13

    .line 58
    iput v2, v0, Lk0/tj;->b:I

    .line 59
    iput v5, v0, Lk0/tj;->d:I

    goto :goto_5

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 60
    :cond_13
    :goto_5
    iget v5, v0, Lk0/tj;->c:I

    if-eqz v5, :cond_1f

    if-eq v5, v15, :cond_1d

    const/4 v9, 0x4

    if-eq v5, v9, :cond_1a

    const/4 v8, 0x5

    if-eq v5, v8, :cond_17

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    .line 61
    array-length v1, v4

    if-ge v2, v1, :cond_2f

    .line 62
    aget-object v1, v4, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 63
    :cond_14
    iget v1, v0, Lk0/tj;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_15

    const/16 v2, 0xff

    if-eq v1, v2, :cond_16

    .line 64
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_15
    const/16 v2, 0xff

    .line 65
    :cond_16
    :goto_6
    iput v2, v0, Lk0/tj;->b:I

    goto/16 :goto_b

    :cond_17
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_2f

    .line 66
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xd2

    if-eq v1, v2, :cond_18

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_18

    const/16 v1, 0x12

    .line 67
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 68
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_18
    const/16 v1, 0x12

    .line 69
    sget v2, Lh0/c;->E:I

    if-eq v2, v10, :cond_19

    const/4 v3, 0x5

    if-eq v2, v3, :cond_19

    .line 70
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_19
    const/16 v1, 0x1a

    .line 72
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 73
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_1a
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_2f

    .line 74
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xd1

    if-eq v1, v2, :cond_1b

    .line 75
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    .line 76
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 77
    :cond_1b
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    .line 78
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    .line 79
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_1c
    const/16 v1, 0x12

    .line 80
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 81
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 82
    :cond_1d
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xd2

    if-eq v2, v3, :cond_1e

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_2f

    .line 83
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 84
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 85
    :cond_1e
    iget v2, v0, Lk0/tj;->h:I

    if-eq v2, v1, :cond_2f

    .line 86
    iput v1, v0, Lk0/tj;->h:I

    if-ne v1, v7, :cond_2f

    .line 87
    iput-boolean v6, v0, Lk0/tj;->e:Z

    .line 88
    iput-byte v6, v0, Lk0/tj;->f:B

    .line 89
    iget-object v1, v0, Lk0/tj;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    .line 90
    :cond_1f
    iget v2, v0, Lk0/tj;->d:I

    if-eq v2, v15, :cond_21

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-nez v1, :cond_22

    .line 91
    iget v1, v0, Lk0/tj;->b:I

    array-length v3, v4

    if-ge v1, v3, :cond_20

    if-eq v1, v2, :cond_20

    .line 92
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 93
    :cond_20
    iput v2, v0, Lk0/tj;->b:I

    goto :goto_7

    .line 94
    :cond_21
    iget-boolean v1, v0, Lk0/tj;->e:Z

    if-nez v1, :cond_22

    .line 95
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 96
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    .line 97
    :cond_22
    :goto_7
    iget-object v1, v0, Lk0/tj;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 98
    iput-boolean v6, v0, Lk0/tj;->e:Z

    .line 99
    iput-byte v6, v0, Lk0/tj;->f:B

    .line 100
    iput v6, v0, Lk0/tj;->h:I

    .line 101
    iput v6, v0, Lk0/tj;->d:I

    goto/16 :goto_b

    :cond_23
    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 102
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 103
    aget-byte v5, v1, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 104
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 105
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 106
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 107
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 108
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 109
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 110
    aget-byte v5, v1, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 111
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 112
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 113
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 114
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 115
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 116
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 117
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 118
    aget-byte v5, v1, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    .line 119
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 120
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 121
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 122
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 123
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 124
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 125
    aget-byte v5, v1, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 126
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 127
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    .line 128
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    .line 129
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 130
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    .line 131
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 132
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    .line 133
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    .line 134
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 135
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    .line 136
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 137
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    .line 138
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 139
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 140
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 141
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v14

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    .line 142
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    .line 143
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    .line 144
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    .line 145
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 146
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    .line 147
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    .line 148
    aget-byte v5, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    .line 149
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 150
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 151
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 152
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 153
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 154
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x7

    .line 155
    aget-byte v8, v1, v5

    and-int/2addr v8, v3

    add-int/lit8 v9, p2, 0x8

    .line 156
    aget-byte v10, v1, v9

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x9

    .line 157
    aget-byte v12, v1, v11

    and-int/2addr v12, v3

    if-ne v4, v3, :cond_25

    if-ne v8, v3, :cond_25

    if-ne v10, v3, :cond_25

    if-ne v12, v3, :cond_25

    .line 158
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_8

    .line 159
    :cond_25
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_26

    sget v3, Ll0/c0;->h:I

    if-ne v3, v8, :cond_26

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_26

    sget v3, Ll0/c0;->j:I

    if-eq v3, v12, :cond_27

    .line 160
    :cond_26
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_27

    .line 161
    invoke-static {v7}, Lu0/d;->C2(I)V

    const/4 v3, 0x4

    .line 162
    sput v3, Ll0/c0;->k:I

    .line 163
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 164
    :cond_27
    :goto_8
    sput v4, Ll0/c0;->g:I

    .line 165
    sput v8, Ll0/c0;->h:I

    .line 166
    sput v10, Ll0/c0;->i:I

    .line 167
    sput v12, Ll0/c0;->j:I

    .line 168
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 169
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 170
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 171
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :cond_28
    const/16 v2, 0x95

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 172
    aget-byte v4, v1, v4

    const/4 v5, 0x6

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 173
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    .line 174
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    .line 175
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_29
    add-int/lit8 v2, p2, 0x3

    .line 176
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 177
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2a

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 178
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 179
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_2a
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 180
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 181
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 182
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x4

    .line 183
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x5

    .line 184
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 185
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 186
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2b

    add-int/lit8 v2, p2, 0x4

    .line 187
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    invoke-static {v3, v4, v2}, Ll0/c0;->b(III)V

    goto :goto_a

    :cond_2b
    add-int/lit8 v2, p2, 0x4

    .line 188
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    invoke-static {v3, v4, v2}, Ll0/c0;->a(III)V

    :goto_a
    add-int/lit8 v2, p2, 0x9

    .line 189
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_b

    .line 190
    :cond_2c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_b

    :cond_2d
    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 191
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    .line 192
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_b

    .line 193
    :cond_2e
    invoke-static {v6}, Lk0/qt;->a(I)V

    :cond_2f
    :goto_b
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tj;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lk0/tj;->H:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/tj;->E:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/tj;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/tj;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/tj;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/tj;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/tj;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x99

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 11

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v7, 0x405

    if-eq p1, v7, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v3

    mul-int/lit16 p1, p1, 0x500

    invoke-static {}, La/f;->w()I

    move-result v7

    div-int/2addr p1, v7

    .line 2
    aget v7, p2, v2

    mul-int/lit16 v7, v7, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v8

    div-int/2addr v7, v8

    .line 3
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4
    aget p2, p2, v4

    const/16 v8, 0x2c

    const/16 v9, 0x9

    const/16 v10, 0x8

    if-nez p2, :cond_1

    new-array p2, v9, [I

    aput p3, p2, v4

    aput v6, p2, v3

    aput v8, p2, v2

    aput v3, p2, v1

    shr-int/lit8 p3, p1, 0x8

    aput p3, p2, v0

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p4

    shr-int/lit8 p1, v7, 0x8

    aput p1, p2, v6

    and-int/lit16 p1, v7, 0xff

    aput p1, p2, v5

    aput v4, p2, v10

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p2, v9, [I

    aput p3, p2, v4

    aput v6, p2, v3

    aput v8, p2, v2

    aput v4, p2, v1

    shr-int/lit8 p3, p1, 0x8

    aput p3, p2, v0

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p4

    shr-int/lit8 p1, v7, 0x8

    aput p1, p2, v6

    and-int/lit16 p1, v7, 0xff

    aput p1, p2, v5

    aput v4, p2, v10

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput p3, p1, v4

    aput v2, p1, v3

    const/16 p3, 0x3b

    aput p3, p1, v2

    .line 7
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v5, [I

    aput p3, p1, v4

    aput v0, p1, v3

    const/16 p3, 0x6f

    aput p3, p1, v2

    .line 8
    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, p4

    aget p2, p2, v1

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput p3, p1, v4

    aput v2, p1, v3

    const/16 p3, 0x3d

    aput p3, p1, v2

    .line 9
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a3(I)V
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

.method public final d3(I)I
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
    const/4 p1, 0x7

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/16 p1, 0x8

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x2

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x3

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x4

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x5

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/4 p1, 0x6

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final e3(ILjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    const-string p2, " "

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    move v0, v1

    :cond_1
    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    shl-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x23

    new-array p2, p2, [I

    const/16 v0, 0xe3

    aput v0, p2, v3

    const/16 v0, 0x20

    const/4 v4, 0x1

    aput v0, p2, v4

    const/4 v0, 0x2

    aput p1, p2, v0

    :goto_1
    if-ge v3, v1, :cond_3

    add-int/lit8 p1, v3, 0x3

    .line 6
    aget-byte v0, v2, v3

    aput v0, p2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3(ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, " "

    :cond_0
    const-string v0, "GB2312"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 2
    array-length v0, p2

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0x20

    const/4 v4, 0x1

    aput v2, v0, v4

    const/4 v2, 0x2

    aput p1, v0, v2

    :goto_1
    if-ge v3, v1, :cond_2

    add-int/lit8 p1, v3, 0x3

    .line 3
    aget-byte v2, p2, v3

    aput v2, v0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final g3()V
    .locals 10

    .line 1
    iget v0, p0, Lk0/tj;->v:I

    if-ltz v0, :cond_2

    sget-object v1, Lk0/tj;->I:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lk0/tj;->w:I

    if-nez v0, :cond_1

    iget v1, p0, Lk0/tj;->s:I

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lk0/tj;->r:I

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    .line 4
    iget v3, p0, Lk0/tj;->q:I

    mul-int/2addr v3, v2

    const/16 v4, 0x16

    new-array v4, v4, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const/16 v7, 0x13

    aput v7, v4, v5

    const/4 v5, 0x2

    const/16 v8, 0xe4

    aput v8, v4, v5

    const/4 v5, 0x3

    .line 5
    iget v8, p0, Lk0/tj;->x:I

    const/4 v9, 0x7

    shl-int/2addr v8, v9

    int-to-byte v8, v8

    aput v8, v4, v5

    const/4 v5, 0x4

    shl-int/2addr v0, v9

    int-to-byte v0, v0

    aput v0, v4, v5

    const/4 v0, 0x5

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    const/4 v0, 0x6

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v9

    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0x8

    aput v0, v4, v1

    const/16 v0, 0x9

    iget v1, p0, Lk0/tj;->u:I

    aput v1, v4, v0

    shr-int/lit8 v0, v3, 0x18

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v2

    const/16 v0, 0xb

    shr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xc

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xd

    and-int/lit16 v1, v3, 0xff

    aput v1, v4, v0

    const/16 v0, 0xe

    iget v1, p0, Lk0/tj;->s:I

    .line 6
    invoke-virtual {p0, v1}, Lk0/tj;->d3(I)I

    move-result v1

    aput v1, v4, v0

    const/16 v0, 0xf

    iget v1, p0, Lk0/tj;->t:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v4, v0

    rem-int/lit16 v0, v1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    const/16 v2, 0x10

    aput v0, v4, v2

    const/16 v0, 0x11

    div-int/lit16 v2, v1, 0xe10

    aput v2, v4, v0

    const/16 v0, 0x12

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    aput v1, v4, v0

    sget-object v0, Lk0/tj;->I:[I

    iget v1, p0, Lk0/tj;->v:I

    aget v0, v0, v1

    aput v0, v4, v7

    const/16 v0, 0x14

    aput v6, v4, v0

    const/16 v0, 0x15

    aput v6, v4, v0

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x3

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
