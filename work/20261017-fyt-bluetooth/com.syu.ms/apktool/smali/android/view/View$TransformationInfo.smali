.class Landroid/view/View$TransformationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformationInfo"
.end annotation


# instance fields
.field public mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mCamera:Landroid/graphics/Camera;

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private mInverseMatrixDirty:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field public mMatrixDirty:Z

.field private mMatrixIsIdentity:Z

.field public mPivotX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mPivotY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mPrevHeight:I

.field private mPrevWidth:I

.field public mRotation:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mRotationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mRotationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mScaleX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mScaleY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mTransitionAlpha:F

.field public mTranslationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mTranslationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private matrix3D:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    .line 5
    iput-boolean v0, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 7
    iput-object v0, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    .line 9
    iput v0, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 11
    iput v0, p0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 12
    iput v0, p0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 13
    iput v0, p0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 14
    iput v0, p0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 16
    iput v1, p0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 17
    iput v0, p0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 18
    iput v0, p0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 19
    iput v1, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 20
    iput v1, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    return-void
.end method

.method public static synthetic access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic access$1600(Landroid/view/View$TransformationInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    return p0
.end method

.method public static synthetic access$1602(Landroid/view/View$TransformationInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    return p1
.end method

.method public static synthetic access$1700(Landroid/view/View$TransformationInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    return p0
.end method

.method public static synthetic access$1702(Landroid/view/View$TransformationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    return p1
.end method

.method public static synthetic access$1800(Landroid/view/View$TransformationInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    return p0
.end method

.method public static synthetic access$1802(Landroid/view/View$TransformationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    return p1
.end method

.method public static synthetic access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    return-object p0
.end method

.method public static synthetic access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    return-object p1
.end method

.method public static synthetic access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public static synthetic access$2100(Landroid/view/View$TransformationInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    return p0
.end method

.method public static synthetic access$2102(Landroid/view/View$TransformationInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    return p1
.end method

.method public static synthetic access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic access$2202(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method
