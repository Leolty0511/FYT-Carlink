.class public Lg/l;
.super Lg/k;
.source "SourceFile"


# instance fields
.field public C0:Z

.field public D0:Lf1/q$b;

.field public E0:[I

.field public F0:[I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lg/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg/l;->C0:Z

    .line 3
    new-instance v1, Lg/l$a;

    invoke-direct {v1, p0}, Lg/l$a;-><init>(Lg/l;)V

    iput-object v1, p0, Lg/l;->D0:Lf1/q$b;

    const/16 v1, 0x18a

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, Lg/l;->E0:[I

    const/16 v2, 0x170

    new-array v2, v2, [I

    .line 5
    fill-array-data v2, :array_1

    iput-object v2, p0, Lg/l;->F0:[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_2

    iput-object v4, p0, Lchip/Chip;->C:[I

    .line 7
    sput-object v2, Lf1/b;->t0:[I

    .line 8
    sput-object v1, Lf1/b;->r0:[I

    .line 9
    invoke-virtual {p0}, Lg/l;->b0()V

    const/4 v1, 0x1

    .line 10
    sput-boolean v1, Lw0/d;->c:Z

    .line 11
    sget-object v2, Ly0/f;->z0:[I

    const/4 v4, 0x7

    const/4 v5, 0x6

    aput v5, v2, v4

    .line 12
    new-instance v2, Lf1/o$f;

    const-string v4, "TP2815"

    invoke-direct {v2, v4, v0}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lf1/o$d;

    const-class v5, Lf1/a;

    const-string v6, "/dev/i2c-0"

    const/16 v7, 0x44

    invoke-direct {v4, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v2, v4}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 13
    iget-boolean v2, p0, Lg/l;->C0:Z

    const-string v4, "/dev/i2c-1"

    const-string v5, "TP9963"

    if-eqz v2, :cond_0

    .line 14
    new-instance v2, Lf1/o$f;

    invoke-direct {v2, v5, v1}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lf1/o$d;

    const-class v8, Lf1/f;

    invoke-direct {v5, v4, v7, v8}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v2, v5}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lf1/o$f;

    invoke-direct {v2, v5, v1}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lf1/o$d;

    const-class v8, Lf1/e;

    invoke-direct {v5, v4, v7, v8}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v2, v5}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 16
    :goto_0
    sget-object v2, Lbase/Configure$Property;->b0:Lbase/Configure$Property;

    const-string v4, ""

    invoke-virtual {v2, v4}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    sget-object v2, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    invoke-virtual {v2, v4}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v4, "8918L"

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x21

    const-string v5, "LT8918"

    if-eqz v2, :cond_2

    .line 20
    new-instance v2, Lf1/o$f;

    invoke-direct {v2, v5, v0}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lf1/o$d;

    const-class v8, Lf1/m;

    invoke-direct {v7, v6, v4, v8}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v2, v7}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 21
    new-instance v2, Lf1/o$f;

    invoke-direct {v2, v5, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lf1/o$d;

    const-class v7, Lf1/m;

    invoke-direct {v5, v6, v4, v7}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v2, v5}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    goto :goto_3

    .line 22
    :cond_2
    sget-object v2, Lbase/Configure$Property;->j:Lbase/Configure$Property;

    invoke-virtual {v2, v0}, Lbase/Configure$Property;->b(Z)Z

    move-result v2

    .line 23
    new-instance v7, Lf1/o$f;

    invoke-direct {v7, v5, v0}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lf1/o$d;

    if-eqz v2, :cond_3

    .line 24
    const-class v9, Lf1/n;

    goto :goto_1

    :cond_3
    const-class v9, Lf1/l;

    :goto_1
    invoke-direct {v8, v6, v4, v9}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 25
    invoke-static {v7, v8}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 26
    new-instance v7, Lf1/o$f;

    invoke-direct {v7, v5, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lf1/o$d;

    if-eqz v2, :cond_4

    .line 27
    const-class v2, Lf1/n;

    goto :goto_2

    :cond_4
    const-class v2, Lf1/l;

    :goto_2
    invoke-direct {v5, v6, v4, v2}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 28
    invoke-static {v7, v5}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 29
    :goto_3
    sput-boolean v1, Lu0/b;->E1:Z

    .line 30
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lx0/c;->Z2(I)V

    .line 31
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    const-string/jumbo v4, "sys.fyt.main2.vc_"

    invoke-virtual {v2, v3, v4}, Lf1/o;->A(ILjava/lang/String;)V

    .line 32
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    const-string/jumbo v3, "sys.fyt.sub.vc_"

    invoke-virtual {v2, v1, v3}, Lf1/o;->A(ILjava/lang/String;)V

    .line 33
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    const-string/jumbo v2, "sys.fyt.main0.vc_"

    invoke-virtual {v1, v0, v2}, Lf1/o;->A(ILjava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x40
        0x8
        0x10
        0x88
        0x23
        0x2
        0x40
        0x0
        0x0
        0x11
        0x1
        0x7a
        0x2
        0x44
        0x3
        0xb
        0x4
        0x8
        0x5
        0x0
        0x6
        0x32
        0x7
        0x80
        0x8
        0x0
        0x9
        0x24
        0xa
        0x48
        0xb
        0xc0
        0xc
        0x3
        0xd
        0x73
        0xe
        0x0
        0xf
        0x0
        0x10
        0x0
        0x11
        0x40
        0x12
        0x40
        0x13
        0x0
        0x14
        0x0
        0x15
        0x3
        0x16
        0xe8
        0x17
        0x80
        0x18
        0x29
        0x19
        0x38
        0x1a
        0x47
        0x1b
        0x0
        0x1c
        0xa
        0x1d
        0x50
        0x1e
        0x80
        0x1f
        0x80
        0x20
        0x3c
        0x21
        0x46
        0x22
        0x36
        0x23
        0x3c
        0x24
        0x4
        0x25
        0xfe
        0x26
        0x5
        0x27
        0x2d
        0x28
        0x0
        0x29
        0x48
        0x2a
        0x30
        0x2b
        0x60
        0x2c
        0x2a
        0x2d
        0x54
        0x2e
        0x40
        0x2f
        0x0
        0x30
        0xa5
        0x31
        0x86
        0x32
        0xfb
        0x33
        0x60
        0x34
        0x0
        0x35
        0x5
        0x36
        0xdc
        0x37
        0x0
        0x38
        0x0
        0x39
        0x1c
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
        0xb0
        0x0
        0xb1
        0x0
        0xb2
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
        0xfd
        0x0
        0x40
        0x8
        0x0
        0x40
        0x1
        0x38
        0x2
        0x1
        0x6
        0xff
        0x7
        0xff
        0x8
        0xf
        0x11
        0x54
        0x12
        0x47
        0x13
        0x4
        0x14
        0x46
        0x15
        0x8
        0x20
        0x12
        0x21
        0x0
        0x22
        0x0
        0x23
        0x2
        0x24
        0x0
        0x25
        0x11
        0x26
        0x5
        0x27
        0x22
        0x28
        0x18
        0x30
        0x0
        0x31
        0x7
        0x32
        0x80
        0x33
        0x0
        0x34
        0x1b
        0x35
        0x15
        0x36
        0x1
        0x10
        0x8
        0x40
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40
        0x8
        0x10
        0x88
        0x23
        0x2
        0x40
        0x0
        0x0
        0x11
        0x1
        0x7a
        0x2
        0x44
        0x3
        0xb
        0x4
        0x0
        0x5
        0x0
        0x6
        0x32
        0x7
        0x80
        0x8
        0x0
        0x9
        0x24
        0xa
        0x48
        0xb
        0xc0
        0xc
        0x3
        0xd
        0x72
        0xe
        0x0
        0xf
        0x0
        0x10
        0x0
        0x11
        0x40
        0x12
        0x40
        0x13
        0x0
        0x14
        0x0
        0x15
        0x3
        0x16
        0xe8
        0x17
        0x80
        0x18
        0x29
        0x19
        0x38
        0x1a
        0x47
        0x1b
        0x0
        0x1c
        0x8
        0x1d
        0x98
        0x1e
        0x80
        0x1f
        0x80
        0x20
        0x38
        0x21
        0x46
        0x22
        0x36
        0x23
        0x3c
        0x24
        0x4
        0x25
        0xfe
        0x26
        0x1
        0x27
        0x2d
        0x28
        0x0
        0x29
        0x48
        0x2a
        0x30
        0x2b
        0x60
        0x2c
        0x1a
        0x2d
        0x54
        0x2e
        0x40
        0x2f
        0x0
        0x30
        0xa5
        0x31
        0x95
        0x32
        0xe0
        0x33
        0x60
        0x34
        0x0
        0x35
        0x5
        0x36
        0xdc
        0x37
        0x0
        0x38
        0x0
        0x39
        0x1c
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
        0xb0
        0x0
        0xb1
        0x0
        0xb2
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
        0xfd
        0x0
        0xfe
        0x28
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
        0x4
        0x14
        0x46
        0x15
        0x8
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
        0x2
        0x10
        0x8
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x41
        0x46
    .end array-data
.end method


# virtual methods
.method public final b0()V
    .locals 3

    const-string/jumbo v0, "sys.fyt.back_0_video_ic"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TP2815"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lg/l;->C0:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "sys.fyt.front_video_ic"

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lg/l;->C0:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lg/l;->C0:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "sys.fyt.back_video_ic"

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lg/l;->C0:Z

    .line 8
    :cond_1
    iget-boolean v0, p0, Lg/l;->C0:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "ro.fyt.main_video_ic"

    .line 9
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lg/l;->C0:Z

    .line 11
    :cond_2
    iget-boolean v0, p0, Lg/l;->C0:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "ro.fyt.sub_video_ic"

    .line 12
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lg/l;->C0:Z

    :cond_3
    return-void
.end method

.method public c(Z[Lf1/o$b;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lg/k;->c(Z[Lf1/o$b;)V

    .line 2
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1}, Lf1/o;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v0, p1, :cond_5

    aget-object v4, p2, v0

    .line 4
    invoke-virtual {v4}, Lf1/o$b;->a()I

    move-result v5

    .line 5
    invoke-virtual {v4}, Lf1/o$b;->b()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_2

    .line 6
    iget-boolean v2, p0, Lg/l;->C0:Z

    const/16 v6, 0xf

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v1, v5}, Lf1/o;->w(II)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v5}, Lf1/o;->d(I)Lf1/q;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    sget v3, Lf1/q;->L:I

    const-string v7, "a"

    invoke-virtual {v2, v3, v7}, Lf1/q;->F(ILjava/lang/String;)V

    .line 10
    sget v3, Lf1/q;->M:I

    const-string v7, "b"

    invoke-virtual {v2, v3, v7}, Lf1/q;->F(ILjava/lang/String;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 12
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v5}, Lf1/o;->w(II)V

    move v3, v6

    .line 13
    :goto_1
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 14
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 15
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 16
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v6, 0x5

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 17
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 18
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v6, 0x7

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 19
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 20
    iget-object v2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v5}, Lf1/o;->w(II)V

    .line 21
    iget-boolean v2, p0, Lchip/Chip;->E:Z

    xor-int/2addr v2, v1

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v4}, Lf1/o$b;->b()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_3

    .line 23
    iget-object v6, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v4}, Lf1/o$b;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Lf1/o;->d(I)Lf1/q;

    move-result-object v6

    check-cast v6, Lf1/a;

    .line 24
    iget-object v7, p0, Lchip/Chip;->z:Lf1/o;

    iget-object v8, p0, Lg/l;->D0:Lf1/q$b;

    invoke-virtual {v7, v5, v8}, Lf1/o;->y(ILf1/q$b;)V

    .line 25
    invoke-virtual {v6, v1}, Lf1/a;->d0(Z)V

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 26
    iget-object v5, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {v4}, Lf1/o$b;->a()I

    move-result v4

    invoke-virtual {v5, v4, v3}, Lf1/o;->C(II)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-static {}, Lg/f;->m()Z

    move-result v0

    iput-boolean v0, p0, Lchip/Chip;->E:Z

    .line 2
    invoke-static {v0}, Lg/f;->d(Z)V

    const-string v0, "persist.fyt.ui.txz"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lchip/Chip;->E:Z

    const-string v1, "com.syu.doublecamera"

    invoke-static {v1, v0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public k(Lf1/o$c;)V
    .locals 1

    .line 1
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iput-object v0, p0, Lchip/Chip;->z:Lf1/o;

    .line 2
    invoke-virtual {v0, p1}, Lf1/o;->v(Lf1/o$c;)V

    .line 3
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf1/o;->x(Z)V

    .line 4
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    const-string v0, "TP2850"

    invoke-virtual {p1, v0}, Lf1/o;->t(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    iget-object p1, p0, Lg/k;->A0:[I

    sput-object p1, Lf1/b;->v0:[I

    .line 6
    iget-object p1, p0, Lg/k;->B0:[I

    sput-object p1, Lf1/b;->w0:[I

    .line 7
    :cond_0
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p1, p0}, Lf1/o;->l(Lf1/o$e;)V

    .line 8
    iget-object p1, p0, Lchip/Chip;->z:Lf1/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lf1/o;->m()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    :cond_1
    sget-object p1, Lu0/c;->P:Lo1/z;

    iget-object v0, p0, Lg/k;->y0:Lo1/p;

    invoke-virtual {p1, v0}, Lo1/z;->a(Lo1/p;)V

    :cond_2
    return-void
.end method
