.class final Landroid/view/WindowManagerGlobal$1;
.super Landroid/view/IWindowSessionCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/IWindowSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatorScaleChanged(F)V
    .locals 0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    return-void
.end method
