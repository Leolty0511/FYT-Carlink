.class public Landroid/graphics/ColorSpace$Connector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Connector$Rgb;
    }
.end annotation


# instance fields
.field private final mDestination:Landroid/graphics/ColorSpace;

.field private final mIntent:Landroid/graphics/ColorSpace$RenderIntent;

.field private final mSource:Landroid/graphics/ColorSpace;

.field private final mTransform:[F

.field private final mTransformDestination:Landroid/graphics/ColorSpace;

.field private final mTransformSource:Landroid/graphics/ColorSpace;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p1

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p2

    .line 5
    :goto_1
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector;->computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    .line 6
    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    .line 9
    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    .line 10
    iput-object p3, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    .line 11
    iput-object p4, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    .line 12
    iput-object p5, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    .line 13
    iput-object p6, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void
.end method

.method private static computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne p2, v0, :cond_1

    .line 16
    .line 17
    move p2, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move p2, v3

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-ne v4, v0, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v0, v3

    .line 29
    :goto_1
    if-eqz p2, :cond_3

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_3
    if-nez p2, :cond_5

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    return-object v1

    .line 40
    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_6
    move-object p0, p1

    .line 44
    :goto_3
    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    .line 45
    .line 46
    if-eqz p2, :cond_7

    .line 47
    .line 48
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/graphics/ColorSpace;->access$2100([F)[F

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_4

    .line 57
    :cond_7
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_4
    if-eqz v0, :cond_8

    .line 62
    .line 63
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Landroid/graphics/ColorSpace;->access$2100([F)[F

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_5

    .line 72
    :cond_8
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_5
    const/4 p2, 0x3

    .line 77
    new-array p2, p2, [F

    .line 78
    .line 79
    aget v0, p1, v3

    .line 80
    .line 81
    aget v1, p0, v3

    .line 82
    .line 83
    div-float/2addr v0, v1

    .line 84
    aput v0, p2, v3

    .line 85
    .line 86
    aget v0, p1, v2

    .line 87
    .line 88
    aget v1, p0, v2

    .line 89
    .line 90
    div-float/2addr v0, v1

    .line 91
    aput v0, p2, v2

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    aget p1, p1, v0

    .line 95
    .line 96
    aget p0, p0, v0

    .line 97
    .line 98
    div-float/2addr p1, p0

    .line 99
    aput p1, p2, v0

    .line 100
    .line 101
    return-object p2
.end method

.method public static identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 2

    new-instance v0, Landroid/graphics/ColorSpace$Connector$1;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-direct {v0, p0, p0, v1}, Landroid/graphics/ColorSpace$Connector$1;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method


# virtual methods
.method public getDestination()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getRenderIntent()Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public getSource()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public transform(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object p1

    return-object p1
.end method

.method public transform([F)[F
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    aget v2, p1, v1

    aget v3, v0, v1

    mul-float/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 5
    aget v2, p1, v1

    aget v3, v0, v1

    mul-float/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x2

    .line 6
    aget v2, p1, v1

    aget v0, v0, v1

    mul-float/2addr v2, v0

    aput v2, p1, v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object p1

    return-object p1
.end method
