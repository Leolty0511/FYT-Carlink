.class Landroid/widget/TextView$Marquee$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method public constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$500(Landroid/widget/TextView$Marquee;)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x2

    .line 8
    if-ne p1, p2, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$800(Landroid/widget/TextView$Marquee;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$810(Landroid/widget/TextView$Marquee;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$800(Landroid/widget/TextView$Marquee;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
