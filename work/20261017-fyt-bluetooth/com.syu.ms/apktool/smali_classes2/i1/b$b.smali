.class public Li1/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/b;


# direct methods
.method public constructor <init>(Li1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/b$b;->a:Li1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Li1/b$b;->a:Li1/b;

    iget v1, v0, Li1/b;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/2addr v1, v2

    .line 2
    iput v1, v0, Li1/b;->m:I

    .line 3
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Li1/b$b;->a:Li1/b;

    iget-object v1, v1, Li1/b;->n:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_0
    iget-object v0, p0, Li1/b$b;->a:Li1/b;

    iget v1, v0, Li1/b;->m:I

    const/16 v3, 0xa

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Li1/b;->m:I

    const/4 v3, 0x6

    new-array v4, v2, [I

    aput v2, v4, v1

    .line 6
    invoke-virtual {v0, v3, v4}, Li1/s;->r(I[I)V

    :cond_1
    return-void
.end method
