.class Landroid/text/method/Touch$DragState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragState"
.end annotation


# instance fields
.field public mFarEnough:Z

.field public mScrollX:I

.field public mScrollY:I

.field public mUsed:Z

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(FFII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/text/method/Touch$DragState;->mX:F

    .line 3
    iput p2, p0, Landroid/text/method/Touch$DragState;->mY:F

    .line 4
    iput p3, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    .line 5
    iput p4, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    return-void
.end method
