.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x42

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater$BlinkLayout;->access$000(Landroid/view/LayoutInflater$BlinkLayout;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater$BlinkLayout;->access$100(Landroid/view/LayoutInflater$BlinkLayout;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    xor-int/2addr v1, v0

    .line 23
    invoke-static {p1, v1}, Landroid/view/LayoutInflater$BlinkLayout;->access$102(Landroid/view/LayoutInflater$BlinkLayout;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater$BlinkLayout;->access$200(Landroid/view/LayoutInflater$BlinkLayout;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method
