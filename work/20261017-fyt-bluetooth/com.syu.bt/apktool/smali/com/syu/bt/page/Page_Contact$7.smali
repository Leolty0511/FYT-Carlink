.class Lcom/syu/bt/page/Page_Contact$7;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Contact;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Contact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$7;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 453
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$7;->this$0:Lcom/syu/bt/page/Page_Contact;

    iput-boolean p2, v0, Lcom/syu/bt/page/Page_Contact;->editFocus:Z

    .line 454
    return-void
.end method
