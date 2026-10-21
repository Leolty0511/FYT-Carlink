.class public Lg/k;
.super Lg/o;
.source "SourceFile"

# interfaces
.implements Lf1/o$e;


# instance fields
.field public A0:[I

.field public B0:[I

.field public n0:I

.field public o0:Z

.field public p0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q0:Ljava/lang/Runnable;

.field public final r0:Ljava/lang/Runnable;

.field public final s0:Ljava/lang/Runnable;

.field public t0:[I

.field public u0:[I

.field public v0:[I

.field public w0:[I

.field public x0:Lf1/q$b;

.field public final y0:Lo1/p;

.field public final z0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lg/o;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lg/k;->n0:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lg/k;->o0:Z

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lg/k;->p0:Ljava/util/HashMap;

    .line 5
    new-instance v1, Lg/k$c;

    invoke-direct {v1, p0}, Lg/k$c;-><init>(Lg/k;)V

    iput-object v1, p0, Lg/k;->q0:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lg/k$d;

    invoke-direct {v1, p0}, Lg/k$d;-><init>(Lg/k;)V

    iput-object v1, p0, Lg/k;->r0:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lg/k$e;

    invoke-direct {v1, p0}, Lg/k$e;-><init>(Lg/k;)V

    iput-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    const/16 v1, 0x10

    new-array v1, v1, [I

    .line 8
    fill-array-data v1, :array_0

    iput-object v1, p0, Lg/k;->t0:[I

    const/16 v1, 0xc

    new-array v2, v1, [I

    .line 9
    fill-array-data v2, :array_1

    iput-object v2, p0, Lg/k;->u0:[I

    new-array v2, v1, [I

    .line 10
    fill-array-data v2, :array_2

    iput-object v2, p0, Lg/k;->v0:[I

    new-array v1, v1, [I

    .line 11
    fill-array-data v1, :array_3

    iput-object v1, p0, Lg/k;->w0:[I

    .line 12
    new-instance v1, Lg/k$f;

    invoke-direct {v1, p0}, Lg/k$f;-><init>(Lg/k;)V

    iput-object v1, p0, Lg/k;->x0:Lf1/q$b;

    .line 13
    new-instance v1, Lg/k$g;

    invoke-direct {v1, p0}, Lg/k$g;-><init>(Lg/k;)V

    iput-object v1, p0, Lg/k;->y0:Lo1/p;

    .line 14
    new-instance v1, Lg/k$h;

    invoke-direct {v1, p0}, Lg/k$h;-><init>(Lg/k;)V

    iput-object v1, p0, Lg/k;->z0:Ljava/lang/Runnable;

    const/16 v1, 0x15e

    new-array v2, v1, [I

    .line 15
    fill-array-data v2, :array_4

    iput-object v2, p0, Lg/k;->A0:[I

    new-array v1, v1, [I

    .line 16
    fill-array-data v1, :array_5

    iput-object v1, p0, Lg/k;->B0:[I

    .line 17
    sput-object v2, Le1/e;->Y:[I

    .line 18
    sput-object v1, Le1/e;->Z:[I

    .line 19
    iget-boolean v1, p0, Lchip/Chip;->E:Z

    const-string v2, "Qin"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lg/f;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    iput-boolean v3, p0, Lchip/Chip;->E:Z

    const-string v1, "persist.syu.camera360"

    const-string v4, "0"

    .line 22
    invoke-static {v1, v4}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "-----------------------360 0201"

    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----------------------finally isCamera360: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lchip/Chip;->E:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " HandlerChip.isReverseCarplay() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg/f;->r()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-boolean v0, p0, Lchip/Chip;->n:Z

    const/16 v1, 0xd2

    .line 26
    invoke-static {v1}, Lm1/c;->i(I)V

    .line 27
    invoke-static {}, Lg/f;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-----------------------init Reverse  Carplay "

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 29
    sput v1, Lh0/c;->j0:I

    .line 30
    sput-boolean v0, Lm1/a;->e:Z

    .line 31
    sput-boolean v3, Lu0/b;->D1:Z

    .line 32
    sput v0, Lu0/b;->w4:I

    .line 33
    sput v0, Lu0/b;->x4:I

    .line 34
    sput v0, Lu0/b;->y4:I

    .line 35
    sput v0, Ly0/f;->d1:I

    .line 36
    sput v0, Ly0/f;->b1:I

    .line 37
    sput v0, Ly0/f;->c1:I

    .line 38
    sput v0, Ly0/f;->Z0:I

    .line 39
    sput v0, Ly0/f;->a1:I

    .line 40
    sput v0, Ly0/f;->e1:I

    .line 41
    sput v0, Ly0/f;->f1:I

    .line 42
    sput v0, Ly0/f;->g1:I

    .line 43
    sput v0, Ly0/f;->h1:I

    .line 44
    sput v0, Lu0/b;->v4:I

    .line 45
    sput v0, Lu0/b;->z4:I

    .line 46
    sput v0, Lu0/b;->A4:I

    .line 47
    sput v0, Lp0/b;->j:I

    const-string v1, ""

    .line 48
    iput-object v1, p0, Lchip/Chip;->k:Ljava/lang/String;

    .line 49
    new-instance v1, Lg/k$i;

    invoke-direct {v1, p0}, Lg/k$i;-><init>(Lg/k;)V

    .line 50
    new-instance v2, Lg/k$j;

    invoke-direct {v2, p0}, Lg/k$j;-><init>(Lg/k;)V

    .line 51
    sget-object v4, La/d;->a:Lo1/y;

    invoke-virtual {v4, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 52
    sget-object v3, Lu0/c;->e:Lo1/y;

    invoke-virtual {v3, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 53
    sget-object v2, Ly0/g;->k:Lo1/z;

    new-instance v3, Lg/k$k;

    invoke-direct {v3, p0}, Lg/k$k;-><init>(Lg/k;)V

    invoke-virtual {v2, v3}, Lo1/z;->a(Lo1/p;)V

    .line 54
    sget-object v2, Lh0/d;->a:Lo1/y;

    new-instance v3, Lg/k$a;

    invoke-direct {v3, p0}, Lg/k$a;-><init>(Lg/k;)V

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 55
    sget-object v0, Ly0/g;->l:Lo1/z;

    new-instance v2, Lg/k$b;

    invoke-direct {v2, p0, v1}, Lg/k$b;-><init>(Lg/k;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lo1/z;->a(Lo1/p;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lg/e;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p0, v3}, Lchip/Chip;->U(Z)V

    const/16 v1, 0xc5

    .line 58
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xc6

    .line 59
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xc7

    .line 60
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xce

    .line 61
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xcf

    .line 62
    invoke-static {v1}, Lm1/c;->i(I)V

    const/16 v1, 0xd1

    .line 63
    invoke-static {v1}, Lm1/c;->i(I)V

    .line 64
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v1

    invoke-static {}, Lg/e;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lk0/rt;->i3(Z)V

    .line 65
    sput v0, Lu0/b;->w4:I

    .line 66
    sput v0, Lu0/b;->x4:I

    .line 67
    sput v0, Ly0/f;->f1:I

    .line 68
    sput v0, Ly0/f;->h1:I

    .line 69
    sput v0, Lu0/b;->A4:I

    .line 70
    sput v0, Lu0/b;->P3:I

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x40
        0x8
        0x0
        0x44
        0x25
        0x8
        0x26
        0x1
        0x27
        0xc
        0x10
        0x88
        0x10
        0x8
        0x40
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40
        0x8
        0x0
        0x44
        0x25
        0x8
        0x26
        0x1
        0x27
        0xc
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x8
        0x0
        0x44
        0x25
        0x11
        0x26
        0x4
        0x27
        0x1a
        0x40
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x40
        0x8
        0x0
        0x44
        0x25
        0x11
        0x26
        0x4
        0x27
        0x1a
        0x40
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x40
        0x8
        0x10
        0x88
        0x23
        0x42
        0x40
        0x0
        0x2
        0x47
        0x5
        0x0
        0x6
        0x32
        0x7
        0xc0
        0x8
        0x0
        0x9
        0x24
        0xa
        0x48
        0xb
        0xc0
        0xc
        0x13
        0xd
        0x50
        0xe
        0x0
        0xf
        0x0
        0x10
        0xf8
        0x11
        0x50
        0x12
        0x60
        0x13
        0x0
        0x14
        0x0
        0x15
        0x13
        0x16
        0x5d
        0x17
        0xbc
        0x18
        0x12
        0x19
        0xf0
        0x1a
        0x7
        0x1b
        0x0
        0x1c
        0x9
        0x1d
        0x38
        0x1e
        0x80
        0x1f
        0x80
        0x20
        0x40
        0x21
        0x84
        0x22
        0x36
        0x23
        0x3c
        0x24
        0x4
        0x25
        0xff
        0x26
        0x5
        0x27
        0x2d
        0x28
        0x2
        0x29
        0x48
        0x2a
        0x30
        0x2b
        0x70
        0x2c
        0x3a
        0x2d
        0x68
        0x2e
        0x57
        0x2f
        0x0
        0x30
        0x62
        0x31
        0xbb
        0x32
        0x96
        0x33
        0xc0
        0x34
        0x0
        0x35
        0x65
        0x36
        0xdc
        0x37
        0x0
        0x38
        0x0
        0x39
        0x4
        0x3a
        0x32
        0x3b
        0x26
        0x3c
        0x0
        0x3d
        0x60
        0x3e
        0x0
        0x3f
        0x0
        0x40
        0x0
        0x41
        0x0
        0x42
        0x0
        0x43
        0x0
        0x44
        0x0
        0x45
        0x0
        0x46
        0x0
        0x47
        0x0
        0x48
        0x0
        0x49
        0x0
        0x4a
        0x0
        0x4b
        0x0
        0x4c
        0x40
        0x4d
        0x0
        0x4e
        0x0
        0x4f
        0x0
        0x50
        0x0
        0x51
        0x0
        0x52
        0x0
        0x53
        0x0
        0x54
        0x0
        0xb3
        0xfa
        0xb4
        0x0
        0xb5
        0x0
        0xb6
        0x0
        0xb7
        0x0
        0xb8
        0x0
        0xb9
        0x0
        0xba
        0x0
        0xbb
        0x0
        0xbc
        0x0
        0xbd
        0x0
        0xbe
        0x0
        0xbf
        0x0
        0xc0
        0x0
        0xc1
        0x0
        0xc2
        0xb
        0xc3
        0xc
        0xc4
        0x0
        0xc5
        0x0
        0xc6
        0x1f
        0xc7
        0x78
        0xc8
        0x27
        0xc9
        0x0
        0xca
        0x0
        0xcb
        0x7
        0xcc
        0x8
        0xcd
        0x0
        0xce
        0x0
        0xcf
        0x4
        0xd0
        0x0
        0xd1
        0x0
        0xd2
        0x60
        0xd3
        0x10
        0xd4
        0x6
        0xd5
        0xbe
        0xd6
        0x39
        0xd7
        0x27
        0xd8
        0x0
        0xd9
        0x0
        0xda
        0x0
        0xdb
        0x0
        0xdc
        0x0
        0xdd
        0x0
        0xde
        0x0
        0xdf
        0x0
        0xe0
        0x0
        0xe1
        0x0
        0xe2
        0x0
        0xe3
        0x0
        0xe4
        0x0
        0xe5
        0x0
        0xe6
        0x0
        0xe7
        0x13
        0xe8
        0x3
        0xe9
        0x0
        0xea
        0x0
        0xeb
        0x0
        0xec
        0x0
        0xed
        0x0
        0xee
        0x0
        0xef
        0x0
        0xf0
        0x0
        0xf1
        0x0
        0xf2
        0x0
        0xf3
        0x0
        0xf4
        0x20
        0xf5
        0x10
        0xf6
        0x0
        0xf7
        0x0
        0xf8
        0x0
        0xf9
        0x0
        0xfa
        0x88
        0xfb
        0x0
        0xfc
        0x0
        0x40
        0x8
        0x0
        0x44
        0x1
        0x38
        0x2
        0x1
        0x8
        0xf
        0x13
        0x24
        0x14
        0x57
        0x15
        0xc
        0x20
        0x12
        0x25
        0x8
        0x26
        0x1
        0x27
        0xc
        0x34
        0x1b
        0x23
        0x42
        0x10
        0x8
        0x40
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x40
        0x8
        0x10
        0x88
        0x23
        0x42
        0x40
        0x0
        0x2
        0x47
        0x5
        0x0
        0x6
        0x32
        0x7
        0xc0
        0x8
        0x0
        0x9
        0x24
        0xa
        0x48
        0xb
        0xc0
        0xc
        0x13
        0xd
        0x51
        0xe
        0x0
        0xf
        0x0
        0x10
        0xf8
        0x11
        0x50
        0x12
        0x60
        0x13
        0x0
        0x14
        0x0
        0x15
        0x13
        0x16
        0x76
        0x17
        0xbc
        0x18
        0x17
        0x19
        0x20
        0x1a
        0x17
        0x1b
        0x0
        0x1c
        0x9
        0x1d
        0x48
        0x1e
        0x80
        0x1f
        0x80
        0x20
        0x48
        0x21
        0x84
        0x22
        0x37
        0x23
        0x3f
        0x24
        0x4
        0x25
        0xff
        0x26
        0x5
        0x27
        0x2d
        0x28
        0x2
        0x29
        0x48
        0x2a
        0x30
        0x2b
        0x70
        0x2c
        0x2a
        0x2d
        0x64
        0x2e
        0x56
        0x2f
        0x0
        0x30
        0x7a
        0x31
        0x4a
        0x32
        0x4d
        0x33
        0xf0
        0x34
        0x0
        0x35
        0x65
        0x36
        0xdc
        0x37
        0x0
        0x38
        0x0
        0x39
        0x4
        0x3a
        0x32
        0x3b
        0x26
        0x3c
        0x0
        0x3d
        0x60
        0x3e
        0x0
        0x3f
        0x0
        0x40
        0x0
        0x41
        0x0
        0x42
        0x0
        0x43
        0x0
        0x44
        0x0
        0x45
        0x0
        0x46
        0x0
        0x47
        0x0
        0x48
        0x0
        0x49
        0x0
        0x4a
        0x0
        0x4b
        0x0
        0x4c
        0x40
        0x4d
        0x0
        0x4e
        0x0
        0x4f
        0x0
        0x50
        0x0
        0x51
        0x0
        0x52
        0x0
        0x53
        0x0
        0x54
        0x0
        0xb3
        0xfa
        0xb4
        0x0
        0xb5
        0x0
        0xb6
        0x0
        0xb7
        0x0
        0xb8
        0x0
        0xb9
        0x0
        0xba
        0x0
        0xbb
        0x0
        0xbc
        0x0
        0xbd
        0x0
        0xbe
        0x0
        0xbf
        0x0
        0xc0
        0x0
        0xc1
        0x0
        0xc2
        0xb
        0xc3
        0xc
        0xc4
        0x0
        0xc5
        0x0
        0xc6
        0x1f
        0xc7
        0x78
        0xc8
        0x27
        0xc9
        0x0
        0xca
        0x0
        0xcb
        0x7
        0xcc
        0x8
        0xcd
        0x0
        0xce
        0x0
        0xcf
        0x4
        0xd0
        0x0
        0xd1
        0x0
        0xd2
        0x60
        0xd3
        0x10
        0xd4
        0x6
        0xd5
        0xbe
        0xd6
        0x39
        0xd7
        0x27
        0xd8
        0x0
        0xd9
        0x0
        0xda
        0x0
        0xdb
        0x0
        0xdc
        0x0
        0xdd
        0x0
        0xde
        0x0
        0xdf
        0x0
        0xe0
        0x0
        0xe1
        0x0
        0xe2
        0x0
        0xe3
        0x0
        0xe4
        0x0
        0xe5
        0x0
        0xe6
        0x0
        0xe7
        0x13
        0xe8
        0x3
        0xe9
        0x0
        0xea
        0x0
        0xeb
        0x0
        0xec
        0x0
        0xed
        0x0
        0xee
        0x0
        0xef
        0x0
        0xf0
        0x0
        0xf1
        0x0
        0xf2
        0x0
        0xf3
        0x0
        0xf4
        0x20
        0xf5
        0x10
        0xf6
        0x0
        0xf7
        0x0
        0xf8
        0x0
        0xf9
        0x0
        0xfa
        0x88
        0xfb
        0x0
        0xfc
        0x0
        0x40
        0x8
        0x0
        0x44
        0x1
        0x38
        0x2
        0x1
        0x8
        0xf
        0x13
        0x24
        0x14
        0x57
        0x15
        0xc
        0x20
        0x12
        0x25
        0x8
        0x26
        0x1
        0x27
        0xc
        0x34
        0x1b
        0x23
        0x42
        0x10
        0x8
        0x40
        0x0
    .end array-data
.end method

.method public static synthetic Y(Lg/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg/k;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchip/Chip;->E:Z

    if-eqz v0, :cond_0

    const-string v0, "2815"

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lg/o;->C()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final Z()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, La/b;->e0:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lg/k;->n0:I

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lh0/d;->m:Lo1/y;

    iget-object v3, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v3, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lh0/d;->b:Lo1/y;

    iget-object v3, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Ly0/g;->v:Lo1/y;

    iget-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->m:Lo1/y;

    iget-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->b:Lo1/y;

    iget-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->v:Lo1/y;

    iget-object v1, p0, Lg/k;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lg/o;->a()V

    .line 2
    sget-object v0, Lu0/c;->P:Lo1/z;

    iget-object v1, p0, Lg/k;->y0:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 3
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lg/k;->z0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lg/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->c0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------->>> reverseCarplayLeds \nR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \nG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \nB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sys/class/leds/sc27xx:red/hw_pattern"

    .line 3
    invoke-static {v0, p3}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "/sys/class/leds/sc27xx:green/hw_pattern"

    .line 5
    invoke-static {p3, p2}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "/sys/class/leds/sc27xx:blue/hw_pattern"

    .line 7
    invoke-static {p2, p1}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-super {p0}, Lg/o;->b()V

    .line 2
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lg/k;->z0:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    invoke-static {}, Lg/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->c0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public c(Z[Lf1/o$b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== Chip onVideoChipsInited() mulit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cameraids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isCamera360: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lchip/Chip;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qin"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2}, Lf1/o;->m()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_f

    .line 3
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_f

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/4 v10, 0x3

    const/16 v11, 0x9

    const/4 v12, 0x1

    if-eq v6, v8, :cond_d

    .line 5
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v6

    if-eq v6, v11, :cond_d

    .line 6
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v6

    const/16 v13, 0x10

    if-eq v6, v13, :cond_d

    .line 7
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v6

    const/16 v14, 0xf

    if-ne v6, v14, :cond_0

    goto/16 :goto_9

    .line 8
    :cond_0
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_a

    .line 9
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v7

    iget-object v9, v0, Lg/k;->x0:Lf1/q$b;

    invoke-virtual {v6, v7, v9}, Lf1/o;->y(ILf1/q$b;)V

    .line 10
    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    const/4 v7, 0x7

    const/4 v9, 0x6

    const/4 v15, 0x5

    const/4 v3, 0x2

    const/4 v13, 0x4

    if-ne v6, v12, :cond_5

    .line 11
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v12

    invoke-virtual {v6, v3, v12}, Lf1/o;->w(II)V

    .line 12
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v12

    invoke-virtual {v6, v10, v12}, Lf1/o;->w(II)V

    .line 13
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v10

    invoke-virtual {v6, v13, v10}, Lf1/o;->w(II)V

    .line 14
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v10

    invoke-virtual {v6, v15, v10}, Lf1/o;->w(II)V

    .line 15
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lf1/o;->w(II)V

    .line 16
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Lf1/o;->w(II)V

    .line 17
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lf1/o;->w(II)V

    .line 18
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v7

    invoke-virtual {v6, v11, v7}, Lf1/o;->w(II)V

    .line 19
    invoke-static {}, Lg/f;->g()I

    move-result v6

    if-ne v6, v13, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 20
    :goto_1
    invoke-static {}, Lg/f;->g()I

    move-result v7

    if-ne v7, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 21
    iget-object v7, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v8

    invoke-virtual {v7, v14, v8}, Lf1/o;->w(II)V

    .line 22
    :cond_3
    invoke-static {}, Lg/f;->g()I

    move-result v7

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    if-eqz v3, :cond_b

    :cond_4
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 23
    :cond_5
    invoke-static {}, Lg/f;->g()I

    move-result v6

    if-ne v6, v13, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 24
    :goto_4
    invoke-static {}, Lg/f;->g()I

    move-result v12

    if-ne v12, v3, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-nez v6, :cond_9

    if-eqz v12, :cond_8

    goto :goto_6

    :cond_8
    const-string/jumbo v6, "ro.fyt.realplatform"

    const-string v12, ""

    .line 25
    invoke-static {v6, v12}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "6316N"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 26
    iget-object v6, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v12

    invoke-virtual {v6, v3, v12}, Lf1/o;->w(II)V

    .line 27
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v10, v6}, Lf1/o;->w(II)V

    .line 28
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v13, v6}, Lf1/o;->w(II)V

    .line 29
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v15, v6}, Lf1/o;->w(II)V

    .line 30
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v9, v6}, Lf1/o;->w(II)V

    .line 31
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Lf1/o;->w(II)V

    .line 32
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v8, v6}, Lf1/o;->w(II)V

    .line 33
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v11, v6}, Lf1/o;->w(II)V

    .line 34
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v14, v6}, Lf1/o;->w(II)V

    goto :goto_3

    .line 35
    :cond_9
    :goto_6
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v3, v7, v6}, Lf1/o;->w(II)V

    goto :goto_7

    .line 36
    :cond_a
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v3

    if-eq v3, v7, :cond_c

    .line 37
    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v3

    if-ne v3, v9, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v3, 0x0

    goto :goto_a

    .line 38
    :cond_c
    :goto_8
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v9, v6}, Lf1/o;->w(II)V

    .line 39
    iget-boolean v3, v0, Lchip/Chip;->E:Z

    goto :goto_b

    .line 40
    :cond_d
    :goto_9
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    const/16 v6, 0xb

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Lf1/o;->w(II)V

    .line 41
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Lf1/o;->w(II)V

    .line 42
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v6

    invoke-virtual {v3, v8, v6}, Lf1/o;->w(II)V

    .line 43
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    const/16 v6, 0xe

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lf1/o;->w(II)V

    .line 44
    invoke-static {}, Lg/f;->g()I

    move-result v3

    if-ne v3, v10, :cond_b

    invoke-virtual {v5}, Lf1/o$b;->b()I

    move-result v3

    if-ne v3, v11, :cond_b

    goto/16 :goto_3

    :goto_a
    const/4 v9, 0x1

    :goto_b
    if-eqz v3, :cond_e

    .line 45
    iget-object v3, v0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v5}, Lf1/o$b;->a()I

    move-result v5

    invoke-virtual {v3, v5, v9}, Lf1/o;->C(II)Z

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public d(ILjava/lang/String;)Lf1/o$d;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lf1/o;->i(ILjava/lang/String;)Lf1/o$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Lf1/o$d;->a(Landroid/os/Handler;)V

    :cond_0
    return-object p1
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->m()Z

    move-result v0

    iput-boolean v0, p0, Lchip/Chip;->E:Z

    .line 2
    invoke-static {v0}, Lg/f;->d(Z)V

    .line 3
    invoke-static {}, Lg/f;->o()Z

    move-result v0

    .line 4
    invoke-static {}, Lg/f;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "persist.fyt.ui.txz"

    .line 5
    invoke-static {v1, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.syu.doublecamera"

    .line 6
    invoke-static {v1, v0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public k(Lf1/o$c;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lchip/Chip;->k(Lf1/o$c;)V

    const-string v0, "Qin"

    const-string v1, "========== Chip configVideoChip() run: "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    iput-object v2, p0, Lchip/Chip;->z:Lf1/o;

    .line 4
    invoke-virtual {v2, p1}, Lf1/o;->v(Lf1/o$c;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========== Chip configVideoChip() manager.platformHasMulitVideoChip() : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2}, Lf1/o;->s()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " manager.platformIndexVideoChip(\"TP2850\"):"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const-string v3, "TP2850"

    .line 6
    invoke-virtual {v2, v3}, Lf1/o;->t(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1}, Lf1/o;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lf1/o;->x(Z)V

    .line 10
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1, v3}, Lf1/o;->t(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 11
    iget-object p1, p0, Lg/k;->A0:[I

    sput-object p1, Lf1/b;->v0:[I

    .line 12
    iget-object p1, p0, Lg/k;->B0:[I

    sput-object p1, Lf1/b;->w0:[I

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " manager enable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v1}, Lf1/o;->m()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1, p0}, Lf1/o;->l(Lf1/o$e;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lf1/o;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    :cond_2
    sget-object p1, Lu0/c;->P:Lo1/z;

    iget-object v0, p0, Lg/k;->y0:Lo1/p;

    invoke-virtual {p1, v0}, Lo1/z;->a(Lo1/p;)V

    :cond_3
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lchip/Chip;->E:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lchip/Chip;->c:Ljava/lang/String;

    const-string v1, "/dev/i2c-0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object v1, p0, Lchip/Chip;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lchip/Chip;->c:Ljava/lang/String;

    const-string v1, "/dev/i2c-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iput-object v1, p0, Lchip/Chip;->c:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Lg/o;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
