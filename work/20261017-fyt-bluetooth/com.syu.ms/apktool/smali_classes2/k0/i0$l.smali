.class public Lk0/i0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i0;


# direct methods
.method public constructor <init>(Lk0/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i0$l;->a:Lk0/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lk0/nt;->g:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    .line 2
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object v0, p0, Lk0/i0$l;->a:Lk0/i0;

    const/16 v1, 0xa

    iput v1, v0, Lk0/i0;->j:I

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/i0$l;->a:Lk0/i0;

    iget-object v1, v1, Lk0/i0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/i0$l;->a:Lk0/i0;

    iget-object v1, v1, Lk0/i0;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
