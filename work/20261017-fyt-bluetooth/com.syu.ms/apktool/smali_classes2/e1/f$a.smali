.class public Le1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/f;


# direct methods
.method public constructor <init>(Le1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/f$a;->a:Le1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le1/f$a;->a:Le1/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le1/c;->r:Z

    const/4 v2, 0x2

    .line 2
    iput v2, v0, Le1/c;->f:I

    .line 3
    iget-object v2, v0, Le1/f;->C:[I

    invoke-virtual {v0, v2}, Le1/f;->F([I)Z

    move-result v2

    invoke-virtual {v0, v2}, Le1/f;->w(Z)V

    .line 4
    iget-object v0, p0, Le1/f$a;->a:Le1/f;

    iget-object v2, v0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, v0, Le1/f;->D:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le1/f$a;->a:Le1/f;

    iget-boolean v2, v0, Le1/c;->i:Z

    if-nez v2, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ========>>  flushParams  error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/f$a;->a:Le1/f;

    iget v1, v1, Le1/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/f$a;->a:Le1/f;

    iget-boolean v1, v1, Le1/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2854"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Le1/f$a;->a:Le1/f;

    const/4 v1, -0x1

    iput v1, v0, Le1/c;->f:I

    .line 9
    iget-object v1, v0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 10
    iget-object v0, v0, Le1/f;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    .line 11
    :cond_2
    iget v2, v0, Le1/c;->e:I

    if-eq v2, v1, :cond_3

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0}, Le1/c;->a()V

    .line 13
    iget-object v0, p0, Le1/f$a;->a:Le1/f;

    invoke-virtual {v0, v2}, Le1/c;->c(I)V

    .line 14
    :cond_3
    iget-object v0, p0, Le1/f$a;->a:Le1/f;

    invoke-virtual {v0}, Le1/c;->C()V

    return-void
.end method
