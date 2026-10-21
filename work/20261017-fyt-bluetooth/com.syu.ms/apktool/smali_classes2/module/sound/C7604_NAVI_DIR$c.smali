.class public Lmodule/sound/C7604_NAVI_DIR$c;
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
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$c;->b:Lmodule/sound/C7604_NAVI_DIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-direct {v0, p1}, Lmodule/sound/C7604_NAVI_DIR$h;-><init>(Lmodule/sound/C7604_NAVI_DIR;)V

    iput-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$c;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Lk0/nt;->W:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$c;->b:Lmodule/sound/C7604_NAVI_DIR;

    const/16 v4, 0x1b1

    new-array v5, v3, [I

    iget-object v6, p0, Lmodule/sound/C7604_NAVI_DIR$c;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-static {v0}, Lmodule/sound/C7604_NAVI_DIR;->j2(Lmodule/sound/C7604_NAVI_DIR;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v2}, Lmodule/sound/C7604_NAVI_DIR$h;->a(DI)I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v0, v3, v1, v4, v5}, Lmodule/sound/C7604_NAVI_DIR;->h2(III[I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmodule/sound/C7604_NAVI_DIR$c;->b:Lmodule/sound/C7604_NAVI_DIR;

    const/16 v4, 0x1ba

    new-array v5, v3, [I

    iget-object v6, p0, Lmodule/sound/C7604_NAVI_DIR$c;->a:Lmodule/sound/C7604_NAVI_DIR$h;

    invoke-static {v0}, Lmodule/sound/C7604_NAVI_DIR;->j2(Lmodule/sound/C7604_NAVI_DIR;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v2}, Lmodule/sound/C7604_NAVI_DIR$h;->a(DI)I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v0, v3, v1, v4, v5}, Lmodule/sound/C7604_NAVI_DIR;->h2(III[I)I

    :goto_0
    const-string v0, "alex"

    const-string v1, "postProcessMixOpen ok ------------"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
