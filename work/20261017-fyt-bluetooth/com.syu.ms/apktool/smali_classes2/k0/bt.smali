.class public Lk0/bt;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static v:I

.field public static w:I


# instance fields
.field public final b:I

.field public c:Lo1/g0;

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:I

.field public u:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lk0/bt;->b:I

    .line 3
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/bt;->c:Lo1/g0;

    .line 4
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v0, v1, Lk0/mt;->f:I

    .line 6
    iput v0, v1, Lk0/mt;->l:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lk0/bt;->n:I

    .line 8
    new-instance v0, Lk0/bt$a;

    invoke-direct {v0, p0}, Lk0/bt$a;-><init>(Lk0/bt;)V

    iput-object v0, p0, Lk0/bt;->o:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/bt$b;

    invoke-direct {v0, p0}, Lk0/bt$b;-><init>(Lk0/bt;)V

    iput-object v0, p0, Lk0/bt;->p:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/bt$c;

    invoke-direct {v0, p0}, Lk0/bt$c;-><init>(Lk0/bt;)V

    iput-object v0, p0, Lk0/bt;->q:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/bt$d;

    invoke-direct {v0, p0}, Lk0/bt$d;-><init>(Lk0/bt;)V

    iput-object v0, p0, Lk0/bt;->r:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/bt$e;

    invoke-direct {v0, p0}, Lk0/bt$e;-><init>(Lk0/bt;)V

    iput-object v0, p0, Lk0/bt;->s:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/bt$f;

    invoke-direct {v0, p0}, Lk0/bt$f;-><init>(Lk0/bt;)V

    iput-object v0, p0, Lk0/bt;->u:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a3(Lk0/bt;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/bt;->h3(I)V

    return-void
.end method

.method public static synthetic b3(Lk0/bt;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bt;->m:I

    return p0
.end method

.method public static synthetic c3(Lk0/bt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/bt;->l:Z

    return p0
.end method

.method public static synthetic d3(Lk0/bt;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/bt;->l:Z

    return p1
.end method

.method public static synthetic e3(Lk0/bt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/bt;->k:Z

    return p0
.end method

.method public static synthetic f3(Lk0/bt;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/bt;->k:Z

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
    iget-object v0, p0, Lk0/bt;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/bt;->c:Lo1/g0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/bt;->k3(I)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/bt;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/bt;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Lk0/bt;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lk0/bt;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Ly0/g;->w:Lo1/y;

    iget-object v2, p0, Lk0/bt;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_d

    const/4 v5, 0x5

    if-eq v0, v5, :cond_b

    const/16 v6, 0xf

    const/4 v7, 0x6

    const/4 v8, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u80ce\u538b\u6570\u636e\uff1a"

    invoke-virtual {v0, v1, p1, p2, p3}, Ln1/b;->x(Ljava/lang/String;[BII)V

    const/16 p3, 0x59

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    const/16 v1, 0x51

    new-array v2, v4, [I

    aput p3, v2, v3

    .line 5
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 6
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v0

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    const/16 v1, 0x53

    new-array v2, v4, [I

    aput p3, v2, v3

    .line 7
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 8
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v0

    add-int/lit8 v1, p2, 0x8

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    const/16 v1, 0x55

    new-array v2, v4, [I

    aput p3, v2, v3

    .line 9
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x9

    .line 10
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v0

    add-int/lit8 p2, p2, 0xa

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    const/16 p2, 0x57

    new-array p3, v4, [I

    aput p1, p3, v3

    .line 11
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_1
    const/16 p3, 0x5a

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 12
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x5b

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x5c

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 14
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x5d

    new-array v0, v4, [I

    add-int/2addr p2, v5

    .line 15
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 16
    :pswitch_2
    sget p3, Lk0/bt;->v:I

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/2addr p2, v2

    .line 17
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->d:B

    and-int/2addr p1, v4

    const/16 p2, 0x3f9

    if-ne p1, v4, :cond_1

    .line 18
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 19
    invoke-static {}, Lo1/u;->A0()V

    .line 20
    invoke-virtual {p0, v4}, Lk0/bt;->j3(I)V

    new-array p1, v4, [I

    aput v4, p1, v3

    .line 21
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 22
    :cond_1
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 23
    invoke-static {}, Lo1/u;->k()V

    .line 24
    invoke-static {v7, v3}, Lu0/d;->T3(II)V

    .line 25
    invoke-virtual {p0, v3}, Lk0/bt;->j3(I)V

    new-array p1, v4, [I

    aput v3, p1, v3

    .line 26
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_3
    add-int/2addr p2, v2

    .line 27
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->d:B

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    .line 28
    sget p2, Lk0/bt;->w:I

    if-eq p2, p1, :cond_2

    .line 29
    iput-boolean v4, p0, Lk0/bt;->l:Z

    .line 30
    sput p1, Lk0/bt;->w:I

    .line 31
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lk0/bt;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_2
    iget-byte p1, p0, Lk0/bt;->d:B

    and-int/2addr p1, v6

    .line 33
    iget p2, p0, Lk0/bt;->n:I

    if-eq p2, p1, :cond_f

    .line 34
    iput p1, p0, Lk0/bt;->n:I

    if-ne p1, v1, :cond_f

    const-string p1, "persist.fyt.gps_speed"

    .line 35
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_f

    .line 36
    sget-object p1, La/b;->Y:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 37
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.ay"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.syu.frontvideo"

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance p3, Landroid/content/ComponentName;

    const-string v0, "com.syu.exdvr.ActivityLaunch"

    invoke-direct {p3, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    invoke-static {p1}, Lo1/u;->e(Landroid/content/Intent;)I

    goto/16 :goto_4

    :pswitch_4
    add-int/2addr p2, v2

    .line 42
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->d:B

    .line 43
    sget p2, Lk0/nt;->W:I

    if-nez p2, :cond_3

    new-array p2, v4, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 44
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 45
    iget-byte p2, p0, Lk0/bt;->d:B

    shr-int/2addr p2, v2

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 46
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 47
    iget-byte p2, p0, Lk0/bt;->d:B

    shr-int/2addr p2, v8

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p1, v4, [I

    .line 48
    iget-byte p2, p0, Lk0/bt;->d:B

    shr-int/2addr p2, v4

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v8, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 49
    iget-byte p2, p0, Lk0/bt;->d:B

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 50
    iget-byte p2, p0, Lk0/bt;->d:B

    shr-int/2addr p2, v5

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 51
    iget-byte p2, p0, Lk0/bt;->d:B

    shr-int/2addr p2, v1

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 52
    :pswitch_5
    sget p3, Lu0/b;->o:I

    if-ne p3, v4, :cond_f

    sget p3, Lu0/b;->I:I

    if-ne p3, v4, :cond_f

    add-int/2addr p2, v2

    .line 53
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->d:B

    and-int/lit8 p1, p1, 0x7f

    .line 54
    iput p1, p0, Lk0/bt;->j:I

    .line 55
    invoke-static {p1}, Lu0/d;->y3(I)V

    goto/16 :goto_4

    .line 56
    :pswitch_6
    sget p3, Lu0/b;->o:I

    if-ne p3, v4, :cond_f

    sget p3, Lu0/b;->G:I

    if-ne p3, v4, :cond_f

    add-int/lit8 p3, p2, 0x2

    .line 57
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/bt;->d:B

    add-int/lit8 p3, p2, 0x3

    .line 58
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    int-to-byte p3, p3

    iput-byte p3, p0, Lk0/bt;->e:B

    add-int/lit8 p3, p2, 0x4

    .line 59
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    int-to-byte p3, p3

    iput-byte p3, p0, Lk0/bt;->f:B

    add-int/lit8 p3, p2, 0x5

    .line 60
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    int-to-byte p3, p3

    iput-byte p3, p0, Lk0/bt;->g:B

    add-int/2addr p2, v7

    .line 61
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    int-to-byte p1, p1

    iput-byte p1, p0, Lk0/bt;->h:B

    .line 62
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 63
    iget-byte p1, p0, Lk0/bt;->d:B

    and-int/2addr p1, v4

    if-nez p1, :cond_4

    .line 64
    iget-byte p1, p0, Lk0/bt;->e:B

    invoke-static {p1}, Lu0/d;->R2(I)V

    .line 65
    iget-byte p1, p0, Lk0/bt;->f:B

    invoke-static {p1}, Lu0/d;->S2(I)V

    .line 66
    iget-byte p1, p0, Lk0/bt;->g:B

    invoke-static {p1}, Lu0/d;->T2(I)V

    .line 67
    iget-byte p1, p0, Lk0/bt;->h:B

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    .line 68
    :cond_4
    iget-byte p1, p0, Lk0/bt;->e:B

    invoke-static {p1}, Lu0/d;->D2(I)V

    .line 69
    iget-byte p1, p0, Lk0/bt;->f:B

    invoke-static {p1}, Lu0/d;->E2(I)V

    .line 70
    iget-byte p1, p0, Lk0/bt;->g:B

    invoke-static {p1}, Lu0/d;->F2(I)V

    .line 71
    iget-byte p1, p0, Lk0/bt;->h:B

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    :pswitch_7
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/bt;->d:B

    add-int/lit8 v0, p2, 0x3

    .line 73
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/bt;->e:B

    add-int/lit8 v0, p2, 0x4

    .line 74
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/bt;->f:B

    add-int/lit8 v0, p2, 0x5

    .line 75
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/bt;->g:B

    add-int/lit8 v0, p2, 0x6

    .line 76
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/bt;->h:B

    add-int/lit8 p2, p2, 0x7

    .line 77
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->i:B

    const/16 p1, 0xb

    new-array p2, v4, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 78
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v4, [I

    .line 79
    iget-byte p3, p0, Lk0/bt;->d:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v4, [I

    .line 80
    iget-byte p3, p0, Lk0/bt;->d:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p2, v4, [I

    .line 81
    iget-byte p3, p0, Lk0/bt;->d:B

    shr-int/2addr p3, v1

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 82
    iget-byte p2, p0, Lk0/bt;->d:B

    shr-int/2addr p2, v8

    and-int/2addr p2, v4

    aput p2, p1, v3

    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x10

    new-array p2, v4, [I

    .line 83
    iget-byte p3, p0, Lk0/bt;->d:B

    shr-int/2addr p3, v2

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x11

    new-array p2, v4, [I

    .line 84
    iget-byte p3, p0, Lk0/bt;->d:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x20

    new-array p2, v4, [I

    .line 85
    iget-byte p3, p0, Lk0/bt;->d:B

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v4, [I

    .line 86
    iget-byte p3, p0, Lk0/bt;->e:B

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v4, [I

    .line 87
    iget-byte p3, p0, Lk0/bt;->f:B

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x19

    new-array p2, v4, [I

    .line 88
    iget-byte p3, p0, Lk0/bt;->f:B

    and-int/2addr p3, v6

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v4, [I

    .line 89
    iget-byte p3, p0, Lk0/bt;->f:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x18

    new-array p2, v4, [I

    .line 90
    iget-byte p3, p0, Lk0/bt;->f:B

    shr-int/2addr p3, v2

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x16

    new-array p2, v4, [I

    .line 91
    iget-byte p3, p0, Lk0/bt;->f:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x17

    new-array p2, v4, [I

    .line 92
    iget-byte p3, p0, Lk0/bt;->f:B

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 93
    iget-byte p1, p0, Lk0/bt;->g:B

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v0, -0x80

    const/16 v5, 0x1a

    const/4 v6, -0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v6, :cond_6

    if-eqz p1, :cond_5

    new-array v9, v4, [I

    and-int/lit8 v10, p1, 0x3f

    mul-int/2addr v10, v2

    shr-int/2addr p1, v7

    and-int/2addr p1, v4

    add-int/2addr v10, p1

    aput v10, v9, v3

    .line 94
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p1, v4, [I

    aput v6, p1, v3

    .line 95
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array p1, v4, [I

    aput p2, p1, v3

    .line 96
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array p1, v4, [I

    aput p3, p1, v3

    .line 97
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    .line 98
    :goto_1
    iget-byte p1, p0, Lk0/bt;->h:B

    const/16 v5, 0x1b

    if-eq p1, v0, :cond_a

    if-eq p1, v6, :cond_9

    if-eqz p1, :cond_8

    new-array p2, v4, [I

    and-int/lit8 p3, p1, 0x3f

    mul-int/2addr p3, v2

    shr-int/2addr p1, v7

    and-int/2addr p1, v4

    add-int/2addr p3, p1

    aput p3, p2, v3

    .line 99
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array p1, v4, [I

    aput v6, p1, v3

    .line 100
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array p1, v4, [I

    aput p2, p1, v3

    .line 101
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array p1, v4, [I

    aput p3, p1, v3

    .line 102
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p1, 0x1c

    new-array p2, v4, [I

    .line 103
    iget-byte p3, p0, Lk0/bt;->i:B

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1e

    new-array p2, v4, [I

    .line 104
    iget-byte p3, p0, Lk0/bt;->i:B

    shr-int/2addr p3, v1

    and-int/lit8 p3, p3, 0x7

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1d

    new-array p2, v4, [I

    .line 105
    iget-byte p3, p0, Lk0/bt;->i:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v4

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1f

    new-array p2, v4, [I

    .line 106
    iget-byte p3, p0, Lk0/bt;->i:B

    and-int/lit8 p3, p3, 0x7

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :pswitch_8
    add-int/lit8 p3, p2, 0x2

    .line 107
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    invoke-virtual {p0, p3, p1}, Lk0/bt;->i3(II)V

    goto :goto_4

    :cond_b
    add-int/2addr p2, v2

    .line 108
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->d:B

    shr-int/lit8 p2, p1, 0x1

    and-int/2addr p2, v4

    .line 109
    sput p2, Lk0/nt;->k:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_c

    move p1, v3

    goto :goto_3

    :cond_c
    move p1, v4

    .line 110
    :goto_3
    sput p1, Lk0/nt;->l:I

    const/16 p1, 0x401

    new-array p2, v4, [I

    .line 111
    sget p3, Lk0/nt;->k:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x402

    new-array p2, v4, [I

    .line 112
    sget p3, Lk0/nt;->l:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    add-int/2addr p2, v2

    .line 113
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/bt;->d:B

    and-int/lit8 p2, p1, 0x1

    .line 114
    iput p2, p0, Lk0/bt;->m:I

    const/16 p2, 0x33

    new-array p3, v4, [I

    and-int/2addr p1, v4

    aput p1, p3, v3

    .line 115
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 116
    :cond_e
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_f
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/bt;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bt;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bt;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lk0/bt;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lk0/bt;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lk0/bt;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->w:Lo1/y;

    iget-object v1, p0, Lk0/bt;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x60

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
    .locals 4

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p1, p4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    .line 2
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/bt;->k3(I)V

    new-array p1, v2, [I

    aput v1, p1, p3

    const/16 v1, 0x87

    aput v1, p1, p4

    aput p4, p1, v3

    .line 3
    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2, p4}, Lk0/bt;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v2, [I

    aput v1, p1, p3

    const/16 v1, 0x84

    aput v1, p1, p4

    aput p4, p1, v3

    .line 5
    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p2, p4}, Lk0/bt;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/bt;->h3(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g3([II)Z
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

.method public final h3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x82

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final i3(II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eq p1, v1, :cond_4

    const/16 v2, 0x9

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/16 v4, 0x2f

    if-eq p1, v4, :cond_2

    const/16 v4, 0x30

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x8

    const/4 v7, 0x7

    packed-switch p1, :pswitch_data_0

    const/4 v8, 0x5

    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    .line 1
    :pswitch_0
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v2}, La/i;->I(II)V

    goto/16 :goto_1

    .line 2
    :pswitch_1
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v6}, La/i;->I(II)V

    goto/16 :goto_1

    .line 3
    :pswitch_2
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v7}, La/i;->I(II)V

    goto/16 :goto_1

    .line 4
    :pswitch_3
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v9}, La/i;->I(II)V

    goto/16 :goto_1

    .line 5
    :pswitch_4
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v8}, La/i;->I(II)V

    goto/16 :goto_1

    .line 6
    :pswitch_5
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v3}, La/i;->I(II)V

    goto/16 :goto_1

    .line 7
    :pswitch_6
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v5}, La/i;->I(II)V

    goto/16 :goto_1

    .line 8
    :pswitch_7
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v4}, La/i;->I(II)V

    goto/16 :goto_1

    .line 9
    :pswitch_8
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v1}, La/i;->I(II)V

    goto/16 :goto_1

    .line 10
    :pswitch_9
    sget p1, Lu0/b;->D:I

    invoke-static {p1, v0}, La/i;->I(II)V

    goto/16 :goto_1

    .line 11
    :pswitch_a
    invoke-static {}, Lo1/u;->J()I

    goto/16 :goto_1

    :pswitch_b
    const/16 p1, 0x15

    .line 12
    invoke-static {p1, p2}, La1/c;->j(II)V

    goto/16 :goto_1

    .line 13
    :pswitch_c
    invoke-static {}, Lo1/u;->H()I

    goto/16 :goto_1

    .line 14
    :pswitch_d
    invoke-static {}, Lo1/u;->p()V

    goto/16 :goto_1

    .line 15
    :pswitch_e
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_1

    .line 16
    :pswitch_f
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_1

    .line 17
    :pswitch_10
    invoke-static {}, Lo1/u;->Z0()I

    goto/16 :goto_1

    .line 18
    :pswitch_11
    invoke-static {}, Lo1/u;->r()V

    goto/16 :goto_1

    .line 19
    :pswitch_12
    invoke-static {}, Lo1/u;->j()I

    goto :goto_1

    .line 20
    :pswitch_13
    invoke-static {}, Lo1/u;->z()I

    goto :goto_1

    .line 21
    :pswitch_14
    invoke-static {}, Lo1/u;->E()I

    goto :goto_1

    .line 22
    :pswitch_15
    invoke-static {v1, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 23
    :pswitch_16
    invoke-static {v8, p2}, La1/c;->j(II)V

    goto :goto_1

    :pswitch_17
    const/16 p1, 0xb

    .line 24
    invoke-static {p1, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 25
    :pswitch_18
    invoke-static {v9, p2}, La1/c;->j(II)V

    goto :goto_1

    :pswitch_19
    const/16 p1, 0x10

    .line 26
    invoke-static {p1, p2}, La1/c;->j(II)V

    goto :goto_1

    :pswitch_1a
    const/16 p1, 0x14

    .line 27
    invoke-static {p1, p2}, La1/c;->j(II)V

    goto :goto_1

    :pswitch_1b
    const/16 p1, 0x13

    .line 28
    invoke-static {p1, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 29
    :pswitch_1c
    invoke-static {v4, p2}, La1/c;->j(II)V

    goto :goto_1

    :pswitch_1d
    const/16 p1, 0x12

    .line 30
    invoke-static {p1, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 31
    :pswitch_1e
    invoke-static {v3, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 32
    :pswitch_1f
    invoke-static {v5, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 33
    :pswitch_20
    invoke-static {v6, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 34
    :pswitch_21
    invoke-static {v7, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lo1/u;->G0()V

    goto :goto_1

    .line 36
    :cond_2
    invoke-static {v1}, Lw0/f;->z(I)V

    .line 37
    invoke-static {v0}, Lw0/f;->F(I)V

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {v2, p2}, La1/c;->j(II)V

    goto :goto_1

    .line 39
    :cond_4
    invoke-static {v0, p2}, La1/c;->j(II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
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

.method public j3(I)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x79
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x78
    .end array-data
.end method

.method public final k3(I)V
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
    sput p1, Lk0/bt;->v:I

    const/16 v2, 0x5f

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " *** mainserver   U_TURN_RIGHT_ENTER_CAMERA mRightEnterCamera = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lk0/bt;->v:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "right"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lk0/bt;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/bt;->v:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/bt;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
