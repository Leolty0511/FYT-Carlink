.class public Lk0/b4;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/b4$g;
    }
.end annotation


# static fields
.field public static E:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:I

.field public C:Z

.field public D:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Lk0/b4$g;

.field public g:Z

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

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

.field public final v:Ljava/lang/Runnable;

.field public w:F

.field public x:I

.field public y:I

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/b4;->E:[I

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
        0x5
        0x1
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x5
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/b4;->c:I

    const/16 v1, 0x8

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

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/b4;->d:[[I

    .line 4
    new-instance v1, Lk0/b4$a;

    invoke-direct {v1, p0}, Lk0/b4$a;-><init>(Lk0/b4;)V

    iput-object v1, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    .line 5
    iput-boolean v0, p0, Lk0/b4;->g:Z

    .line 6
    iput v0, p0, Lk0/b4;->h:I

    .line 7
    new-instance v1, Lk0/b4$b;

    invoke-direct {v1, p0}, Lk0/b4$b;-><init>(Lk0/b4;)V

    iput-object v1, p0, Lk0/b4;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/b4$c;

    invoke-direct {v1, p0}, Lk0/b4$c;-><init>(Lk0/b4;)V

    iput-object v1, p0, Lk0/b4;->j:Ljava/lang/Runnable;

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lk0/b4;->k:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lk0/b4;->l:Ljava/lang/String;

    .line 11
    iput v0, p0, Lk0/b4;->m:I

    .line 12
    iput v0, p0, Lk0/b4;->n:I

    .line 13
    iput v0, p0, Lk0/b4;->o:I

    .line 14
    iput v0, p0, Lk0/b4;->p:I

    .line 15
    iput v0, p0, Lk0/b4;->q:I

    .line 16
    iput v0, p0, Lk0/b4;->r:I

    .line 17
    iput v0, p0, Lk0/b4;->s:I

    .line 18
    iput v0, p0, Lk0/b4;->t:I

    const/16 v2, 0xff

    .line 19
    iput v2, p0, Lk0/b4;->u:I

    .line 20
    new-instance v3, Lk0/b4$d;

    invoke-direct {v3, p0}, Lk0/b4$d;-><init>(Lk0/b4;)V

    iput-object v3, p0, Lk0/b4;->v:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 21
    iput v3, p0, Lk0/b4;->w:F

    .line 22
    iput v2, p0, Lk0/b4;->x:I

    .line 23
    iput v2, p0, Lk0/b4;->y:I

    .line 24
    new-instance v2, Lk0/b4$e;

    invoke-direct {v2, p0}, Lk0/b4$e;-><init>(Lk0/b4;)V

    iput-object v2, p0, Lk0/b4;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v2, Lk0/b4$f;

    invoke-direct {v2, p0}, Lk0/b4$f;-><init>(Lk0/b4;)V

    iput-object v2, p0, Lk0/b4;->A:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 26
    iput v2, p0, Lk0/b4;->B:I

    .line 27
    iput-boolean v0, p0, Lk0/b4;->C:Z

    .line 28
    iput-object v1, p0, Lk0/b4;->D:Ljava/lang/String;

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x4
    .end array-data
.end method

.method public static synthetic d3(Lk0/b4;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/b4;->b3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic e3(Lk0/b4;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/b4;->u3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic f3(Lk0/b4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/b4;->C:Z

    return p0
.end method

.method public static synthetic g3(Lk0/b4;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/b4;->C:Z

    return p1
.end method

.method public static synthetic h3(Lk0/b4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/b4;->c3()V

    return-void
.end method

.method public static synthetic i3(Lk0/b4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/b4;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic j3(Lk0/b4;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/b4;->w:F

    return p0
.end method

.method public static synthetic k3(Lk0/b4;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/b4;->w:F

    return p1
.end method

.method public static synthetic l3(Lk0/b4;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/b4;->y:I

    return p0
.end method

.method public static synthetic m3(Lk0/b4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/b4;->y:I

    return p1
.end method

.method public static synthetic n3(Lk0/b4;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/b4;->x:I

    return p0
.end method

.method public static synthetic o3(Lk0/b4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/b4;->x:I

    return p1
.end method

.method public static synthetic p3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/b4;->E:[I

    return-object v0
.end method

.method public static synthetic q3(Lk0/b4;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/b4;->B:I

    return p0
.end method

.method public static synthetic r3(Lk0/b4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/b4;->B:I

    return p1
.end method

.method public static synthetic s3(Lk0/b4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/b4;->D:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic t3(Lk0/b4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b4;->D:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lk0/mt;->f:I

    .line 3
    iput v2, v0, Lk0/mt;->g:I

    .line 4
    iput v1, v0, Lk0/mt;->o:I

    .line 5
    sget v2, Lk0/nt;->c:I

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    .line 6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/b4;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    new-instance v0, Lk0/b4$g;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lk0/b4$g;-><init>(Lk0/b4;Lk0/b4$a;)V

    iput-object v0, p0, Lk0/b4;->f:Lk0/b4$g;

    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    iget-object v3, p0, Lk0/b4;->f:Lk0/b4$g;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0}, Lk0/b4;->c3()V

    goto :goto_0

    .line 13
    :cond_0
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    :goto_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    :cond_1
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/b4;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/b4;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/b4;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x21

    const v2, 0x3008e

    const v3, 0x1008e

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x30

    if-eq v0, v1, :cond_10

    const/16 v1, 0x52

    const/4 v8, 0x2

    if-eq v0, v1, :cond_e

    const/16 v1, 0x68

    const/16 v9, 0x8

    if-eq v0, v1, :cond_d

    const/16 v1, 0x6a

    const/16 v10, 0x407

    if-eq v0, v1, :cond_c

    const/16 v1, 0x7d

    const/4 v11, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_6

    const/4 p3, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/2addr p2, v8

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 4
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 5
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 6
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 7
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 8
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 9
    invoke-static {v11, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 11
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lk0/nt;->a:I

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_19

    :cond_1
    add-int/lit8 v0, p2, 0x2

    .line 13
    aget-byte v1, p1, v0

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v3, p1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x4

    .line 15
    aget-byte v8, p1, v4

    and-int/2addr v8, v5

    add-int/2addr p2, p3

    .line 16
    aget-byte p3, p1, p2

    and-int/2addr p3, v5

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    if-nez v8, :cond_2

    if-nez p3, :cond_2

    .line 17
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 18
    :cond_2
    sget v6, Ll0/c0;->g:I

    if-ne v6, v1, :cond_3

    sget v6, Ll0/c0;->h:I

    if-ne v6, v3, :cond_3

    sget v6, Ll0/c0;->i:I

    if-ne v6, v8, :cond_3

    sget v6, Ll0/c0;->j:I

    if-eq v6, p3, :cond_4

    .line 19
    :cond_3
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_4

    .line 20
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 21
    sput v11, Ll0/c0;->k:I

    .line 22
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_4
    :goto_1
    sput v1, Ll0/c0;->g:I

    .line 24
    sput v3, Ll0/c0;->h:I

    .line 25
    sput v8, Ll0/c0;->i:I

    .line 26
    sput p3, Ll0/c0;->j:I

    .line 27
    aget-byte p3, p1, v0

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 28
    aget-byte p3, p1, v2

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 29
    aget-byte p3, p1, v4

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->F0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    .line 31
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lk0/nt;->a:I

    if-eq v0, v2, :cond_5

    if-ne v0, v3, :cond_19

    :cond_5
    add-int/lit8 v0, p2, 0x2

    .line 32
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ll0/c0;->F0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 33
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ll0/c0;->F0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 34
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ll0/c0;->F0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->F0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    .line 36
    :cond_6
    sget v0, Lk0/nt;->a:I

    if-ne v0, v3, :cond_19

    .line 37
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    if-eq p3, v7, :cond_a

    if-eq p3, v4, :cond_9

    if-eq p3, v9, :cond_8

    goto/16 :goto_4

    :cond_8
    add-int/lit8 p3, p2, 0x3

    .line 39
    aget-byte p3, p1, p3

    add-int/2addr p2, v11

    .line 40
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 41
    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    .line 42
    iput-boolean v7, p0, Lk0/b4;->g:Z

    goto/16 :goto_4

    :cond_9
    add-int/lit8 p3, p2, 0x4

    .line 43
    aget-byte p3, p1, p3

    shl-int/2addr p3, v9

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    new-array p2, v7, [I

    aput p1, p2, v6

    .line 44
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    .line 45
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v8, [I

    aput v7, v0, v6

    aput p1, v0, v7

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 46
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_b

    add-int/2addr p2, v4

    .line 47
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte p1, p1, p2

    shr-int/2addr p1, v11

    and-int/2addr p1, v7

    invoke-static {p3, p1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_4

    :cond_b
    add-int/2addr p2, v4

    .line 48
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte p1, p1, p2

    shr-int/2addr p1, v11

    and-int/2addr p1, v7

    invoke-static {p3, p1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_4

    .line 49
    :cond_c
    sget p3, Lk0/nt;->a:I

    if-ne p3, v3, :cond_19

    add-int/lit8 p3, p2, 0x2

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    add-int/2addr p2, v4

    .line 51
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    new-array p2, v7, [I

    shl-int/2addr p1, v9

    or-int/2addr p1, p3

    aput p1, p2, v6

    .line 52
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 53
    :cond_d
    sget p3, Lk0/nt;->a:I

    if-ne p3, v3, :cond_19

    add-int/lit8 p3, p2, 0x2

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    add-int/2addr p2, v4

    .line 55
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    new-array p2, v7, [I

    shl-int/2addr p1, v9

    or-int/2addr p1, p3

    aput p1, p2, v6

    const/16 p3, 0x408

    .line 56
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    aput p1, p2, v6

    .line 57
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 58
    :cond_e
    sget p3, Lk0/nt;->a:I

    const v0, 0x2008e

    if-ne p3, v0, :cond_19

    add-int/lit8 p3, p2, 0x2

    .line 59
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    add-int/2addr p2, v4

    .line 60
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    if-ne p3, v7, :cond_f

    if-ne p1, v8, :cond_f

    move p1, v6

    :cond_f
    const/16 p2, 0x63

    new-array p3, v7, [I

    aput p1, p3, v6

    .line 61
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 62
    :cond_10
    sget p3, Lk0/nt;->a:I

    if-ne p3, v2, :cond_11

    add-int/lit8 p3, p2, 0x2

    .line 63
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const/16 p2, 0x2410

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_4

    :cond_11
    if-ne p3, v3, :cond_12

    add-int/lit8 p3, p2, 0x2

    .line 64
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const/16 p2, 0x2665

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 65
    :cond_12
    iget-boolean p3, p0, Lk0/b4;->g:Z

    if-nez p3, :cond_19

    add-int/lit8 p3, p2, 0x2

    .line 66
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const/16 p2, 0x2198

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 67
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-nez p3, :cond_14

    sget p3, Lk0/nt;->a:I

    if-eq p3, v3, :cond_14

    if-ne p3, v2, :cond_19

    :cond_14
    add-int/lit8 p3, p2, 0x2

    .line 68
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 69
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 70
    iput p2, p0, Lk0/b4;->c:I

    move p2, v6

    .line 71
    :goto_2
    iget-object p3, p0, Lk0/b4;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_16

    .line 72
    iget v0, p0, Lk0/b4;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_15

    if-eqz v0, :cond_16

    .line 73
    iput p2, p0, Lk0/b4;->b:I

    goto :goto_3

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_16
    :goto_3
    and-int/2addr p1, v5

    if-ne p1, v7, :cond_17

    .line 74
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 75
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_17
    if-nez p1, :cond_19

    .line 76
    iget p1, p0, Lk0/b4;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_18

    if-eq p1, v5, :cond_18

    .line 77
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 78
    :cond_18
    iput v5, p0, Lk0/b4;->b:I

    :cond_19
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/b4;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/b4;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/b4;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lk0/b4;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/b4;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/b4;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/b4;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-static {p2, p1}, Lk0/qt;->l0([II)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 2
    aget p4, p2, p3

    const/4 v0, 0x2

    if-nez p4, :cond_1

    .line 3
    aput v0, p2, p3

    :cond_1
    const/4 p4, 0x5

    new-array p4, p4, [I

    const/16 v1, 0xe3

    aput v1, p4, p3

    const/16 v1, 0x83

    aput v1, p4, p1

    aput v0, p4, v0

    const/4 v0, 0x3

    aput p1, p4, v0

    const/4 p1, 0x4

    .line 4
    aget p2, p2, p3

    aput p2, p4, p1

    invoke-static {p4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)I
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

.method public final b3(ILjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x1f

    aput v1, v0, p1

    .line 2
    array-length p1, p2

    const/16 v1, 0x1e

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 p1, v2, 0x4

    .line 3
    aget-byte v3, p2, v2

    aput v3, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3()V
    .locals 8

    .line 1
    iget v0, p0, Lk0/b4;->r:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/b4;->E:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lk0/b4;->n:I

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    .line 3
    iget v2, p0, Lk0/b4;->m:I

    mul-int/2addr v2, v1

    const/16 v3, 0x14

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0xa7

    aput v6, v3, v4

    const/4 v4, 0x2

    const/16 v6, 0x11

    aput v6, v3, v4

    const/4 v4, 0x3

    .line 4
    iget v7, p0, Lk0/b4;->o:I

    invoke-virtual {p0, v7}, Lk0/b4;->a3(I)I

    move-result v7

    aput v7, v3, v4

    const/4 v4, 0x4

    iget v7, p0, Lk0/b4;->t:I

    aput v7, v3, v4

    const/4 v4, 0x5

    iget v7, p0, Lk0/b4;->s:I

    aput v7, v3, v4

    const/4 v4, 0x6

    shr-int/lit8 v7, v0, 0x18

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v4

    const/4 v4, 0x7

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v4

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0x8

    aput v4, v3, v7

    const/16 v4, 0x9

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v4

    iget v0, p0, Lk0/b4;->q:I

    aput v0, v3, v1

    const/16 v0, 0xb

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    const/16 v0, 0xc

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    const/16 v0, 0xd

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    const/16 v0, 0xe

    and-int/lit16 v1, v2, 0xff

    aput v1, v3, v0

    const/16 v0, 0xf

    aput v5, v3, v0

    const/16 v0, 0x10

    aput v5, v3, v0

    iget v0, p0, Lk0/b4;->p:I

    div-int/lit16 v1, v0, 0xe10

    aput v1, v3, v6

    const/16 v1, 0x12

    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    aput v0, v3, v1

    const/16 v0, 0x13

    sget-object v1, Lk0/b4;->E:[I

    iget v2, p0, Lk0/b4;->r:I

    aget v1, v1, v2

    aput v1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u3(ILjava/lang/String;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x80

    const/16 v2, 0x81

    const/16 v3, 0x8

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [I

    goto :goto_0

    :cond_1
    new-array v4, v3, [I

    :goto_0
    const/16 v5, -0x1d

    const/4 v6, 0x0

    .line 3
    aput v5, v4, v6

    const/16 v5, -0x40

    const/4 v7, 0x1

    .line 4
    aput v5, v4, v7

    const/4 v5, 0x2

    const/4 v7, 0x5

    .line 5
    aput v7, v4, v5

    const/4 v8, 0x3

    .line 6
    aput v7, v4, v8

    const/4 v8, 0x4

    int-to-byte v9, p1

    .line 7
    aput v9, v4, v8

    const/16 v8, 0x12

    .line 8
    aput v8, v4, v7

    .line 9
    array-length v8, v0

    if-lez v8, :cond_2

    const/4 v8, 0x6

    .line 10
    aput v6, v4, v8

    const/4 v9, 0x7

    .line 11
    aput v6, v4, v9

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 12
    aput v5, v4, v8

    .line 13
    array-length p1, v0

    aput p1, v4, v9

    .line 14
    array-length p1, v0

    add-int/2addr p1, v7

    aput p1, v4, v5

    .line 15
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v6, p1, :cond_2

    add-int p1, v3, v6

    .line 16
    aget-char v1, v0, v6

    aput v1, v4, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method
