.class Lcom/syu/bt/ctrl/JSwitchButon2$2;
.super Ljava/lang/Object;
.source "JSwitchButon2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/ctrl/JSwitchButon2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/ctrl/JSwitchButon2;


# direct methods
.method constructor <init>(Lcom/syu/bt/ctrl/JSwitchButon2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget-object v1, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget v1, v1, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx_p:F

    iget-object v2, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget v2, v2, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx:F

    .line 146
    const-string v0, "gan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 11 JSwitchButon2 setSwitch  mDisx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget v2, v2, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i_step = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget v2, v2, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    invoke-virtual {v0}, Lcom/syu/bt/ctrl/JSwitchButon2;->invalidate()V

    .line 148
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget v1, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    .line 150
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/ctrl/JSwitchButon2$2;->this$0:Lcom/syu/bt/ctrl/JSwitchButon2;

    iget-object v1, v1, Lcom/syu/bt/ctrl/JSwitchButon2;->mRunnableInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 152
    :cond_0
    return-void
.end method
