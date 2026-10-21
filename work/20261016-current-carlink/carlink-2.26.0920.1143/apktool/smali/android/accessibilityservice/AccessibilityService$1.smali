.class Landroid/accessibilityservice/AccessibilityService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic val$completedSuccessfully:Z

.field final synthetic val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    iput-boolean p2, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$completedSuccessfully:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    .line 6
    .line 7
    iget-object v1, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->val$finalCallbackInfo:Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    .line 16
    .line 17
    iget-object v1, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
