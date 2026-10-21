.class Landroid/telecom/Connection$1;
.super Landroid/telecom/Connection$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/Connection;->access$300(Landroid/telecom/Connection;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/telecom/Connection;->access$400(Landroid/telecom/Connection;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
