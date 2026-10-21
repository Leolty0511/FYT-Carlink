.class public Lk0/aa$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$c;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/aa$c;->a:Lk0/aa;

    const/16 v1, 0xa

    iput v1, v0, Lk0/aa;->f:I

    .line 3
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/aa$c;->a:Lk0/aa;

    iget-object v1, v1, Lk0/aa;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/aa$c;->a:Lk0/aa;

    iget-object v1, v1, Lk0/aa;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
