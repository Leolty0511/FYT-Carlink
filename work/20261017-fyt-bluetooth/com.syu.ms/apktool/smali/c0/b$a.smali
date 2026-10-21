.class public Lc0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc0/b$a;->a:I

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget p1, p0, Lc0/b$a;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lc0/b$a;->a:I

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=======================>>>>>   mAppId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc0/b$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  DataMisc.sEasyconnA2dpRequire: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lc0/a;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "C7729"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-boolean p1, Lc0/a;->a:Z

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lu0/b;->c:Lu0/h;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance v0, Lc0/b$a$a;

    invoke-direct {v0, p0}, Lc0/b$a$a;-><init>(Lc0/b$a;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
