.class Landroid/transition/Transition$AnimationInfo;
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
.field public name:Ljava/lang/String;

.field public values:Landroid/transition/TransitionValues;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    return-void
.end method
