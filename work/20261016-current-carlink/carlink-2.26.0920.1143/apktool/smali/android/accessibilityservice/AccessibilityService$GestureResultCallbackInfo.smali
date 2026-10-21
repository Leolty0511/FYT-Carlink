.class Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureResultCallbackInfo"
.end annotation


# instance fields
.field callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

.field gestureDescription:Landroid/accessibilityservice/GestureDescription;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    return-void
.end method
