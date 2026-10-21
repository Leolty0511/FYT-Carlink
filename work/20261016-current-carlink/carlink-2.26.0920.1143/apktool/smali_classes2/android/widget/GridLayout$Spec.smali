.class public Landroid/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final DEFAULT_WEIGHT:F

.field static final UNDEFINED:Landroid/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/widget/GridLayout$Alignment;

.field final span:Landroid/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/widget/GridLayout$Alignment;F)V
    .locals 1

    .line 7
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int/2addr p3, p2

    invoke-direct {v0, p2, p3}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method public synthetic constructor <init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method private constructor <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 4
    iput-object p2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 5
    iput-object p3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    .line 6
    iput p4, p0, Landroid/widget/GridLayout$Spec;->weight:F

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;

    move-result-object p0

    return-object p0
.end method

.method private getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    .line 2
    .line 3
    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Spec;->weight:F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object p1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    .line 21
    .line 22
    :goto_0
    return-object p1

    .line 23
    :cond_2
    sget-object p1, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    .line 24
    .line 25
    return-object p1
.end method


# virtual methods
.method public final copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 4

    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v3, p0, Landroid/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public final copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;
    .locals 4

    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget v3, p0, Landroid/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Landroid/widget/GridLayout$Spec;

    .line 20
    .line 21
    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    .line 22
    .line 23
    iget-object v3, p1, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 33
    .line 34
    iget-object p1, p1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    return v0

    .line 44
    :cond_4
    :goto_0
    return v1
.end method

.method public final getFlexibility()I
    .locals 2

    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/GridLayout$Interval;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method
