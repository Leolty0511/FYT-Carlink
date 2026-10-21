.class Lcom/syu/bt/util/ToastUtil$2;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/util/ToastUtil;


# direct methods
.method constructor <init>(Lcom/syu/bt/util/ToastUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/ToastUtil$2;->this$0:Lcom/syu/bt/util/ToastUtil;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$2;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/syu/bt/util/ToastUtil$2;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v1, v1, Lcom/syu/bt/util/ToastUtil;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$2;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method
