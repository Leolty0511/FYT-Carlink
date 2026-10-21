.class Landroid/widget/TextClock$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/widget/TextClock;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/TextClock;->access$200(Landroid/widget/TextClock;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string/jumbo p1, "time-zone"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    .line 29
    .line 30
    invoke-static {p2, p1}, Landroid/widget/TextClock;->access$300(Landroid/widget/TextClock;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/widget/TextClock;->access$100(Landroid/widget/TextClock;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
