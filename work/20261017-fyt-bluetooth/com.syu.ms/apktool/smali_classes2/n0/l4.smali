.class public Ln0/l4;
.super Ly/c$a;
.source "SourceFile"


# static fields
.field public static b:Ln0/l4;


# instance fields
.field public a:Ln0/c4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ly/c$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln0/l4;->a:Ln0/c4;

    return-void
.end method

.method public static declared-synchronized L2()Ln0/l4;
    .locals 2

    const-class v0, Ln0/l4;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ln0/l4;->b:Ln0/l4;

    if-nez v1, :cond_0

    new-instance v1, Ln0/l4;

    invoke-direct {v1}, Ln0/l4;-><init>()V

    sput-object v1, Ln0/l4;->b:Ln0/l4;

    .line 2
    :cond_0
    sget-object v1, Ln0/l4;->b:Ln0/l4;
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
.method public K2()Ln0/c4;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/l4;->a:Ln0/c4;

    return-object v0
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public M2(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/l4;->a:Ln0/c4;

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 1
    sget-object v0, Ln0/j4;->e:[Lo1/x;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Ln0/j4;->f:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->o(Lo1/x;Ly/b;I)V

    :cond_1
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_4

    const/16 v0, 0x64

    if-ge p2, v0, :cond_4

    .line 1
    sget-object v0, Ln0/j4;->e:[Lo1/x;

    aget-object v1, v0, p2

    if-nez v1, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Ln0/j4;->f:Lo1/x;

    aput-object v1, v0, p2

    .line 5
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Ln0/j4;->f:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->k(Lo1/x;Ly/b;I)V

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x50

    if-ge p2, v0, :cond_4

    .line 7
    iget-object v0, p0, Ln0/l4;->a:Ln0/c4;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Ln0/c4;->Y1(Ly/b;II)V

    :cond_4
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Ln0/l4;->a:Ln0/c4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Ln0/c4;->Z0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
