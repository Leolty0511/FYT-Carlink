.class public Lk0/jt;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# instance fields
.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:B

.field public m:B

.field public n:I

.field public o:I

.field public p:I

.field public q:[I

.field public r:I

.field public s:Lk0/st;

.field public t:Ljava/lang/Runnable;

.field public u:J

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/jt;->q:[I

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lk0/jt;->r:I

    .line 4
    new-instance v0, Lk0/jt$a;

    invoke-direct {v0, p0}, Lk0/jt$a;-><init>(Lk0/jt;)V

    iput-object v0, p0, Lk0/jt;->t:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lk0/jt;->u:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk0/jt;->v:I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x1
        0x6
        0x7
        0x0
    .end array-data
.end method

.method public static synthetic a3(Lk0/jt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/jt;->u:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/jt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/jt;->u:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/jt;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/jt;->v:I

    return p0
.end method

.method public static synthetic d3(Lk0/jt;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/jt;->v:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/jt;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    new-instance v1, Lk0/st;

    invoke-direct {v1}, Lk0/st;-><init>()V

    iput-object v1, p0, Lk0/jt;->s:Lk0/st;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/jt;->s:Lk0/st;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x56

    const/4 v1, 0x1

    if-eq p3, v0, :cond_5

    const/16 v0, 0x1f

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/jt;->b:B

    add-int/lit8 v6, p2, 0x2

    .line 3
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->c:B

    add-int/lit8 v6, p2, 0x3

    .line 4
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->d:B

    add-int/lit8 v6, p2, 0x4

    .line 5
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->e:B

    add-int/lit8 v6, p2, 0x5

    .line 6
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->f:B

    add-int/lit8 v6, p2, 0x6

    .line 7
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->g:B

    add-int/lit8 v6, p2, 0x7

    .line 8
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->h:B

    add-int/lit8 v6, p2, 0x8

    .line 9
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->i:B

    add-int/lit8 v6, p2, 0x9

    .line 10
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->j:B

    add-int/lit8 v6, p2, 0xa

    .line 11
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->k:B

    add-int/lit8 v6, p2, 0xb

    .line 12
    aget-byte v6, p1, v6

    iput-byte v6, p0, Lk0/jt;->l:B

    const/16 v6, 0xc

    add-int/2addr p2, v6

    .line 13
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/jt;->m:B

    const/16 p1, 0x11

    new-array p2, v1, [I

    and-int/lit8 p3, p3, 0x7

    aput p3, p2, v5

    .line 14
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v1, [I

    .line 15
    iget-byte p2, p0, Lk0/jt;->c:B

    and-int/2addr p2, v1

    aput p2, p1, v5

    const/16 p2, 0xb

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v1, [I

    .line 16
    iget-byte p3, p0, Lk0/jt;->d:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v1, [I

    .line 17
    iget-byte p3, p0, Lk0/jt;->f:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v1, [I

    .line 18
    iget-byte p3, p0, Lk0/jt;->g:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x16

    new-array p2, v1, [I

    .line 19
    iget-byte p3, p0, Lk0/jt;->h:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x12

    new-array p2, v1, [I

    .line 20
    iget-byte p3, p0, Lk0/jt;->i:B

    and-int/2addr p3, v0

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v1, [I

    .line 21
    iget-byte p2, p0, Lk0/jt;->j:B

    and-int/2addr p2, v1

    aput p2, p1, v5

    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x17

    new-array p2, v1, [I

    .line 22
    iget-byte p3, p0, Lk0/jt;->k:B

    and-int/2addr p3, v0

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v1, [I

    .line 23
    iget-byte p3, p0, Lk0/jt;->l:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x19

    new-array p2, v1, [I

    .line 24
    iget-byte p3, p0, Lk0/jt;->m:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x18

    new-array p2, v1, [I

    .line 25
    iget-byte p3, p0, Lk0/jt;->e:B

    and-int/lit8 p3, p3, 0x7

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 26
    iput v5, p0, Lk0/jt;->n:I

    iput v5, p0, Lk0/jt;->o:I

    iput v5, p0, Lk0/jt;->p:I

    .line 27
    iget-byte p1, p0, Lk0/jt;->e:B

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iput v1, p0, Lk0/jt;->n:I

    goto :goto_0

    .line 29
    :cond_1
    iput v1, p0, Lk0/jt;->n:I

    .line 30
    iput v1, p0, Lk0/jt;->p:I

    goto :goto_0

    .line 31
    :cond_2
    iput v1, p0, Lk0/jt;->p:I

    goto :goto_0

    .line 32
    :cond_3
    iput v1, p0, Lk0/jt;->o:I

    .line 33
    iput v1, p0, Lk0/jt;->p:I

    goto :goto_0

    .line 34
    :cond_4
    iput v1, p0, Lk0/jt;->o:I

    :goto_0
    const/16 p1, 0xe

    new-array p2, v1, [I

    .line 35
    iget p3, p0, Lk0/jt;->n:I

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xf

    new-array p2, v1, [I

    .line 36
    iget p3, p0, Lk0/jt;->o:I

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x10

    new-array p2, v1, [I

    .line 37
    iget p3, p0, Lk0/jt;->p:I

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :pswitch_1
    add-int/2addr p2, v1

    .line 38
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/jt;->b:B

    const/16 p2, 0x21

    new-array p3, v1, [I

    and-int/lit8 p1, p1, 0x7

    aput p1, p3, v5

    .line 39
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 p3, p2, 0x1

    .line 40
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/jt;->b:B

    add-int/2addr p2, v3

    .line 41
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/jt;->c:B

    const/16 p2, 0x20

    new-array v0, v1, [I

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p1, p3

    aput p1, v0, v5

    .line 42
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 p3, p2, 0x1

    .line 43
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/jt;->b:B

    add-int/lit8 v3, p2, 0x2

    .line 44
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lk0/jt;->c:B

    add-int/lit8 v3, p2, 0x3

    .line 45
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lk0/jt;->d:B

    add-int/2addr p2, v2

    .line 46
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/jt;->e:B

    const/16 p1, 0x22

    new-array p2, v1, [I

    and-int/2addr p3, v4

    aput p3, p2, v5

    .line 47
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x23

    new-array p2, v1, [I

    .line 48
    iget-byte p3, p0, Lk0/jt;->c:B

    and-int/2addr p3, v1

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1e

    new-array p2, v1, [I

    .line 49
    iget-byte p3, p0, Lk0/jt;->d:B

    and-int/2addr p3, v4

    aput p3, p2, v5

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v1, [I

    .line 50
    iget-byte p2, p0, Lk0/jt;->e:B

    and-int/2addr p2, v1

    aput p2, p1, v5

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    add-int/2addr p2, v1

    .line 51
    aget-byte p3, p1, p2

    invoke-static {p1, p2, p3}, Lk0/pt;->o([BII)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/jt;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/jt;->s:Lk0/st;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lk0/jt;->s:Lk0/st;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 5

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p3}, Lk0/jt;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0x23

    aput p4, p1, v3

    .line 2
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v0

    aget p4, p2, v1

    aput p4, p1, p3

    const/4 p3, 0x5

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v3}, Lk0/jt;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, 0x27

    aput p3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v3}, Lk0/jt;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p3, 0x26

    aput p3, p1, v3

    .line 6
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p2, v3}, Lk0/jt;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p3, 0x25

    aput p3, p1, v3

    .line 8
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0, p2, v3}, Lk0/jt;->e3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, 0x24

    aput p3, p1, v3

    .line 10
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final e3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z1([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/jt;->U2([BII)V

    return-void
.end method
