.class public Le1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/d;


# direct methods
.method public constructor <init>(Le1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/d$a;->a:Le1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le1/d$a;->a:Le1/d;

    iget-object v0, v0, Le1/d;->a0:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Le1/d$a;->a:Le1/d;

    iget-object v0, v0, Le1/d;->a0:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "img.read"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "false"

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le1/d$a;->a:Le1/d;

    iget-object v0, v0, Le1/d;->c0:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 6
    iget-object v2, p0, Le1/d$a;->a:Le1/d;

    iget-object v3, v2, Le1/d;->c0:[I

    mul-int/lit8 v4, v1, 0x2

    aget v5, v3, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    .line 7
    aget v3, v3, v4

    const/16 v4, 0x40

    if-ne v5, v4, :cond_1

    .line 8
    invoke-virtual {v2, v5, v3}, Le1/c;->D(II)I

    goto :goto_1

    :cond_1
    if-eq v5, v6, :cond_2

    .line 9
    invoke-virtual {v2, v5}, Le1/d;->s(I)I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
