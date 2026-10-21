.class final Lcom/syu/carlink/ui/TimerWindow$heightPx$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/a;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/syu/carlink/ui/a;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/ui/TimerWindow$heightPx$2;->b:Lcom/syu/carlink/ui/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/ui/TimerWindow$heightPx$2;->b:Lcom/syu/carlink/ui/a;

    iget-object v0, v0, Lcom/syu/carlink/ui/a;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit16 v0, v0, 0xc8

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/syu/carlink/ui/TimerWindow$heightPx$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
