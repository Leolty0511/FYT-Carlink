.class public Ln0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a;->S3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Ln0/a;


# direct methods
.method public constructor <init>(Ln0/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln0/a$a;->c:Ln0/a;

    iput p2, p0, Ln0/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/a$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    iget v1, p0, Ln0/a$a;->b:I

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ln0/k4;->i(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Ln0/a$a;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln0/a$a;->a:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln0/a$a;->a:I

    .line 5
    invoke-static {}, Lo1/q0;->p()F

    move-result v2

    float-to-int v3, v2

    const/16 v4, 0xff

    .line 6
    invoke-static {v3, v0, v4}, Lo1/o0;->a(III)I

    move-result v3

    invoke-static {v3}, Lu0/d;->c0(I)V

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    .line 7
    invoke-static {v1}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42aa0000    # 85.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    :cond_2
    :goto_0
    return-void
.end method
