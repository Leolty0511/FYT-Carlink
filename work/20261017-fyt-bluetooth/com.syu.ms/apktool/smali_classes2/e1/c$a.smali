.class public Le1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/c;


# direct methods
.method public constructor <init>(Le1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/c$a;->a:Le1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "chip"

    const-string v1, "========================>>  ImageDevice init setup "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Le1/c$a;->a:Le1/c;

    invoke-virtual {v0}, Le1/c;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Le1/c;->w(Z)V

    .line 3
    iget-object v0, p0, Le1/c$a;->a:Le1/c;

    iget-object v0, v0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Le1/c$a;->a:Le1/c;

    iget-boolean v1, v0, Le1/c;->i:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v0, v0, Le1/c;->j:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
