.class public Li1/u$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Li1/u;


# direct methods
.method public constructor <init>(Li1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/u$e;->b:Li1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Li1/u$e;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Li1/u$e;->a:I

    if-eq v2, v0, :cond_0

    .line 2
    iget-object v0, p0, Li1/u$e;->b:Li1/u;

    iput-boolean v1, v0, Li1/u;->u:Z

    .line 3
    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Li1/u$e$a;

    invoke-direct {v1, p0}, Li1/u$e$a;-><init>(Li1/u$e;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_0
    sget v0, Lu0/b;->a0:I

    iput v0, p0, Li1/u$e;->a:I

    return-void
.end method
