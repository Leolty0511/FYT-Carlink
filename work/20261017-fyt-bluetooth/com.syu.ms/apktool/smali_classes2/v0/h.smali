.class public Lv0/h;
.super Lv0/m;
.source "SourceFile"


# static fields
.field public static b:Lv0/h;


# instance fields
.field public a:Lv0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/m;-><init>()V

    return-void
.end method

.method public static declared-synchronized M2()Lv0/h;
    .locals 2

    const-class v0, Lv0/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lv0/h;->b:Lv0/h;

    if-nez v1, :cond_0

    new-instance v1, Lv0/h;

    invoke-direct {v1}, Lv0/h;-><init>()V

    sput-object v1, Lv0/h;->b:Lv0/h;

    .line 2
    :cond_0
    sget-object v1, Lv0/h;->b:Lv0/h;
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
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/h;->a:Lv0/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/m;->M1(I[I[F[Ljava/lang/String;)Ly/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()Lv0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/h;->a:Lv0/m;

    return-object v0
.end method

.method public O2(Lv0/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv0/h;->a:Lv0/m;

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x4b0

    if-ge p2, v0, :cond_1

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lv0/b;->e:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->o(Lo1/x;Ly/b;I)V

    :cond_1
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_7

    const/16 v0, 0x4b0

    if-ge p2, v0, :cond_7

    .line 1
    sget-object v0, Lv0/b;->d:[Lo1/x;

    aget-object v1, v0, p2

    if-nez v1, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lv0/b;->e:Lo1/x;

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
    sget-object v0, Lv0/b;->e:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->k(Lo1/x;Ly/b;I)V

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_4

    .line 7
    iget-object v0, p0, Lv0/h;->a:Lv0/m;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lv0/m;->Y1(Ly/b;II)V

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3e9

    if-eq p2, v0, :cond_5

    goto :goto_1

    :cond_5
    new-array v0, v1, [I

    .line 9
    sget v1, Lv0/b;->a:I

    aput v1, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_1

    :cond_6
    new-array v0, v1, [I

    .line 10
    sget v1, Lv0/b;->g:I

    aput v1, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lv0/h;->a:Lv0/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/m;->Z0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
