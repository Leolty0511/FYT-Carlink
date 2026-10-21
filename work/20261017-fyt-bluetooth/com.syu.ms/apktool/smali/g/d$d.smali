.class public Lg/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/d$d;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/d$d;->a:Lg/d;

    invoke-static {v0}, Lg/d;->c(Lg/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u68c0\u6d4b\u5f00\u5173 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->b1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget v0, Lu0/b;->b1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4
    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_3

    sget v0, Lu0/b;->f:I

    if-ne v0, v1, :cond_3

    .line 5
    iget-object v0, p0, Lg/d$d;->a:Lg/d;

    invoke-static {v0}, Lg/d;->c(Lg/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usb \u6a21\u5f0f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/d$d;->a:Lg/d;

    invoke-static {v2}, Lg/d;->d(Lg/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/bus/usb/devices/1-1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_3

    const/16 v0, 0x8

    .line 10
    invoke-static {v0}, Lu0/d;->C3(I)V

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "/sys/bus/usb/devices/1-1 \u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "/sys/bus/usb/devices/1-1 ------- \u5b58\u5728"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
