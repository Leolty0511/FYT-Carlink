.class public Le1/o;
.super Le1/l;
.source "SourceFile"


# static fields
.field public static A:I = 0x1

.field public static B:I = -0x1

.field public static C:I = 0x0

.field public static w:I = 0x44

.field public static x:Z = false

.field public static y:Z = false

.field public static z:Z = false


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lo1/n;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Landroid/os/UEventObserver;

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:[I

.field public u:[I

.field public v:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    const-string v0, "2850"

    .line 2
    iput-object v0, p0, Le1/o;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lo1/n;

    invoke-direct {v0}, Lo1/n;-><init>()V

    iput-object v0, p0, Le1/o;->b:Lo1/n;

    const/16 v0, 0x40

    .line 4
    iput v0, p0, Le1/o;->c:I

    const/16 v0, 0x41

    .line 5
    iput v0, p0, Le1/o;->d:I

    const/16 v0, 0x10

    .line 6
    iput v0, p0, Le1/o;->e:I

    const/16 v0, 0x12

    .line 7
    iput v0, p0, Le1/o;->f:I

    const/16 v0, 0x11

    .line 8
    iput v0, p0, Le1/o;->g:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Le1/o;->h:I

    .line 10
    iput v0, p0, Le1/o;->i:I

    .line 11
    iput v0, p0, Le1/o;->j:I

    .line 12
    new-instance v1, Le1/o$a;

    invoke-direct {v1, p0}, Le1/o$a;-><init>(Le1/o;)V

    iput-object v1, p0, Le1/o;->k:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Le1/o$b;

    invoke-direct {v1, p0}, Le1/o$b;-><init>(Le1/o;)V

    iput-object v1, p0, Le1/o;->l:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Le1/o$c;

    invoke-direct {v1, p0}, Le1/o$c;-><init>(Le1/o;)V

    iput-object v1, p0, Le1/o;->m:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Le1/o$d;

    invoke-direct {v1, p0}, Le1/o$d;-><init>(Le1/o;)V

    iput-object v1, p0, Le1/o;->n:Landroid/os/UEventObserver;

    .line 16
    new-instance v1, Le1/o$e;

    invoke-direct {v1, p0}, Le1/o$e;-><init>(Le1/o;)V

    iput-object v1, p0, Le1/o;->o:Ljava/lang/Runnable;

    .line 17
    iput v0, p0, Le1/o;->p:I

    .line 18
    iput v0, p0, Le1/o;->q:I

    .line 19
    iput v0, p0, Le1/o;->r:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Le1/o;->s:I

    const/16 v0, 0xd4

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    iput-object v0, p0, Le1/o;->t:[I

    const/16 v0, 0xd0

    new-array v1, v0, [I

    .line 22
    fill-array-data v1, :array_1

    iput-object v1, p0, Le1/o;->u:[I

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_2

    iput-object v0, p0, Le1/o;->v:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x40
        0x0
        0x0
        0x11
        0x1
        0x7e
        0x2
        0x42
        0x3
        0x2d
        0x4
        0x2
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
        0x43
        0xd
        0x50
        0xe
        0x0
        0xf
        0x0
        0x10
        0x0
        0x11
        0x50
        0x12
        0x40
        0x13
        0x0
        0x14
        0x0
        0x15
        0x13
        0x16
        0x15
        0x17
        0x0
        0x18
        0x19
        0x19
        0xd0
        0x1a
        0x25
        0x1b
        0x0
        0x1c
        0x7
        0x1d
        0xbc
        0x1e
        0x80
        0x1f
        0x80
        0x20
        0x30
        0x21
        0x86
        0x22
        0x38
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
        0x0
        0x29
        0x48
        0x2a
        0x30
        0x2b
        0x4a
        0x2c
        0xa
        0x2d
        0x30
        0x2e
        0x70
        0x2f
        0x0
        0x30
        0x48
        0x31
        0xbb
        0x32
        0x2e
        0x33
        0x90
        0x34
        0x0
        0x35
        0x25
        0x36
        0xdc
        0x37
        0x0
        0x38
        0x0
        0x39
        0x8
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
        0x41
        0x0
        0x4c
        0x40
        0x4e
        0x0
        0x4f
        0x0
        0xb5
        0x0
        0xb6
        0x0
        0xb7
        0x0
        0xb9
        0x0
        0xba
        0x0
        0xbc
        0x0
        0xbe
        0x0
        0xe6
        0x0
        0xe7
        0x13
        0xe8
        0x3
        0xef
        0x0
        0xf0
        0x0
        0xf3
        0x0
        0xf4
        0x20
        0xf5
        0x10
        0xf6
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
        0x7
        0xff
        0x8
        0xf
        0x13
        0x24
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
        0xe
        0x34
        0x1b
        0x23
        0x0
        0x40
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
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
        0x88
        0x10
        0xf8
        0x11
        0x40
        0x12
        0x60
        0x13
        0x0
        0x14
        0x0
        0x15
        0x13
        0x16
        0x79
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
        0x0
        0x29
        0x48
        0x2a
        0x30
        0x2b
        0x70
        0x2c
        0x2a
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
        0x41
        0x0
        0x4c
        0x40
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
        0xb5
        0x0
        0xb6
        0x0
        0xb7
        0x0
        0xb9
        0x0
        0xba
        0x0
        0xbc
        0x0
        0xbe
        0x0
        0xe6
        0x0
        0xe7
        0x13
        0xe8
        0x3
        0xef
        0x0
        0xf0
        0x0
        0xf3
        0x0
        0xf4
        0x20
        0xf5
        0x10
        0xf6
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
        0x40
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
        0x4
        0x26
        0x0
        0x27
        0x7
        0x34
        0x1b
        0x23
        0x40
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
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
        0x88
        0x10
        0xf8
        0x11
        0x40
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
        0x0
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
        0x41
        0x0
        0x4c
        0x40
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
        0xb5
        0x0
        0xb6
        0x0
        0xb7
        0x0
        0xb9
        0x0
        0xba
        0x0
        0xbc
        0x0
        0xbe
        0x0
        0xe6
        0x0
        0xe7
        0x13
        0xe8
        0x3
        0xef
        0x0
        0xf0
        0x0
        0xf3
        0x0
        0xf4
        0x20
        0xf5
        0x10
        0xf6
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
        0x40
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
        0x4
        0x26
        0x0
        0x27
        0x7
        0x34
        0x1b
        0x23
        0x40
        0x40
        0x0
    .end array-data
.end method

.method public static j()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    const/4 v1, -0x1

    .line 2
    sput v1, Le1/o;->B:I

    .line 3
    sput-boolean v0, Le1/o;->y:Z

    const/4 v0, 0x0

    .line 4
    sput v0, Le1/o;->C:I

    return-void
.end method

.method public static synthetic k(Le1/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Le1/o;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic l(Le1/o;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Le1/o;->v()I

    move-result p0

    return p0
.end method

.method public static synthetic m(I)I
    .locals 0

    .line 1
    sput p0, Le1/o;->B:I

    return p0
.end method

.method public static synthetic n(I)I
    .locals 0

    .line 1
    sput p0, Le1/o;->C:I

    return p0
.end method

.method public static synthetic o(Le1/o;)Landroid/os/UEventObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Le1/o;->n:Landroid/os/UEventObserver;

    return-object p0
.end method

.method public static synthetic p(Le1/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Le1/o;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic q(Le1/o;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le1/o;->z()V

    return-void
.end method

.method public static synthetic r(Le1/o;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le1/o;->u()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 10

    const-string v0, "sys.fyt.cvbs.iic.busy"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Le1/o;->w:I

    const/16 v1, 0x40

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Le1/o;->D(III)I

    .line 3
    sget v0, Le1/o;->w:I

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v3}, Le1/o;->x(II)I

    move-result v0

    .line 4
    sget v4, Le1/o;->w:I

    const/16 v5, 0x11

    invoke-virtual {p0, v4, v5}, Le1/o;->x(II)I

    move-result v4

    .line 5
    sget v6, Le1/o;->w:I

    const/16 v7, 0x12

    invoke-virtual {p0, v6, v7}, Le1/o;->x(II)I

    move-result v6

    const/16 v8, 0x47

    const/16 v9, 0x54

    if-ne v0, v2, :cond_1

    if-ne v4, v9, :cond_1

    if-eq v6, v8, :cond_2

    .line 6
    :cond_1
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v3, v2}, Le1/o;->D(III)I

    .line 7
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v5, v9}, Le1/o;->D(III)I

    .line 8
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v7, v8}, Le1/o;->D(III)I

    .line 9
    :cond_2
    sget v0, Le1/o;->w:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Le1/o;->D(III)I

    return-void
.end method

.method public final B(I)V
    .locals 3

    const-string v0, "1"

    const-string v1, "sys.fyt.cvbs.needdeinterlace"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 1
    invoke-static {v1, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "rewritebackcarpara*****(TVI_720P_25FPS)!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Le1/o;->t:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "rewritebackcarpara*****(NOR_CVBS_PAL)!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Le1/o;->v:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "rewritebackcarpara*****(NOR_CVBS_NTSC)!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Le1/o;->u:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    .line 10
    :goto_0
    sput p1, Le1/o;->B:I

    .line 11
    invoke-static {p1}, Lu0/d;->n3(I)V

    return-void
.end method

.method public final C()I
    .locals 12

    .line 1
    invoke-virtual {p0}, Le1/o;->t()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "sys.fyt.cvbs.iic.busy"

    const/4 v2, -0x1

    .line 2
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3
    iget v0, p0, Le1/o;->s:I

    return v0

    .line 4
    :cond_0
    sget v0, Le1/o;->w:I

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Le1/o;->x(II)I

    move-result v0

    const/4 v5, 0x7

    and-int/2addr v0, v5

    const-wide/16 v6, 0x32

    .line 5
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 6
    sget v8, Le1/o;->w:I

    invoke-virtual {p0, v8, v4}, Le1/o;->x(II)I

    move-result v8

    and-int/2addr v8, v5

    if-eq v0, v8, :cond_1

    .line 7
    iget v0, p0, Le1/o;->s:I

    return v0

    .line 8
    :cond_1
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 9
    sget v9, Le1/o;->w:I

    invoke-virtual {p0, v9, v4}, Le1/o;->x(II)I

    move-result v9

    and-int/2addr v9, v5

    const-string v10, "temp = "

    if-ne v0, v8, :cond_4

    if-ne v0, v9, :cond_4

    .line 10
    iget v8, p0, Le1/o;->r:I

    if-eq v8, v0, :cond_2

    .line 11
    iget-object v8, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "temp_pre = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Le1/o;->r:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iput v0, p0, Le1/o;->r:I

    :cond_2
    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 13
    :pswitch_0
    iput v2, p0, Le1/o;->s:I

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 15
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v3}, Le1/o;->x(II)I

    move-result v0

    shr-int/2addr v0, v8

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    .line 16
    iput v1, p0, Le1/o;->s:I

    goto :goto_0

    .line 17
    :cond_3
    iput v3, p0, Le1/o;->s:I

    goto :goto_0

    .line 18
    :pswitch_2
    iput v8, p0, Le1/o;->s:I

    goto :goto_0

    .line 19
    :pswitch_3
    iput v4, p0, Le1/o;->s:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    .line 20
    iput v0, p0, Le1/o;->s:I

    goto :goto_0

    .line 21
    :pswitch_5
    iput v5, p0, Le1/o;->s:I

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    .line 22
    iput v0, p0, Le1/o;->s:I

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    .line 23
    iput v0, p0, Le1/o;->s:I

    goto :goto_0

    .line 24
    :cond_4
    iget-object v1, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "temp1 = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "temp2 = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "sys.fyt.video.debug"

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    invoke-static {v1}, Lu0/d;->o3(I)V

    .line 27
    :cond_6
    :goto_0
    iget v0, p0, Le1/o;->s:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final D(III)I
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lo1/q0;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Le1/o;->b:Lo1/n;

    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->h(III)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "void closeVideo()......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lu0/d;->o3(I)V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Le1/o;->z:Z

    .line 5
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "closeVideo.signalOn(111111111)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le1/o;->b:Lo1/n;

    const-string v1, "/dev/i2c-0"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le1/o;->b:Lo1/n;

    const-string v1, "/dev/i2c-4"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    .line 4
    :goto_0
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Le1/o;->k:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Le1/o;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->a(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "void in()......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    sget-boolean v0, Le1/o;->x:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le1/o;->v()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Le1/o;->x:Z

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "void openVideo()......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0, p1}, Le1/o;->w(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Le1/o;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Le1/o;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "void out()......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/o;->u:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Le1/o;->x:Z

    .line 3
    sget v0, Le1/o;->A:I

    invoke-virtual {p0, v0}, Le1/o;->w(I)V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Le1/o;->y:Z

    .line 5
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "void refreshVideoParameters()......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(IIII)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "sys.fyt.video.debug"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "sys.fyt.cvbs.iic.busy"

    const/4 v3, -0x1

    .line 2
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "i***="

    const-wide/16 v6, 0x2

    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    move v4, v2

    :goto_0
    if-ge v4, v8, :cond_2

    .line 3
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 4
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 5
    iget-object v11, v0, Le1/o;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "iicbusyflag11111***** = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    sget v4, Le1/o;->w:I

    const/16 v10, 0x40

    invoke-virtual {v0, v4, v10}, Le1/o;->x(II)I

    move-result v4

    move v11, v2

    :goto_2
    const-wide/16 v12, 0x5

    if-eqz v4, :cond_3

    add-int/lit8 v4, v11, 0x1

    if-ge v11, v8, :cond_3

    .line 7
    iget-object v11, v0, Le1/o;->a:Ljava/lang/String;

    const-string v14, "2850pageerror111111!!***** = "

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v12, v13}, La/i;->a0(J)V

    .line 9
    sget v11, Le1/o;->w:I

    invoke-virtual {v0, v11, v10}, Le1/o;->x(II)I

    move-result v11

    move/from16 v16, v11

    move v11, v4

    move/from16 v4, v16

    goto :goto_2

    .line 10
    :cond_3
    sget v4, Le1/o;->w:I

    const/16 v11, 0x10

    move/from16 v14, p2

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v0, v4, v11, v14}, Le1/o;->D(III)I

    .line 11
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_5

    move v4, v2

    :goto_3
    if-ge v4, v8, :cond_5

    .line 12
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 13
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 14
    iget-object v14, v0, Le1/o;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iicbusyflag22222***** = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_3

    .line 15
    :cond_5
    :goto_4
    sget v2, Le1/o;->w:I

    invoke-virtual {v0, v2, v10}, Le1/o;->x(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-eqz v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    if-ge v4, v8, :cond_6

    .line 16
    iget-object v4, v0, Le1/o;->a:Ljava/lang/String;

    const-string v11, "2850pageerror22222!!***** = "

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {v12, v13}, La/i;->a0(J)V

    .line 18
    sget v4, Le1/o;->w:I

    invoke-virtual {v0, v4, v10}, Le1/o;->x(II)I

    move-result v4

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto :goto_5

    .line 19
    :cond_6
    sget v2, Le1/o;->w:I

    const/16 v4, 0x12

    move/from16 v11, p3

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v0, v2, v4, v11}, Le1/o;->D(III)I

    .line 20
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_8

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v8, :cond_8

    .line 21
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 22
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 23
    iget-object v9, v0, Le1/o;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "iicbusyflag33333***** = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 24
    :cond_8
    :goto_7
    sget v1, Le1/o;->w:I

    invoke-virtual {v0, v1, v10}, Le1/o;->x(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-eqz v1, :cond_9

    add-int/lit8 v1, v2, 0x1

    if-ge v2, v8, :cond_9

    .line 25
    iget-object v2, v0, Le1/o;->a:Ljava/lang/String;

    const-string v3, "2850pageerror333333!!***** = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v12, v13}, La/i;->a0(J)V

    .line 27
    sget v2, Le1/o;->w:I

    invoke-virtual {v0, v2, v10}, Le1/o;->x(II)I

    move-result v2

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto :goto_8

    .line 28
    :cond_9
    sget v1, Le1/o;->w:I

    const/16 v2, 0x11

    move/from16 v3, p4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v1, v2, v3}, Le1/o;->D(III)I

    .line 29
    iget-object v1, v0, Le1/o;->a:Ljava/lang/String;

    const-string v2, "void videoImageSet()......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le1/o;->a:Ljava/lang/String;

    const-string v0, "void videoParameters()......"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()I
    .locals 3

    .line 1
    iget v0, p0, Le1/o;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v2}, Le1/o;->x(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3
    :cond_1
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v2}, Le1/o;->x(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    sget v0, Le1/o;->w:I

    .line 4
    invoke-virtual {p0, v0, v2}, Le1/o;->x(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    sget v0, Le1/o;->w:I

    .line 5
    invoke-virtual {p0, v0, v2}, Le1/o;->x(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x5

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    sget v0, Le1/o;->w:I

    .line 6
    invoke-virtual {p0, v0, v2}, Le1/o;->x(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public final t()I
    .locals 3

    const-string v0, "sys.fyt.cvbs.iic.busy"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Le1/o;->p:I

    return v0

    .line 3
    :cond_0
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v1}, Le1/o;->x(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le1/o;->p:I

    goto :goto_0

    .line 5
    :cond_1
    iput v1, p0, Le1/o;->p:I

    .line 6
    :goto_0
    iget v0, p0, Le1/o;->q:I

    iget v1, p0, Le1/o;->p:I

    if-eq v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signalonoffsave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le1/o;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "signalonofftemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le1/o;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v0, p0, Le1/o;->p:I

    iput v0, p0, Le1/o;->q:I

    .line 9
    :cond_2
    iget v0, p0, Le1/o;->p:I

    return v0
.end method

.method public final u()V
    .locals 5

    const-string v0, "sys.fyt.cvbs.iic.busy"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Le1/o;->w:I

    const/16 v3, 0xfe

    invoke-virtual {p0, v0, v3}, Le1/o;->x(II)I

    move-result v0

    .line 3
    sget v3, Le1/o;->w:I

    const/16 v4, 0xff

    invoke-virtual {p0, v3, v4}, Le1/o;->x(II)I

    move-result v3

    const/16 v4, 0x28

    if-eq v0, v4, :cond_1

    const/16 v0, 0x50

    if-eq v3, v0, :cond_1

    .line 4
    sget-boolean v0, Le1/o;->y:Z

    if-nez v0, :cond_1

    .line 5
    sget v0, Le1/o;->C:I

    add-int/2addr v0, v2

    sput v0, Le1/o;->C:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 6
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v3, "IIC error------,reseting 2850!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LG"

    const-string v3, "2850pI2c errorreset 2850"

    .line 7
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 9
    sput v1, Le1/o;->B:I

    .line 10
    sput-boolean v2, Le1/o;->y:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    sput v0, Le1/o;->C:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final v()I
    .locals 3

    .line 1
    iget-object v0, p0, Le1/o;->t:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2
    iget-object v1, p0, Le1/o;->a:Ljava/lang/String;

    const-string v2, "int init()......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final w(I)V
    .locals 10

    if-ltz p1, :cond_a

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    sget-object v0, Lu0/b;->t4:[I

    aget v0, v0, p1

    .line 2
    iget-object v1, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2850channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sput p1, Le1/o;->A:I

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Le1/o;->z:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    :goto_0
    if-eq v2, v4, :cond_9

    const-string v0, "sys.fyt.cvbs.iic.busy"

    .line 5
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5

    const-wide/16 v6, 0x64

    .line 6
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 7
    :cond_5
    sget v0, Le1/o;->w:I

    const/16 v3, 0x41

    invoke-virtual {p0, v0, v3, v2}, Le1/o;->D(III)I

    move-result v0

    move v6, v1

    :goto_1
    const-string v7, "LG"

    if-ne v0, v4, :cond_7

    add-int/lit8 v8, v6, 0x1

    const/16 v9, 0x3c

    if-ge v6, v9, :cond_6

    const-string v0, "2850pageerror111111!!***** = "

    .line 8
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget v0, Le1/o;->w:I

    invoke-virtual {p0, v0, v3, v2}, Le1/o;->D(III)I

    move-result v0

    const-wide/16 v6, 0x32

    .line 10
    invoke-static {v6, v7}, La/i;->a0(J)V

    move v6, v8

    goto :goto_1

    :cond_6
    move v6, v8

    :cond_7
    const/16 v3, 0x3d

    if-ne v6, v3, :cond_8

    const-string v3, "2850pageerror111111!!***** reset 2850"

    .line 11
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v5}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 13
    sput v4, Le1/o;->B:I

    .line 14
    sput-boolean v5, Le1/o;->y:Z

    .line 15
    invoke-virtual {p0}, Le1/o;->A()V

    .line 16
    sput v1, Le1/o;->C:I

    .line 17
    :cond_8
    iget-object v3, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2850 channel value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, "%02X "

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " writeresult = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "sys.fyt.camera_type"

    .line 18
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_a

    if-ne p1, v5, :cond_a

    .line 19
    iget-object p1, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76f4\u63a5\u4f7f\u7528\u8bb0\u5fc6\u7684\u6444\u50cf\u5934\u7c7b\u578b\u6765\u5237 2825\u53c2\u6570 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0, v0}, Le1/o;->B(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final x(II)I
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lo1/q0;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Le1/o;->b:Lo1/n;

    invoke-virtual {v0, p1, p2}, Lo1/n;->g(II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final y([I)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    const-string v2, "sys.fyt.cvbs.iic.busy"

    .line 2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-wide/16 v3, 0xc8

    .line 3
    invoke-static {v3, v4}, La/i;->a0(J)V

    :cond_1
    move v1, v0

    move v3, v1

    move v4, v3

    .line 4
    :goto_0
    array-length v5, p1

    sub-int/2addr v5, v2

    if-ge v1, v5, :cond_5

    .line 5
    aget v5, p1, v1

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    :cond_2
    if-nez v4, :cond_4

    .line 6
    aget v5, p1, v1

    const/16 v6, 0x10

    if-eq v5, v6, :cond_3

    aget v5, p1, v1

    const/16 v6, 0x12

    if-eq v5, v6, :cond_3

    aget v5, p1, v1

    const/16 v6, 0x11

    if-eq v5, v6, :cond_3

    aget v5, p1, v1

    const/16 v6, 0x41

    if-ne v5, v6, :cond_4

    .line 7
    :cond_3
    iget-object v5, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "regAddr***************** = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v2, [Ljava/lang/Object;

    aget v8, p1, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "%02X "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v2, [Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    aget v9, p1, v9

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v0

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_4
    sget v5, Le1/o;->w:I

    aget v6, p1, v1

    add-int/lit8 v7, v1, 0x1

    aget v7, p1, v7

    invoke-virtual {p0, v5, v6, v7}, Le1/o;->D(III)I

    move-result v5

    add-int/2addr v3, v5

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    :goto_2
    return v0
.end method

.method public final z()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le1/o;->C()I

    move-result v0

    .line 2
    sget v1, Le1/o;->B:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v3, p0, Le1/o;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatpre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Le1/o;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "temp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget v3, Le1/o;->A:I

    if-ne v3, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sys.fyt.camera_type"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    sput v0, Le1/o;->B:I

    const-string v1, "1"

    const-string v3, "sys.fyt.cvbs.needdeinterlace"

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 7
    invoke-static {v3, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "refreshVideoParameters(TVI_720P_25FPS)!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Le1/o;->t:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3, v1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "refreshVideoParameters(NOR_CVBS_PAL)!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Le1/o;->v:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v3, v1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le1/o;->a:Ljava/lang/String;

    const-string v1, "refreshVideoParameters(NOR_CVBS_NTSC)!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Le1/o;->u:[I

    invoke-virtual {p0, v0}, Le1/o;->y([I)I

    .line 16
    :goto_0
    sget v0, Le1/o;->B:I

    invoke-static {v0}, Lu0/d;->n3(I)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Le1/o;->s()I

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Le1/o;->z:Z

    if-eq v0, v2, :cond_5

    .line 18
    invoke-static {v2}, Lu0/d;->o3(I)V

    :cond_5
    return-void
.end method
