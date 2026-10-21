.class public Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomData"
.end annotation


# instance fields
.field public final previewCrop:Landroid/graphics/Rect;

.field public final reportedCrop:Landroid/graphics/Rect;

.field public final zoomIndex:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    .line 9
    .line 10
    return-void
.end method
