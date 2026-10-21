.class Landroid/view/accessibility/CaptioningManager$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "accessibility_captioning_enabled"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$000(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    :cond_0
    const-string p2, "accessibility_captioning_locale"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$100(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    :cond_1
    const-string p2, "accessibility_captioning_font_scale"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$200(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$400(Landroid/view/accessibility/CaptioningManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->access$400(Landroid/view/accessibility/CaptioningManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
