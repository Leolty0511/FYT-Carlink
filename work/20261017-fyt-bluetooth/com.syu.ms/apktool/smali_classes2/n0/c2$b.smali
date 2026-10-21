.class public Ln0/c2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c2;->W3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Ln0/c2;


# direct methods
.method public constructor <init>(Ln0/c2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln0/c2$b;->c:Ln0/c2;

    iput p2, p0, Ln0/c2$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/c2$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    iget v1, p0, Ln0/c2$b;->b:I

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ln0/k4;->i(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Ln0/c2$b;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln0/c2$b;->a:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln0/c2$b;->a:I

    .line 5
    invoke-static {}, Lo1/q0;->p()F

    move-result v2

    float-to-int v3, v2

    const/16 v4, 0xff

    .line 6
    invoke-static {v3, v0, v4}, Lo1/o0;->a(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->c0(I)V

    .line 7
    iget-object v4, p0, Ln0/c2$b;->c:Ln0/c2;

    invoke-static {v4}, Ln0/c2;->U3(Ln0/c2;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Ln0/c2$b;->c:Ln0/c2;

    invoke-static {v2, v3}, Ln0/c2;->V3(Ln0/c2;I)I

    .line 9
    iget-object v2, p0, Ln0/c2$b;->c:Ln0/c2;

    invoke-static {v2}, Ln0/c2;->U3(Ln0/c2;)I

    move-result v2

    const/16 v3, 0x55

    if-lt v2, v3, :cond_1

    .line 10
    invoke-static {v1}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Ln0/c2$b;->c:Ln0/c2;

    invoke-static {v1}, Ln0/c2;->U3(Ln0/c2;)I

    move-result v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_2

    .line 12
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    :cond_2
    :goto_0
    return-void
.end method
