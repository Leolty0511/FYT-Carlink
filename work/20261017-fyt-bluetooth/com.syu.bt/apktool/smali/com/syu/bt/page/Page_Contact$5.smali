.class Lcom/syu/bt/page/Page_Contact$5;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Contact;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$5;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$5;->this$0:Lcom/syu/bt/page/Page_Contact;

    sget-object v1, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Contact;->queryContacts(Ljava/lang/String;)V

    .line 395
    return-void
.end method
