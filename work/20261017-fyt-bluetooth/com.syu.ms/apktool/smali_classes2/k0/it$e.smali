.class public Lk0/it$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/it;


# direct methods
.method public constructor <init>(Lk0/it;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/it$e;->a:Lk0/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/it$e;->a:Lk0/it;

    iget v1, v0, Lk0/it;->F:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/it;->F:I

    goto :goto_0

    .line 3
    :cond_0
    iput v2, v0, Lk0/it;->F:I

    .line 4
    :goto_0
    iget v0, v0, Lk0/it;->F:I

    invoke-static {v0}, Lu0/d;->x0(I)V

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " F005 runTest  handbrake n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk0/it$e;->a:Lk0/it;

    iget v2, v2, Lk0/it;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->w(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lk0/it$e;->a:Lk0/it;

    iget-object v1, v1, Lk0/it;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
