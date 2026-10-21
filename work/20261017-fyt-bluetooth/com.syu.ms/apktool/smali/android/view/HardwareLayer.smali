.class abstract Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIMENSION_UNDEFINED:I = -0x1


# instance fields
.field public mDisplayList:Landroid/view/DisplayList;

.field public mHeight:I

.field public mOpaque:Z

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v1}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 4
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 5
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    return-void
.end method


# virtual methods
.method public abstract clearStorage()V
.end method

.method public abstract copyInto(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract end(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareLayer;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HardwareLayer;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public abstract redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V
.end method

.method public abstract resize(II)Z
.end method

.method public setDisplayList(Landroid/view/DisplayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public abstract setOpaque(Z)V
.end method

.method public abstract setTransform(Landroid/graphics/Matrix;)V
.end method

.method public abstract start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
.end method

.method public abstract start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;
.end method

.method public update(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 2
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 3
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    return-void
.end method
