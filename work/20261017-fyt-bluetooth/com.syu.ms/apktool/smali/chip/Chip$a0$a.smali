.class public Lchip/Chip$a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchip/Chip$a0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip$a0;


# direct methods
.method public constructor <init>(Lchip/Chip$a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$a0$a;->a:Lchip/Chip$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lchip/Chip$a0$a;->a:Lchip/Chip$a0;

    iget-object v0, v0, Lchip/Chip$a0;->a:Lchip/Chip;

    iget-boolean v1, v0, Lchip/Chip;->m:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lchip/Chip;->L()V

    .line 3
    :cond_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lchip/Chip$a0$a$a;

    invoke-direct {v1, p0}, Lchip/Chip$a0$a$a;-><init>(Lchip/Chip$a0$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
