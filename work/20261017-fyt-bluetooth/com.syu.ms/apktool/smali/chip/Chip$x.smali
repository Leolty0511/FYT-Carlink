.class public Lchip/Chip$x;
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

.field public final synthetic b:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$x;->b:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lchip/Chip$x;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lchip/Chip$x;->b:Lchip/Chip;

    iget v1, v0, Lchip/Chip;->A:I

    if-lez v1, :cond_0

    iget v1, p0, Lchip/Chip$x;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lchip/Chip;->B:Z

    .line 3
    iput v1, v0, Lchip/Chip;->A:I

    const-string/jumbo v0, "sys.syu.radio.ta"

    const-string v1, "false"

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget v0, Lu0/b;->D:I

    iput v0, p0, Lchip/Chip$x;->a:I

    return-void
.end method
