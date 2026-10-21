.class Landroid/widget/TextView$Marquee$2;
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

    iput-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    invoke-static {p1, p2}, Landroid/widget/TextView$Marquee;->access$502(Landroid/widget/TextView$Marquee;B)B

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$700(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/view/Choreographer;->getFrameTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {p1, v0, v1}, Landroid/widget/TextView$Marquee;->access$602(Landroid/widget/TextView$Marquee;J)J

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView$Marquee;->tick()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
