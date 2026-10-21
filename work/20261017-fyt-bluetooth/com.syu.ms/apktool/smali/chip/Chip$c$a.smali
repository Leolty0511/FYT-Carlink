.class public Lchip/Chip$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchip/Chip$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip$c;


# direct methods
.method public constructor <init>(Lchip/Chip$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$c$a;->a:Lchip/Chip$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "wake"

    const-string v1, "==============================>>>>   1111111"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lchip/Chip$c$a;->a:Lchip/Chip$c;

    iget-object v0, v0, Lchip/Chip$c;->a:Lchip/Chip;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lchip/Chip;->g(I)V

    .line 4
    iget-object v0, p0, Lchip/Chip$c$a;->a:Lchip/Chip$c;

    iget-object v0, v0, Lchip/Chip$c;->a:Lchip/Chip;

    invoke-virtual {v0, v1}, Lchip/Chip;->H(Z)V

    :cond_0
    return-void
.end method
