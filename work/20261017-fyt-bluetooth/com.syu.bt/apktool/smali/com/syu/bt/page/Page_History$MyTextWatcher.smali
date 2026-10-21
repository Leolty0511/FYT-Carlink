.class public Lcom/syu/bt/page/Page_History$MyTextWatcher;
.super Ljava/lang/Object;
.source "Page_History.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private jTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

.field final synthetic this$0:Lcom/syu/bt/page/Page_History;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_History;Lcom/lsec/core/frame/ctrl/JText;)V
    .locals 0
    .param p2, "jTxtNumber"    # Lcom/lsec/core/frame/ctrl/JText;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/syu/bt/page/Page_History$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_History;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/syu/bt/page/Page_History$MyTextWatcher;->jTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    .line 237
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 255
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/syu/bt/page/Page_History$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_History;

    iget-object v1, p0, Lcom/syu/bt/page/Page_History$MyTextWatcher;->jTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_History;->queryContacts(Ljava/lang/String;)V

    .line 250
    return-void
.end method
