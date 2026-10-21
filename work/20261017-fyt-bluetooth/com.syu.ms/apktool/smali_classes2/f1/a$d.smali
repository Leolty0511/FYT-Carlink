.class public Lf1/a$d;
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
.field public a:I

.field public final synthetic b:Lf1/a;


# direct methods
.method public constructor <init>(Lf1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/a$d;->b:Lf1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lf1/a$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lf1/a$d;->a:I

    sget v1, Lu0/b;->g:I

    if-eq v0, v1, :cond_2

    .line 2
    iput v1, p0, Lf1/a$d;->a:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3
    :goto_0
    iget-object v1, p0, Lf1/a$d;->b:Lf1/a;

    iget-boolean v3, v1, Lf1/a;->z0:Z

    if-eq v3, v2, :cond_2

    .line 4
    iput-boolean v2, v1, Lf1/a;->z0:Z

    .line 5
    iget-object v2, v1, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, v1, Lf1/a;->x0:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lf1/a$d;->b:Lf1/a;

    iget-boolean v2, v1, Lf1/a;->z0:Z

    if-eqz v2, :cond_1

    .line 7
    iget-object v0, v1, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v1, Lf1/a;->x0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v0}, Lf1/a;->H(Z)V

    :cond_2
    :goto_1
    return-void
.end method
