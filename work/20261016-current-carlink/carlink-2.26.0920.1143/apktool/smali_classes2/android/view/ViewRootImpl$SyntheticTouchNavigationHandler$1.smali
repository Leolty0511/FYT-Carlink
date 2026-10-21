.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2200(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 12
    .line 13
    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2300(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2400(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 21
    .line 22
    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2500(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const v4, 0x3f4ccccd    # 0.8f

    .line 27
    .line 28
    .line 29
    mul-float/2addr v3, v4

    .line 30
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2502(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 34
    .line 35
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2600(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2702(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 48
    .line 49
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2800(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
