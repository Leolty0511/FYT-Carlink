.class public Lk0/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b$h;->a:Lk0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/b$h;->a:Lk0/b;

    iget v1, v0, Lk0/b;->Q:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/b;->Q:I

    if-lez v1, :cond_0

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/b;->k3(Lk0/b;)Lo1/g0;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v2, p0, Lk0/b$h;->a:Lk0/b;

    .line 4
    invoke-static {v2}, Lk0/b;->k3(Lk0/b;)Lo1/g0;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v4, p0, Lk0/b$h;->a:Lk0/b;

    .line 5
    invoke-static {v4}, Lk0/b;->k3(Lk0/b;)Lo1/g0;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Lo1/g0;->b(II)I

    move-result v3

    .line 6
    invoke-static {v0, v1, v2, v3}, Lk0/b;->l3(Lk0/b;III)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lk0/b;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/b$h;->a:Lk0/b;

    const/4 v1, 0x5

    iput v1, v0, Lk0/b;->Q:I

    :cond_1
    :goto_0
    return-void
.end method
