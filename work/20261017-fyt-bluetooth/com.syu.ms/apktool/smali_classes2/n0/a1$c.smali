.class public Ln0/a1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$c;->a:Ln0/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Ln0/a1$c;->a:Ln0/a1;

    const-string v1, "Speed up to 120KM/H . Please slow down !"

    invoke-static {v0, v1}, Ln0/a1;->S3(Ln0/a1;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ln0/a1$c;->a:Ln0/a1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attention: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->g1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "KM/H !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln0/a1;->S3(Ln0/a1;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ln0/a1$c;->a:Ln0/a1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ln0/a1;->G:Z

    .line 5
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
