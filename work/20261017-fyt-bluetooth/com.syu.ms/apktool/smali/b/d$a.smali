.class public Lb/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d;


# direct methods
.method public constructor <init>(Lb/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d$a;->a:Lb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lb/d$a;->a:Lb/d;

    iget-boolean v1, v0, Lb/d;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lb/d;->d:Z

    if-nez v1, :cond_1

    .line 3
    sget v1, Lu0/b;->a0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lb/d;->a(Lb/d;)V

    .line 4
    :cond_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
