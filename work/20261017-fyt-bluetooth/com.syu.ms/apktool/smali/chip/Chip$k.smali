.class public Lchip/Chip$k;
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
.field public a:Z

.field public final synthetic b:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$k;->b:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lchip/Chip$k;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchip/Chip$k;->b:Lchip/Chip;

    iget v0, v0, Lchip/Chip;->u:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lchip/Chip$k;->a:Z

    if-eq v1, v0, :cond_1

    .line 3
    iput-boolean v0, p0, Lchip/Chip$k;->a:Z

    const-string v0, "chip"

    const-string v1, "========== postReversing: "

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lchip/Chip$k;->b:Lchip/Chip;

    iget-boolean v1, p0, Lchip/Chip$k;->a:Z

    invoke-virtual {v0, v1}, Lchip/Chip;->P(Z)V

    :cond_1
    return-void
.end method
