.class public Lt0/a;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static g:Lt0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    return-void
.end method

.method public static declared-synchronized X2()Lt0/a;
    .locals 2

    const-class v0, Lt0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lt0/a;->g:Lt0/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lt0/a;

    invoke-direct {v1}, Lt0/a;-><init>()V

    sput-object v1, Lt0/a;->g:Lt0/a;

    .line 3
    :cond_0
    sget-object v1, Lt0/a;->g:Lt0/a;
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

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method
