.class public Lk0/et$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/et;


# direct methods
.method public constructor <init>(Lk0/et;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/et$d;->a:Lk0/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/et$d;->a:Lk0/et;

    iget-boolean v1, v0, Lk0/et;->z:Z

    const-wide/32 v2, 0x927c0

    const-string v4, "\u5341\u5206\u949f\u8ba1\u65f6---"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v5, v0, Lk0/et;->z:Z

    .line 3
    invoke-static {v0}, Lk0/et;->a3(Lk0/et;)V

    .line 4
    invoke-static {v4}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v0, v5

    .line 8
    :goto_0
    iget-object v1, p0, Lk0/et$d;->a:Lk0/et;

    iget-object v6, v1, Lk0/et;->A:[[B

    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 9
    aget-object v7, v6, v0

    aget-byte v7, v7, v5

    aget-object v6, v6, v0

    const/4 v8, 0x1

    aget-byte v6, v6, v8

    invoke-static {v1, v7, v6}, Lk0/et;->b3(Lk0/et;BB)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lk0/et$d;->a:Lk0/et;

    invoke-static {v1}, Lk0/et;->a3(Lk0/et;)V

    .line 11
    invoke-static {v4}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
