.class Lcom/syu/bt/util/MyCircleDialog$1;
.super Ljava/lang/Object;
.source "MyCircleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/util/MyCircleDialog;


# direct methods
.method constructor <init>(Lcom/syu/bt/util/MyCircleDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    iget-object v0, v0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    iget-object v0, v0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 258
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    iput-object v1, v0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    iget-object v0, v0, Lcom/syu/bt/util/MyCircleDialog;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    iget-object v0, v0, Lcom/syu/bt/util/MyCircleDialog;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 263
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog$1;->this$0:Lcom/syu/bt/util/MyCircleDialog;

    iput-object v1, v0, Lcom/syu/bt/util/MyCircleDialog;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 265
    :cond_1
    return-void
.end method
