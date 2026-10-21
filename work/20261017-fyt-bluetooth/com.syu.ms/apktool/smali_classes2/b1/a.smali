.class public Lb1/a;
.super Ly/c$a;
.source "SourceFile"


# static fields
.field public static a:Lb1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/c$a;-><init>()V

    return-void
.end method

.method public static declared-synchronized K2()Lb1/a;
    .locals 2

    const-class v0, Lb1/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lb1/a;->a:Lb1/a;

    if-nez v1, :cond_0

    new-instance v1, Lb1/a;

    invoke-direct {v1}, Lb1/a;-><init>()V

    sput-object v1, Lb1/a;->a:Lb1/a;

    .line 2
    :cond_0
    sget-object v1, Lb1/a;->a:Lb1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-static {p4, p1}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p4, p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    :cond_1
    :goto_0
    return-void
.end method
