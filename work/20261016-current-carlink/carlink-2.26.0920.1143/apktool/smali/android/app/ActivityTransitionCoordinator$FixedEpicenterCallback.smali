.class Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedEpicenterCallback"
.end annotation


# instance fields
.field private mEpicenter:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p1, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-object p1
.end method

.method public setEpicenter(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-void
.end method
