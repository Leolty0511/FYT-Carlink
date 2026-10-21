.class public Lf1/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lf1/a;


# direct methods
.method public constructor <init>(Lf1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/a$e;->b:Lf1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf1/a$e;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> 2815 DataMain.sAccOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->a0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/a$e;->b:Lf1/a;

    iget v2, v2, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->f:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 3
    :goto_0
    iget-boolean v0, p0, Lf1/a$e;->a:Z

    if-eq v0, v2, :cond_2

    .line 4
    iput-boolean v2, p0, Lf1/a$e;->a:Z

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Lf1/a$e;->b:Lf1/a;

    iget-object v1, v0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, v0, Lf1/a;->x0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lf1/a$e;->b:Lf1/a;

    invoke-virtual {v0, v1}, Lf1/a;->H(Z)V

    :cond_2
    :goto_1
    return-void
.end method
