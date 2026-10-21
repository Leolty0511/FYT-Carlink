.class public Lc1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/n;


# direct methods
.method public constructor <init>(Lc1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/n$a;->a:Lc1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lc1/n;->Q2()I

    .line 2
    invoke-static {}, Lc1/n;->O2()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lc1/n$a;->a:Lc1/n;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x71

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lc1/n;->O2()I

    move-result v3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lc1/n;->R2(Lc1/n;[I)V

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ** sendCmd(0x71,mDelay) TICK  mDelay= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc1/n;->O2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lc1/n;->O2()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 6
    invoke-static {v0}, Lc1/n;->P2(I)I

    :cond_0
    return-void
.end method
