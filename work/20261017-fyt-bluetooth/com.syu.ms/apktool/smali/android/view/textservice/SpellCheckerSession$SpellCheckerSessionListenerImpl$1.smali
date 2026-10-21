.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->onServiceConnected(Ls/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;


# direct methods
.method public constructor <init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;->this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 2
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;->this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    iget-object v1, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Ls/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->access$300(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Ls/b;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method
