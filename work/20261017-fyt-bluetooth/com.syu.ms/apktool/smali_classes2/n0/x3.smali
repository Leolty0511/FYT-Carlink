.class public Ln0/x3;
.super Ln0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/a;->L3()V

    const-string v0, "MTA"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x139

    .line 3
    sput v0, Lm1/a;->d:I

    .line 4
    invoke-static {}, Lplugins/EasyConn;->Z()Lplugins/EasyConn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lplugins/EasyConn;->d0(Z)V

    return-void
.end method

.method public f3(Z)V
    .locals 4

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_3

    .line 2
    check-cast v0, Lchip/Chip;

    .line 3
    iget-boolean v1, p0, Ln0/c4;->l:Z

    if-eq v1, p1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===========>>>  isAutoFanCtrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ln0/c4;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " last isFanEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ln0/c4;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AA"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-boolean p1, p0, Ln0/c4;->l:Z

    .line 6
    invoke-static {p1}, Lu0/d;->p0(I)V

    .line 7
    iget-object v1, p0, Ln0/c4;->e:Lo1/h0;

    iget-boolean v2, p0, Ln0/c4;->l:Z

    const/16 v3, 0x3f8

    invoke-virtual {v1, v3, v2}, Lo1/h0;->q(II)V

    .line 8
    iget-object v1, p0, Ln0/c4;->e:Lo1/h0;

    invoke-virtual {v1, v3}, Lo1/h0;->e(I)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lchip/Chip;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x57

    goto :goto_0

    :cond_1
    const/16 p1, 0x56

    :goto_0
    aput p1, v0, v1

    .line 10
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    :cond_3
    :goto_1
    return-void
.end method
