.class public Ln0/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/b0;->U3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Ln0/b0;


# direct methods
.method public constructor <init>(Ln0/b0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln0/b0$c;->c:Ln0/b0;

    iput p2, p0, Ln0/b0$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/b0$c;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    iget v1, p0, Ln0/b0$c;->b:I

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ln0/k4;->i(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Ln0/b0$c;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln0/b0$c;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    .line 4
    iput v3, p0, Ln0/b0$c;->a:I

    .line 5
    invoke-static {}, Lo1/q0;->p()F

    move-result v0

    float-to-int v2, v0

    const/16 v4, 0xff

    .line 6
    invoke-static {v2, v3, v4}, Lo1/o0;->a(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->c0(I)V

    .line 7
    iget-object v4, p0, Ln0/b0$c;->c:Ln0/b0;

    invoke-static {v4}, Ln0/b0;->S3(Ln0/b0;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Ln0/b0$c;->c:Ln0/b0;

    invoke-static {v0, v2}, Ln0/b0;->T3(Ln0/b0;I)I

    .line 9
    iget-object v0, p0, Ln0/b0$c;->c:Ln0/b0;

    invoke-static {v0}, Ln0/b0;->S3(Ln0/b0;)I

    move-result v0

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_1

    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_1

    .line 10
    invoke-static {v1}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Ln0/b0$c;->c:Ln0/b0;

    invoke-static {v0}, Ln0/b0;->S3(Ln0/b0;)I

    move-result v0

    const/16 v1, 0x55

    if-ge v0, v1, :cond_2

    .line 12
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    .line 13
    :cond_2
    :goto_0
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_3

    .line 14
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    :cond_3
    return-void
.end method
