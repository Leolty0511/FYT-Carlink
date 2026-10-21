.class Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemAnimationInfo"
.end annotation


# static fields
.field static final FADE_IN:I = 0x1

.field static final FADE_OUT:I = 0x2

.field static final MOVE:I


# instance fields
.field animType:I

.field animator:Landroid/animation/Animator;

.field id:I

.field menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method public constructor <init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    .line 9
    .line 10
    iput p4, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    .line 11
    .line 12
    return-void
.end method
