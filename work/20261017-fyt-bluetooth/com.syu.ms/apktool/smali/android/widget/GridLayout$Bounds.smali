.class Landroid/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/GridLayout$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .locals 0

    .line 1
    iget p5, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result p1

    invoke-virtual {p3, p2, p4, p1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    sub-int/2addr p5, p1

    return p5
.end method

.method public include(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2
    iget p1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    return-void
.end method

.method public final include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;)V
    .locals 2

    .line 3
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 4
    iget-boolean p4, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 5
    invoke-virtual {p1, p2, p4}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v0

    .line 6
    iget-object p3, p3, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {p1, p3, p4}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result p1

    invoke-virtual {p3, p2, v0, p1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/widget/GridLayout$Bounds;->include(II)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    return-void
.end method

.method public size(Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {p1}, Landroid/widget/GridLayout;->canStretch(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x186a0

    return p1

    .line 2
    :cond_0
    iget p1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    add-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
