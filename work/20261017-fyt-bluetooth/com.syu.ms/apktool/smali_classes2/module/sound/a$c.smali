.class public Lmodule/sound/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/a;


# direct methods
.method public constructor <init>(Lmodule/sound/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/a$c;->a:Lmodule/sound/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/a$c;->a:Lmodule/sound/a;

    invoke-virtual {v0}, Lmodule/sound/a;->l2()V

    .line 2
    iget-object v0, p0, Lmodule/sound/a$c;->a:Lmodule/sound/a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmodule/sound/a;->c2(I)V

    .line 3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/a$c;->a:Lmodule/sound/a;

    invoke-static {v1}, Lmodule/sound/a;->G1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/a$c;->a:Lmodule/sound/a;

    invoke-static {v1}, Lmodule/sound/a;->G1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
