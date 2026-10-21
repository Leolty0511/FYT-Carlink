.class Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctorsRunnable"
.end annotation


# instance fields
.field public attachInfo:Landroid/view/View$AttachInfo;

.field public final synthetic this$0:Landroid/view/HardwareRenderer$GlRenderer;


# direct methods
.method public constructor <init>(Landroid/view/HardwareRenderer$GlRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v1, v0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-static {v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$100(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/HardwareCanvas;->invokeFunctors(Landroid/graphics/Rect;)I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    invoke-static {v1, v2, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$200(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V

    :cond_1
    :goto_0
    return-void
.end method
