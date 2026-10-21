.class public Ln0/c4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$a;->b:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln0/c4$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->n4:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===========>>>  DataMain.sMcuOn : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " DataMain.sSleepWakeup : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->n4:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AA"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Ln0/c4$a;->a:Z

    if-eq v0, v2, :cond_2

    .line 4
    iput-boolean v2, p0, Ln0/c4$a;->a:Z

    .line 5
    new-instance v0, Ln0/c4$a$a;

    invoke-direct {v0, p0}, Ln0/c4$a$a;-><init>(Ln0/c4$a;)V

    .line 6
    iget-boolean v2, p0, Ln0/c4$a;->a:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 7
    :goto_1
    invoke-static {v0, v2, v3}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    .line 8
    iget-boolean v0, p0, Ln0/c4$a;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ln0/c4$a;->b:Ln0/c4;

    iget-boolean v2, v0, Ln0/c4;->l:Z

    if-eqz v2, :cond_2

    .line 9
    iput-boolean v1, v0, Ln0/c4;->l:Z

    :cond_2
    return-void
.end method
