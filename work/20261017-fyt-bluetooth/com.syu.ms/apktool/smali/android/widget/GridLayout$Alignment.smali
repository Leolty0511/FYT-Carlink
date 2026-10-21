.class public abstract Landroid/widget/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAlignmentValue(Landroid/view/View;II)I
.end method

.method public getBounds()Landroid/widget/GridLayout$Bounds;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$Bounds;-><init>(Landroid/widget/GridLayout$1;)V

    return-object v0
.end method

.method public abstract getGravityOffset(Landroid/view/View;I)I
.end method

.method public getSizeInCell(Landroid/view/View;II)I
    .locals 0

    return p2
.end method
