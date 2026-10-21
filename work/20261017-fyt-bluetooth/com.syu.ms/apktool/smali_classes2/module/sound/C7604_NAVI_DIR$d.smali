.class public Lmodule/sound/C7604_NAVI_DIR$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604_NAVI_DIR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lmodule/sound/C7604_NAVI_DIR$h;

.field public final synthetic b:Lmodule/sound/C7604_NAVI_DIR;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604_NAVI_DIR;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$d;->b:Lmodule/sound/C7604_NAVI_DIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-direct {v0, p1}, Lmodule/sound/C7604_NAVI_DIR$h;-><init>(Lmodule/sound/C7604_NAVI_DIR;)V

    iput-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$d;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lk0/nt;->W:I

    const-wide v1, -0x3f9de00000000000L    # -145.0

    const-wide/16 v3, 0x0

    const/16 v5, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$d;->b:Lmodule/sound/C7604_NAVI_DIR;

    const/16 v8, 0xf

    new-array v9, v7, [I

    iget-object v10, p0, Lmodule/sound/C7604_NAVI_DIR$d;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-virtual {v10, v1, v2, v6}, Lmodule/sound/C7604_NAVI_DIR$h;->a(DI)I

    move-result v1

    aput v1, v9, v6

    invoke-virtual {v0, v7, v5, v8, v9}, Lmodule/sound/C7604_NAVI_DIR;->h2(III[I)I

    .line 4
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$d;->b:Lmodule/sound/C7604_NAVI_DIR;

    const/16 v1, 0x10

    new-array v2, v7, [I

    iget-object v8, p0, Lmodule/sound/C7604_NAVI_DIR$d;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-virtual {v8, v3, v4, v6}, Lmodule/sound/C7604_NAVI_DIR$h;->a(DI)I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0, v7, v5, v1, v2}, Lmodule/sound/C7604_NAVI_DIR;->h2(III[I)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$d;->b:Lmodule/sound/C7604_NAVI_DIR;

    const/16 v8, 0xd

    new-array v9, v7, [I

    iget-object v10, p0, Lmodule/sound/C7604_NAVI_DIR$d;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-virtual {v10, v3, v4, v6}, Lmodule/sound/C7604_NAVI_DIR$h;->a(DI)I

    move-result v3

    aput v3, v9, v6

    invoke-virtual {v0, v7, v5, v8, v9}, Lmodule/sound/C7604_NAVI_DIR;->h2(III[I)I

    .line 6
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$d;->b:Lmodule/sound/C7604_NAVI_DIR;

    const/16 v3, 0xe

    new-array v4, v7, [I

    iget-object v8, p0, Lmodule/sound/C7604_NAVI_DIR$d;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-virtual {v8, v1, v2, v6}, Lmodule/sound/C7604_NAVI_DIR$h;->a(DI)I

    move-result v1

    aput v1, v4, v6

    invoke-virtual {v0, v7, v5, v3, v4}, Lmodule/sound/C7604_NAVI_DIR;->h2(III[I)I

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "alex"

    const-string v1, "postProcessMixClose ok ------------"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
