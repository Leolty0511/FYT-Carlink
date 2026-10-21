.class Landroid/graphics/ColorSpace$Renderer$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field final mColor:I

.field final mColorSpace:Landroid/graphics/ColorSpace;

.field final mRgb:[F


# direct methods
.method public constructor <init>(Landroid/graphics/ColorSpace;[FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    .line 7
    .line 8
    iput p3, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mColor:I

    .line 9
    .line 10
    return-void
.end method
