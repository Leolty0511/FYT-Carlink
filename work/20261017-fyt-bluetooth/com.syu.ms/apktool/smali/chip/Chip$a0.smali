.class public Lchip/Chip$a0;
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
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$a0;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, La/b;->e0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->n4:I

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->g:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lchip/Chip$a0;->a:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->K:Landroid/os/Handler;

    new-instance v1, Lchip/Chip$a0$a;

    invoke-direct {v1, p0}, Lchip/Chip$a0$a;-><init>(Lchip/Chip$a0;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v1}, Ly0/h;->Y(IZ)V

    :goto_0
    return-void
.end method
