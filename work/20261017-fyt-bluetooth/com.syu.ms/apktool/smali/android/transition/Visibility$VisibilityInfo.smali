.class Landroid/transition/Visibility$VisibilityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityInfo"
.end annotation


# instance fields
.field public endParent:Landroid/view/ViewGroup;

.field public endVisibility:I

.field public fadeIn:Z

.field public startParent:Landroid/view/ViewGroup;

.field public startVisibility:I

.field public visibilityChange:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/transition/Visibility$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/transition/Visibility$VisibilityInfo;-><init>()V

    return-void
.end method
