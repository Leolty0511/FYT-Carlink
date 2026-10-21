.class public Lmodule/canbus/h;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/h$b;
    }
.end annotation


# static fields
.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static final j:[I

.field public static final k:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/h$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/h;->j:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/h;->k:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lmodule/canbus/h;->b:I

    .line 3
    new-instance v0, Lmodule/canbus/h$a;

    invoke-direct {v0, p0}, Lmodule/canbus/h$a;-><init>(Lmodule/canbus/h;)V

    iput-object v0, p0, Lmodule/canbus/h;->c:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmodule/canbus/h;->d:I

    return-void
.end method

.method public static synthetic b3(Lmodule/canbus/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/h;->e:I

    return p0
.end method

.method public static synthetic c3(Lmodule/canbus/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/h;->e:I

    return p1
.end method

.method public static synthetic d3(Lmodule/canbus/h;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/h;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/h;->e:I

    return v0
.end method

.method public static synthetic e3(Lmodule/canbus/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h;->r3()V

    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/h;->b:I

    return p0
.end method

.method public static synthetic g3(Lmodule/canbus/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/h;->d:I

    return p0
.end method

.method public static synthetic h3(Lmodule/canbus/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/h;->d:I

    return p1
.end method

.method public static synthetic i3(Lmodule/canbus/h;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/h;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/h;->d:I

    return v0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h;->f:I

    return v0
.end method

.method public static synthetic k3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/h;->f:I

    return p0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h;->h:I

    return v0
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h;->g:I

    return v0
.end method

.method public static synthetic n3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/h;->g:I

    return p0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h;->i:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h;->s3()V

    return-void
.end method

.method public static q3(III)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/h;->k:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/h$b;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/h$b;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/h;->j:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/h;->h:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/h;->i:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v3, v0, Lk0/mt;->e:I

    .line 4
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v3, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v3, v0, Lk0/mt;->e:I

    .line 9
    iput v3, v0, Lk0/mt;->f:I

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    .line 11
    iput v3, v0, Lk0/mt;->b:I

    .line 12
    iput v2, v0, Lk0/mt;->c:I

    .line 13
    iput v2, v0, Lk0/mt;->d:I

    .line 14
    iput v3, v0, Lk0/mt;->o:I

    .line 15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0, v3}, Lmodule/canbus/h;->a3(I)V

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/h;->init()V

    .line 18
    iget-object v0, p0, Lmodule/canbus/h;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 1

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x2

    .line 3
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/f0;->f(B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/h;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/h;->a3(I)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a3(I)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v0, 0x3

    aput p1, v1, v0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/h;->k:Lo1/f;

    new-instance v1, Lmodule/canbus/h$b;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final r3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h;->s3()V

    return-void
.end method

.method public final declared-synchronized s3()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    sget v1, Lmodule/canbus/h;->i:I

    sget v2, Lmodule/canbus/h;->h:I

    invoke-static {v0, v1, v2}, Lmodule/canbus/h;->q3(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
