.class public Lcom/syu/bt/page/Page_Dial$MyTextWatcher;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private jTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Dial;Lcom/lsec/core/frame/ctrl/JText;)V
    .locals 0
    .param p2, "jTxtNumber"    # Lcom/lsec/core/frame/ctrl/JText;

    .prologue
    .line 2432
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2433
    iput-object p2, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->jTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    .line 2434
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2457
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2440
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->jTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/bt/page/Page_Dial;->strNumber:Ljava/lang/String;

    .line 2447
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->strNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Dial;->queryContacts(Ljava/lang/String;)V

    .line 2450
    :cond_0
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_1

    .line 2451
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {p1, v0}, Lcom/syu/bt/util/CustomerUtil;->otoSkipCarSetting(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    .line 2452
    :cond_1
    return-void
.end method
