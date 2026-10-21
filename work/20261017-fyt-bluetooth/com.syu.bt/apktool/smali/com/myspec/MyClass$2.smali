.class Lcom/myspec/MyClass$2;
.super Ljava/lang/Object;
.source "MyClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myspec/MyClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myspec/MyClass;


# direct methods
.method constructor <init>(Lcom/myspec/MyClass;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/myspec/MyClass$2;->this$0:Lcom/myspec/MyClass;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/myspec/MyClass$2;->this$0:Lcom/myspec/MyClass;

    iget-boolean v1, v1, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 111
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/myspec/MyClass$2;->this$0:Lcom/myspec/MyClass;

    iget-object v1, v1, Lcom/myspec/MyClass;->v:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/myspec/MyClass$2;->this$0:Lcom/myspec/MyClass;

    iget-object v1, v1, Lcom/myspec/MyClass;->v:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/myspec/MyClass$2;->this$0:Lcom/myspec/MyClass;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    .line 117
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method
