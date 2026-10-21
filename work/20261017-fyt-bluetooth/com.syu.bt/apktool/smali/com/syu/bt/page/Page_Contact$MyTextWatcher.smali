.class public Lcom/syu/bt/page/Page_Contact$MyTextWatcher;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private editSearch:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Contact;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "editSearch"    # Landroid/widget/EditText;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;->editSearch:Landroid/widget/EditText;

    .line 369
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 388
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 375
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;->editSearch:Landroid/widget/EditText;

    sget-object v1, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 381
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mRunQueryContacts:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 383
    return-void
.end method
