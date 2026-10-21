.class public Li1/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Li1/z;


# direct methods
.method public constructor <init>(Li1/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/z$b;->b:Li1/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Li1/z$b;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->f:I

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-boolean v3, p0, Li1/z$b;->a:Z

    if-eq v0, v3, :cond_2

    .line 3
    iput-boolean v0, p0, Li1/z$b;->a:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Li1/z$b;->b:Li1/z;

    invoke-static {v0}, Li1/z;->w(Li1/z;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Li1/z$b;->b:Li1/z;

    invoke-static {v0}, Li1/z;->w(Li1/z;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Li1/z$b;->b:Li1/z;

    iget v0, v0, Li1/z;->v:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataMain.sHostBackcar: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->o:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " DataMain.sHandbrake : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->k:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Device"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget v0, Lu0/b;->o:I

    if-ne v0, v2, :cond_3

    const/16 v0, 0x20

    goto :goto_2

    .line 9
    :cond_3
    sget v0, Lu0/b;->k:I

    if-ne v0, v2, :cond_4

    const/16 v0, 0x10

    goto :goto_2

    :cond_4
    const/16 v0, 0x40

    .line 10
    :goto_2
    iget-object v3, p0, Li1/z$b;->b:Li1/z;

    iget v4, v3, Li1/z;->v:I

    if-eq v4, v0, :cond_5

    .line 11
    iput v0, v3, Li1/z;->v:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v0, v4, v1

    .line 12
    iget v0, v3, Li1/z;->w:I

    aput v0, v4, v2

    const/4 v0, 0x2

    iget v1, v3, Li1/z;->x:I

    aput v1, v4, v0

    invoke-virtual {v3, v4}, Li1/z;->z([I)V

    :cond_5
    return-void
.end method
