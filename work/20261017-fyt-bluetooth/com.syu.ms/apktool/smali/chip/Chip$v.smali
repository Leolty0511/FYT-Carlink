.class public Lchip/Chip$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$v;->c:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lchip/Chip$v;->a:I

    .line 3
    iput p1, p0, Lchip/Chip$v;->b:I

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

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget v3, p0, Lchip/Chip$v;->b:I

    if-eq v3, v0, :cond_2

    .line 3
    iput v0, p0, Lchip/Chip$v;->b:I

    const/16 v3, 0x9

    if-ne v0, v2, :cond_1

    .line 4
    iget v0, p0, Lchip/Chip$v;->a:I

    if-lez v0, :cond_2

    .line 5
    invoke-static {v3, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lchip/Chip$v;->a:I

    goto :goto_1

    .line 7
    :cond_1
    sget v0, Ly0/f;->H:I

    if-ne v0, v2, :cond_2

    .line 8
    iput v0, p0, Lchip/Chip$v;->a:I

    .line 9
    invoke-static {v3, v1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :cond_2
    :goto_1
    return-void
.end method
