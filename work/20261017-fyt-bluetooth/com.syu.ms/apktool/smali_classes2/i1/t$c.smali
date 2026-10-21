.class public Li1/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/t;


# direct methods
.method public constructor <init>(Li1/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/t$c;->a:Li1/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/t$c;->a:Li1/t;

    iget-object v1, v0, Li1/t;->p:Li1/b0;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Li1/t;->y([I)V

    .line 3
    iget-object v0, p0, Li1/t$c;->a:Li1/t;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Li1/t;->y([I)V

    .line 4
    :cond_0
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method
