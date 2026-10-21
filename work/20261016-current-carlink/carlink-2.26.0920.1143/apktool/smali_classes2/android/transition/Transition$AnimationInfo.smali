.class public Landroid/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field transition:Landroid/transition/Transition;

.field values:Landroid/transition/TransitionValues;

.field public view:Landroid/view/View;

.field windowId:Landroid/view/WindowId;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    .line 11
    .line 12
    iput-object p3, p0, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    .line 13
    .line 14
    return-void
.end method
