.class public Lchip/Chip$e0;
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
    name = "e0"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$e0;->b:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lchip/Chip$e0;->a:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lchip/Chip$e0;->a:I

    iget-object v1, p0, Lchip/Chip$e0;->b:Lchip/Chip;

    iget v2, v1, Lchip/Chip;->u:I

    if-eq v0, v2, :cond_0

    .line 2
    iput v0, v1, Lchip/Chip;->u:I

    const-string v0, "chip"

    const-string v1, "========== ReversingFlagSync run: "

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lchip/Chip$e0;->b:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->v:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method
